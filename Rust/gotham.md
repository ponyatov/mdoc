!# gotham

uses [[hyper]]

## web framework

- https://gotham.rs/
	- https://github.com/gotham-rs/gotham
		- https://github.com/gotham-rs/gotham/tree/main/examples#ordering

```toml
[target.'cfg(not(target_arch = "wasm32"))'.dependencies]
gotham = "*"
```

## [[Rust/cargo/watch]]

## minimal Hello

```rust
pub const IP: &str = "127.0.0.1";
pub const PORT: i32 = 12345;
```

```rust
use gotham::state::State;

#[instrument(skip(state))]
fn status(state: State) -> (State, &'static str) {
    (state, "Hello")
}

#[instrument]
fn main() {
    let addr = format!("{}:{}", config::IP, config::PORT);
	println!("{} @ http://{}", argv[0], &addr);
    gotham::start(addr, || Ok(status)).unwrap();
}
```

## with [[Web/router|router]]

```rust
use gotham::prelude::*;
use gotham::router::{build_simple_router, Router};
use gotham::state::State;

fn index(state: State) -> (State, String) {
    (
        state,
        std::fs::read_to_string("static/index.html").unwrap(),
    )
}

fn router() -> Router {
    build_simple_router(|route| {
        route.get("/").to(index);
    })
}

fn main() {
    let addr = format!("{}:{}", config::IP, config::PORT);
    println!("{} @ http://{}", argv[0], &addr);
    gotham::start(addr, router()).unwrap();
```

## static index.html

```Rust
const INDEX_HTML: &str = std::include_str!("../static/index.html");

fn index(state: State) -> (State, &'static str) {
	(state, INDEX_HTML)
}

fn router() -> Router {
	build_simple_router(|route| {
		route.get("/").to(index);
```


## `/static` assets
- https://github.com/gotham-rs/gotham/blob/main/examples/static_assets/src/main.rs

```Rust
use gotham::handler::FileOptions;

#[instrument]
fn router() -> Router {
    build_simple_router(|route| {
        route.get("/").to_file("static/index.html");
        route.get("static/*").to_dir(
            FileOptions::new("static")
                // .with_cache_control("no-cache")
                .with_gzip(true)
                .build(),
        );
    })
}
```

## call count with [[Rust/atomic]]

```rust
use std::sync::atomic::{AtomicUsize, Ordering};
static COUNT: AtomicUsize = AtomicUsize::new(0);

#[instrument(skip(state))]
fn status(state: State) -> (State, String) {
    COUNT.fetch_add(1, Ordering::SeqCst);
    (state, format!("Hello {:?}", COUNT.load(Ordering::SeqCst)))
}
```


![[gotham/ws]]