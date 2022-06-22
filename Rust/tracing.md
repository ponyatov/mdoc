# `tracing`
## see [[Rust/telemetry]]

- https://snowcap.ethz.ch/tracing/index.html
- https://burgers.io/custom-logging-in-rust-using-tracing

```toml
[dependencies]
tracing = "*"
tracing-subscriber = "*"
```

```rust
use tracing::{debug, info, instrument};
use tracing_subscriber;

#[instrument]
fn main() {
    tracing_subscriber::fmt::init();
    // \ args
    let argv: Vec<String> = std::env::args().collect();
    let argc: usize = argv.len();
    info!("#{argc} {argv:?}");
    // / args
}
```

```Makefile
# Makefile
run:
    $(CARGO) test && $(CARGO) fmt && RUST_LOG=debug $(CARGO) run
```

## with [[flame|Flame Graphs]]
