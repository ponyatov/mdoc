# Parsing parenthesized numbers
http://lalrpop.github.io/lalrpop/tutorial/002_paren_numbers.html

OK, now we're all set to start making a LALRPOP grammar. Before we tackle full expressions, let's start with something simple -- really simple. Let's just start with parenthesized integers, like `123` or `(123)` or even (hold on to your hats) `(((123)))`. Wow.

To handle this, we'll need to add a [`calculator1.lalrpop`](https://github.com/lalrpop/lalrpop/blob/master/doc/calculator/src/calculator1.lalrpop) as shown below. Note: to make explaining things easier, this version is maximally explicit; the next section will make it shorter by employing some shorthands that LALRPOP offers.

## `src/parser.lalrpop`

```Rust
use std::str::FromStr;

grammar;
```
### `Term`
```Rust
pub Term: i32 = {
	<n:Num> => n,
	"(" <t:Term> ")" => t,
};
```
### `Num`
```Rust
Num: i32 = <s:r"[0-9]+"> => i32::from_str(s).unwrap();
```

## `src/.gitignore`

```
parser.rs
```


Let's look at this bit by bit. The first part of the file is the `use` statement and the [[lalrpop/grammar]] declaration. You'll find these at the top of every LALRPOP grammar. Just as in Rust, the `use` statement just brings names in scope: in fact, these `use` statements are just copied verbatim into the generated Rust code as needed.

_A note about underscores and [[Rust/macro/hygiene]]:_ LALRPOP generates its own names that begin with at least two leading underscores. To avoid conflicts, it will insert more underscores if it sees that you use identifiers that also have two underscores. But if you use glob imports that bring in names beginning with `__`, you may find you have invisible conflicts. To avoid this, don't use a glob (or define some other name with two underscores somewhere else).

**[[parser/Nonterminal]] declarations.** After the `grammar` declaration comes a series of _nonterminal declarations_. This grammar has two nonterminals, `Term` and `Num`. A nonterminal is just a name that we give to something which can be parsed. Each nonterminal is then defined in terms of other things.

Let's start with `Num`, at the end of the file, which is declared as follows:

![[#Num]]

This declaration says that the type of `Num` is `i32`. This means that when we parse a `Num` from the input text, we will produce a value of type `i32`. The definition of `Num` is `<s:r"[0-9]+">`. Let's look at this from the inside out. The notation `r"[0-9]+"` is a regex literal -- this is the same as a Rust raw string. (And, just as in Rust, you can use hashes if you need to embed quotes, like `r#"..."..."#`.) It will match against a string of characters that matches the regular expression: in this case, some number of digits. The result of this match will be a [[Rust/slice]] `&'input str` into the input text that we are parsing (no copies are made).

This regular expression is wrapped in angle brackets and labeled: `<s:r"[0-9]+">`. In general, angle brackets are used in LALRPOP to indicate the values that will be used by the _action code_ -- that is, the code that executes when a `Num` is parsed. In this case, the string that matches the regular expression is bound to the name `s`, and the action code `i32::from_str(s).unwrap()` parses that string and creates an `i32`. Hence the result of parsing a `Num` is an `i32`.

OK, now let's look at the nonterminal `Term`:
![[#Term]]

First, this nonterminal is declared as [[Rusp/pub]]. That means that LALRPOP will generate a public struct (named, as we will see, `TermParser`) that you can use to parse strings as `Term`. Private nonterminals (like `Num`) can only be used within the grammar itself, not from outside.

The `Term` nonterminal has two alternative definitions, which is indicated by writing `{ alternative1, alternative2 }`. In this case, the first alternative is `<n:Num>`, meaning that a term can be just a number; so `22` is a term. The second alternative is `"(" <t:Term> ")"`, which indicates that a term can also be a parenthesized term; so `(22)` is a term, as is `((22))`, `((((((22))))))`, and so on.

## Invoking the parser

OK, so we wrote our parser, how do we use it? For every [[parser/nonterminal]] `Foo` declared as `pub`, LALRPOP will export a `FooParser` struct with a `parse` method that you can call to parse a string as that nonterminal. Here is a simple test that we've added to our [`main.rs`](https://github.com/lalrpop/lalrpop/blob/master/doc/calculator/src/main.rs) file which uses this struct to test our `Term` nonterminal:

![[lalrpop/parser.lalrpop]]
![[lalrpop/main.rs]]

The full signature of the parse method looks like this:

```Rust
fn parse<'input>(&self, input: &'input str) -> 
	Result<i32, ParseError<usize,(usize, &'input str),()>>
//         ~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//          |                  |
// Result upon success         |
//                             |
//          Error enum defined in the lalrpop_util crate
{ ... }
```

### next: [[lalrpop/Type inference]]