# Building ASTs

http://lalrpop.github.io/lalrpop/tutorial/005_building_asts.html

Of course, most of the time, when you're parsing you don't want to compute a value, you want to build up some kind of data structure. Here's a quick example to show how that is done in LALRPOP. First, we need to _define_ the data structure we will build. We're going to use a very simple [[Rust/enum]]:

![[lalrpop/ast.rs#expr]]

We put this code into [[lalrpop/ast.rs]] in our project, along with some `Debug` impls so that things pretty-print nicely. Now we will create the [calculator4](https://github.com/lalrpop/lalrpop/blob/master/doc/calculator/src/calculator4.lalrpop) example, which will build up this tree. To start, let's just look at the `Expr` nonterminal, which will show you most everything of how it is done (the most interesting lines have been flagged with comments):

![[ast.rs#flagged]]

- First off, we have to import these new names into our file by adding a [[Rust/use]] statement (0). 
- Next, we want to produce [[Rust/Box|boxed]] `Box<Expr>` values, so we change the type of `Expr` (and `Factor` and `Term`) to `Box<Expr>` (1). 
- The action code changes accordingly in (2); here we've used the `<>` expansion to supply three arguments to `Expr::Op`. 
- Finally, just for concision, we introduced an `ExprOp` nonterminal (3) to cover the two opcodes, which now trigger the same action code (before they triggered different action code, so we could do an addition vs a subtraction).

The definition of `Factor` is transformed in a similar way:

![[ast.rs#factor]]

And finally we adjust the definitions of `Term` and `Num`. Here, we convert from a raw `i32` into a `Box<Expr>` when we transition from `Num` to `Term` (4):

![[ast.rs#termnum]]

And that's it! Now we can test it by adding some code to our [main.rs](https://github.com/lalrpop/lalrpop/blob/master/doc/calculator/src/main.rs) file that parses an expression and formats it using the `Debug` impl:

```Rust
lalrpop_mod!(pub calculator4);
pub mod ast;

#[test]
fn calculator4() {
    let expr = calculator4::ExprParser::new()
        .parse("22 * 44 + 66")
        .unwrap();
    assert_eq!(&format!("{:?}", expr), "((22 * 44) + 66)");
}
```

### next: [[lalrpop/Macros]]