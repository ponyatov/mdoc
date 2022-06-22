# Rust/WASM+Server

## [[Rust/multiTarget]]
- https://thenewstack.io/using-web-assembly-written-in-rust-on-the-server-side/
- https://github.com/reselbob/wisesayingswasm

```toml
[package]
name    = "wasd"
version = "0.0.1"
edition = "2021"

authors = ["Dmitry Ponyatov <dponyatov@gmail.com>"]

[dependencies]

[lib]
name       = "wasm"
crate-type = ["cdylib"]
```
