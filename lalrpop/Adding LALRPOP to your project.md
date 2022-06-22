# Adding LALRPOP to your project

http://lalrpop.github.io/lalrpop/tutorial/001_adding_lalrpop.html

[[LALRPOP]] works as a preprocessor that is integrated with [[cargo]]. When LALRPOP is invoked, it will search your source directory for files with the extension `lalrpop` and create corresponding `rs` files. So, for example, if we have a file `calculator.lalrpop`, the preprocessor will create a Rust file `calculator.rs`. As an aside, the syntax of LALRPOP intentionally hews fairly close to Rust, so it should be possible to use the Rust plugin to edit lalrpop files as well, as long as it's not too picky (the emacs rust-mode, in particular, works just fine).

To start, let's use `cargo new` to make a new project. We'll call it `calculator`:

`> cargo new --bin calculator`

We now have to edit the generated [`calculator/Cargo.toml`](https://github.com/lalrpop/lalrpop/blob/master/doc/calculator/Cargo.toml) file to invoke the LALRPOP preprocessor. The resulting file should look something like:

```toml
[package]
name    = "calculator"
version = "0.1.0"
authors = ["Niko Matsakis <niko@alum.mit.edu>"]
```

![[lalrpop/cargo]]

- [[lalrpop]]
- [[lalrpop-util]]
- [[regex]]

Cargo can run [[Rust/build script]]s as a pre-processing step, named `build.rs` by default. The [[Rust/cargo/build-dependencies]] section specifies the dependencies for build scripts -- in this case, just LALRPOP.

The [[Rust/cargo/dependencies]] section describes the dependencies that LALRPOP needs at runtime. All LALRPOP parsers require at least the [[lalrpop-util]] crate. In addition, if you don't want to write the lexer by hand, you need to add a dependency on the [[regex]] crate. (If you don't know what a [[parser/lexer]] is, don't worry, it's not important just now, though we will cover it in the next section; if you do know what a lexer is, and you want to know how to write a lexer by hand and use it with LALRPOP, then check out the [[lalrpop/Fine control over the lexer|lexer tutorial]].)

Next we have to add `build.rs` itself. For those unfamiliar with [[build script]]s, the `build.rs` file should be placed next to your `Cargo.toml` file and not inside the `src` folder with the rest of your Rust code. This should just look like the following:

![[lalrpop/build.rs]]

The function [[lalrpop/process_root]] processes your `src` directory, converting all `lalrpop` files into `rs` files. It is smart enough to check timestamps and do nothing if the `rs` file is newer than the `lalrpop` file, and to mark the generated `rs` file as read-only. It returns an `io::Result<()>`, so the `unwrap()` call just asserts that no file-system errors occurred.

_NOTE:_ On Windows, the necessary APIs are not yet stable, so timestamp checking is disabled.

next: [[lalrpop/Parsing parenthesized numbers]]