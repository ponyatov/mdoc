# Macros

http://lalrpop.github.io/lalrpop/tutorial/006_macros.html

Frequently when writing grammars we encounter repetitive constructs that we would like to copy-and-paste. A common example is defining something like a "comma-separated list". Imagine we wanted to parse a comma-separated list of expressions (with an optional trailing comma, of course). If we had to write this out in full, it would look something like:

```Rust
Exprs: Vec<Box<Expr>> = {
    Exprs "," Expr => ...,
    Expr => vec![<>],
}
```

Of course, this doesn't handle trailing commas, and I've omitted the action code. If we added those, it would get a bit more complicated. So far, this is fine, but then what happens when we later want a comma-separated list of terms? Do we just copy-and-paste everything?

LALRPOP offers a better option. You can define macros. In fact, LALRPOP comes with four macros builtin: 
- `*`, 
- `?`, 
	- So you can write something like `Expr?` to mean "an optional `Expr`".
	- This will have type `Option<Box<Expr>>` (since `Expr` alone has type `Box<Expr>`). 
- `+`, and 
- `(...)`.

Similarly, you can write `Expr*` or `Expr+` to get a `Vec<Expr>` (with minimum length 0 and 1 respectively). The final macro is parentheses, which is a shorthand for creating a new nonterminal. This lets you write things like `(<Expr> ",")?` to mean an "optionally parse an `Expr` followed by a comma". Note the angle brackets around `Expr`: these ensures that the value of the `(<Expr> ",")` is the value of the expression, and not a tuple of the expression and the comma. This means that `(<Expr> ",")?` would have the type `Option<Box<Expr>>` (and not `Option<(Box<Expr>, &'input str)>`).

