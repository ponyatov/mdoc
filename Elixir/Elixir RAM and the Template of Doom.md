t# Elixir/Elixir RAM and the Template of Doom
https://www.evanmiller.org/elixir-ram-and-the-template-of-doom.html

I will attempt to convince you, in two lines of code, that [[Elixir]] is more interesting than any programming language you’ve ever used.

Are you ready? Don’t worry, the code doesn’t involve quicksort, or metaprogramming, or anything like that.

Here we go.

```elixir
{:ok, file} = :file.open("/tmp/something.txt", [:write, :raw]).

:file.write(file, :re.replace("Hello & Goodbye", "&", "&amp;")).
```

The code itself is nothing special. It opens a file and writes a short string to it, replacing ampersands in the (hard-coded) string with the [[HTML]] entity `&amp;`. You’re probably sharp enough to write the equivalent code in your favorite language in a couple of minutes, or less.

But your code wouldn’t be _entirely_ equivalent to the Elixir code, at least, not from the computer’s perspective. If you run a tracing program like `strace` or `dtruss` on your non-Elixir code, you’ll probably see something like this:

```C
write(0x3, "Hello & goodbye\0", 0x13)
```

Just the usual [[syscall]] we’d expect. But if you trace the [[Elixir]] program, you’ll instead see something like this:

```C
writev(0x1A, 0x1A5405F8, 0x4)
```

What gives? What is that strange hexadecimal number, and more to the point, why isn’t good old `write(2)` good enough for Mr. Fancy Pants Elixir?

The answer, while not immediately obvious from the code sample, goes a long way towards explaining Elixir’s unique [[Erlang/performance]] characteristics — as well as some anomalies you might encounter if you ever try benchmarking Erlang or Elixir [[HTML/template]]s. Read on for a tale of technical subtlety and engineering that culminates in the in-memory rendering of the [[Template of Doom]], a 30 gigabyte monster from the bottom of the sea. By the end of this post, I promise you won’t look at any web server the same way.

Anyway, enough gabbing from me… let’s dive in!

### Gather ’round

To get a handle on things, let’s first revisit that [[Elixir/string-replacement]] code:

```elixir
:re.replace("Hello & Goodbye", "&", "&amp;")
```

If you paste that code into an Elixir shell, you’ll see something slightly unexpected:

```elixir
["Hello ", ["&", "amp;"] | " Goodbye"]
```

Instead of a flat string, [[Erlang]] — oops, did I say Erlang? I meant [[Elixir]] — creates a nested list containing four leaf elements that add up to the string we expect: `"Hello "`, `"&"`, `"amp;"`, and `" Goodbye"`. At first glance this may seem like a pointless complication, but let’s see what the computer thinks about the situation.

If you look at the man page for [[Linux/writev]], you’ll see it’s a “gathered write”, which means it writes data from multiple memory locations in a single system call. I wrote a little [[DTrace]] [script](https://github.com/evanmiller/tracewrite) to unpack the [[writev]] call we saw earlier, and peek at what that Elixir code is actually doing with this system call. Here’s the log of that script:

```
  writev:return Writev data 1/4: (6 bytes): 0x000000001a3c0d78 Hello 
  writev:return Writev data 2/4: (1 bytes): 0x000000001a3c0d7e &
  writev:return Writev data 3/4: (4 bytes): 0x000000001a3c0b49 amp;
  writev:return Writev data 4/4: (8 bytes): 0x000000001a3c0d7f  Goodbye
```

- The original hexadecimal number — in the `writev` call in the introduction — was the memory address of a vector. 
- That vector contains the memory address of four other memory addresses, represented above as big hexadecimal numbers next to the strings at those addresses.

You can see from this log that Elixir is writing the elements of the nested list separately: `"Hello "`, `"&"`, `"amp;"`, and `" Goodbye"`. But do you notice anything peculiar about the memory locations? Does one of them, perhaps, not look like the others?

```
0x000000001a3c0d78 Hello 
0x000000001a3c0d7e &
0x000000001a3c0b49 amp;
0x000000001a3c0d7f  Goodbye
```

I’m not very good with hexadecimal, so let’s lay out all the characters at their stated memory addresses. I am simply rearranging and expanding the data in the log above — bold-facing the start addresses for clarity.

```
0x0b49 		'a'
	0x0b4a 	'm'
	0x0b4b 	'p'
	0x0b4c 	';'
...

0x0d78 		'H'
	0x0d79 	'e'
	0x0d7a 	'l'
	0x0d7b 	'l'
	0x0d7c 	'o'
	0x0d7d 	' '
0x0d7e 		'&'
0x0d7f 		' '
	0x0d80 	'G'
	0x0d81 	'o'
	0x0d82 	'o'
	0x0d83 	'o'
	0x0d84 	'd'
	0x0d85 	'b'
	0x0d86 	'y'
	0x0d87 	'e'
```

Do you see it yet? That nested list of string fragments — the list that makes up the new string — starts to make sense now. It’s just three pointers _into the original string_, plus an out-of-order pointer to the replacement string. In other words, there is no “new string” — there is just a set of modifications of the old string. (You can also see an extra tiny optimization performed by the regex engine — notice that the final string uses the ampersand from the original string, rather than from the replacement string.)
