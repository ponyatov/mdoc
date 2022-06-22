# [[Rust]]/target/os/[[Linux]]

## Cargo.toml

```toml
[target.'cfg(target_os = "linux")'.dependencies]
xcb       = {version="*", features = ["xkb"]}
xkbcommon = { version = "*", features = ["x11"] }
scancode  = "*"
```

## specific packages

- [[xcb]]
- [[xkbcommon]]
- [[scancode]]
