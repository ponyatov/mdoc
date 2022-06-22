# lalrpop/Quick start guide

http://lalrpop.github.io/lalrpop/quick_start_guide.html

For getting started with LALRPOP, it's probably best if you read [the tutorial](http://lalrpop.github.io/lalrpop/tutorial/index.html), which will introduce you to the syntax of LALRPOP files and so forth.

But if you've done this before, or you're just the impatient sort, here is a quick 'cheat sheet' for setting up your project. First, add the following lines to your `Cargo.toml`:

```toml
[package]

build = "build.rs" # LALRPOP preprocessing
```
- The generated code depends on [[lalrpop/lalrpop-util]].
- The generated [[parser/tokenizer]] depends on the [[Rust/regex]] crate.

If you write your own tokenizer, or already have the regex crate, you can skip this dependency.
```toml
[target.'cfg(not(target_arch = "wasm32"))'.dependencies]
lalrpop-util = "*" # 0.19.7
regex = "*" # 1 / 1.5.5

[build-dependencies]
lalrpop = "*" # 0.9.17
```

## `build.rs`

```Rust
extern crate lalrpop;

fn main() {
	lalrpop::process_root().unwrap();
}
```

![[lalrpop/Makefile]]

![[lalrpop/extensions]]

## run from shell

```shell
lalrpop src/grammar.lalrpop
```

## next: [[lalrpop/Tutorial]]