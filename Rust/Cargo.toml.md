# Cargo.toml

[[Rust/cargo]]

## minimal

```toml
[package]
name    = "kdb"
version = "0.0.1"
edition = "2021"

authors     = ["Dmitry Ponyatov <dponyatov@gmail.com>"]
description = "Kontur DB"

[dependencies]
```

## with [[WASM]] target and [[gotham]]

```toml
[dependencies]

[target.'cfg(not(target_arch = "wasm32"))'.dependencies]
gotham = "*"

[target.'cfg(target_arch = "wasm32")'.dependencies]
```

## with [[lalrpop]]

![[lalrpop/cargo]]
