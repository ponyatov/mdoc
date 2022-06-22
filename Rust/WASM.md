# Rust/WASM

- https://rustwasm.github.io/docs/book/
- https://rustwasm.github.io/docs/wasm-pack/introduction.html
- https://rustwasm.github.io/docs/wasm-bindgen/examples/without-a-bundler.html
- https://users.rust-lang.org/t/target-wasm32-unknown-unknown-without-wasm-pack/72179
- [[WASM/cliffle]]

## [[WASM/apt#dev]]
```
wabt binaryen
python3
```

## [[WASM/Makefile]]

## http server required

```
python3 -m http.server --directory static --bind 127.0.0.1 12345
```


## `Cargo.toml`

```toml
[package]
name    = "k"
version = "0.0.1"
edition = "2021"

authors     = ["Dmitry Ponyatov <dponyatov@gmail.com>"]
description = "Smalltalk/WASM in Rust"

[[bin]]
name       = "server"
path       = "src/main.rs"

[lib]
name       = "chin"
path       = "src/lib.rs"
crate-type = ["cdylib"]

[dependencies]
# wasm-bindgen = "*"
```

## main.rs

```Rust
#![cfg(not(target_arch = "wasm32"))]
```

## ![[Rust/main.rs]]
## ![[wasm.rs]]

## `static/index.html`

[[HTML/head/css]]

![[Web/index.html]]
