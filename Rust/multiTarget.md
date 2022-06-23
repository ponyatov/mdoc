## Rust/multiTarget

- https://stackoverflow.com/questions/36604010/how-can-i-build-multiple-binaries-with-cargo
- https://stackoverflow.com/questions/26946646/rust-package-with-both-a-library-and-a-binary

## `Cargo.toml`

```toml
[dependencies]

[target.'cfg(target_arch = "wasm32")'.dependencies]
# wasm-bindgen = "0.2"
# js-sys = "0.3"
# web-sys = "0.3"

[target.'cfg(not(target_arch = "wasm32"))'.dependencies]
lalrpop-util = "*" # 0.19.7
regex = "*" # 1 / 1.5.5
gotham = "*"

[[bin]]
name = "server"
path = "src/main.rs"

[lib]
name = "st"
path = "src/lib.rs"
crate-type = ["cdylib"]
```

## src/main.rs
```Rust
#![cfg(not(target_arch = "wasm32"))]
```

## src/lib.rs
```Rust
#![cfg(target_arch = "wasm32")]

#![no_std]

#[panic_handler]
fn panic_handler(_: &core::panic::PanicInfo) -> ! {loop {}}
```

## `Makefile`

```Makefile
rust:
	$(CARGO) build && $(CARGO) fmt

wasm:
	$(CARGO) build --lib --target wasm32-unknown-unknown
	$(CARGO) fmt
	$(MAKE)  tmp/format_js
```
