# lalrpop/cargo

```toml
[package]

build = "build.rs" # LALRPOP preprocessing

[build-dependencies]
lalrpop = "*" # 0.19.8

[dependencies]

[target.'cfg(not(target_arch = "wasm32"))'.dependencies]
lalrpop-util = {version="*", features = ["lexer"]} # 0.19.8
regex = "*" # 1
gotham = "*"

[target.'cfg(target_arch = "wasm32")'.dependencies]
```
