# Error recovery

https://lalrpop.github.io/lalrpop/tutorial/008_error_recovery.html

By default, the parser will stop as soon as it encounters an error. Sometimes though we would like to try and recover and keep going. LALRPOP can support this, but you have to help it by defining various "error recovery" points in your grammar. This is done by using a special `!` token: this token only occurs when the parser encounters an error in the input. When an error does occur, the parser will try to recover and keep going; it does this by injecting the `!` token into the stream, executing any actions that it can, and then dropping input tokens until it finds something that lets it continue.

Let's see how we can use [[parser/error recovery]] to attempt to find multiple errors during parsing. First we need a way to return multiple errors as this is not something that LALRPOP does by itself so we add a `Vec` storing the errors we found during parsing. Since the result of `!` contains a token, error recovery requires that tokens can be cloned. We need to replace the begin "grammar" line of the LALRPOP file with this:

Since an alternative containing `!` is expected to return the same type of value as the other alternatives in the production we add an extra variant to `Expr` to indicate that an error was found.

```Rust
pub enum Expr {
	Number(i32),
	Op(Box<Expr>, Opcode, Box<Expr>),
	Error,
}
```

Finally we modify the grammar, adding a third alternative containing `!` which simply stores the `ErrorRecovery` value received from `!` in `errors` and returns an `Expr::Error`. The value of the error token will be a [`ParseError` value](https://docs.rs/lalrpop-util/0.12.1/lalrpop_util/enum.ParseError.html).

```Rust
Term: Box<Expr> = {
	Num => Box::new(Expr::Number(<>)),
	"(" <Expr> ")",
	! => { errors.push(<>); Box::new(Expr::Error) },
};
```

Now we can add a test that includes various errors (e.g., missing operands). Note that now the `parse` method takes two arguments instead of one, which is caused by that we rewrote the "grammer" line in the LALRPOP file. You can see that the parser recovered from missing operands by inserting this `!` token where necessary.

