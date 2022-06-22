# lalrpop Tutorial

http://lalrpop.github.io/lalrpop/tutorial/index.html

This is a tutorial for how to write a complete parser for a simple calculator using LALRPOP.

If you are unfamiliar with what a [[parser/generator]] is, you should read [[Crash course on parsers]] first.

- [[lalrpop/Adding LALRPOP to your project]]
- [[lalrpop/Parsing parenthesized numbers]]
- [[lalrpop/Type inference]]
- [[lalrpop/Handling full expressions]]
- [[lalrpop/Building ASTs]]
- [[lalrpop/Macros]]
- [[lalrpop/Fallible actions]]
- [[lalrpop/Error recovery]]
- [[lalrpop/Passing state parameter]]

This tutorial is still incomplete. Here are some topics that I aim to cover when I get time to write about them:

-   Advice for resolving [[parser/shift-reduce]] and [[parser/reduce-reduce]] conflicts
-   Passing [[parser/state]] and type/lifetime parameters to your action code (see e.g. [this test](https://github.com/lalrpop/lalrpop/blob/master/lalrpop-test/src/expr_arena.lalrpop) invoked [from here](https://github.com/lalrpop/lalrpop/blob/master/lalrpop-test/src/lib.rs)).
-   [[parser/Location tracking]] with `@L` and `@R` (see e.g. [this test](https://github.com/lalrpop/lalrpop/blob/master/lalrpop-test/src/intern_tok.lalrpop)).
-   Integrating with external [[parser/tokenizer]]s (see e.g. [this test](https://github.com/lalrpop/lalrpop/blob/master/lalrpop-test/src/expr.lalrpop) invoked [from here](https://github.com/lalrpop/lalrpop/blob/master/lalrpop-test/src/lib.rs)).
-   Conditional macros (no good test to point you at yet, sorry)
-   Fallible action code that produces a `Result` (see e.g. [this test](https://github.com/lalrpop/lalrpop/blob/master/lalrpop-test/src/error.lalrpop) invoked [from here](https://github.com/lalrpop/lalrpop/blob/master/lalrpop-test/src/lib.rs)).
-   Converting to use `LALR(1)` instead of `LR(1)` (see e.g. [this test](https://github.com/lalrpop/lalrpop/blob/master/lalrpop-test/src/expr_lalr.lalrpop) invoked [from here](https://github.com/lalrpop/lalrpop/blob/master/lalrpop-test/src/lib.rs)).
-   Plans for future features

