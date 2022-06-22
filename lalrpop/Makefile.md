## `Makefile`

![[make/Rust]]

```Makefile
# \ src
R += src/main.rs src/lib.rs src/config.rs
S += $(R) Cargo.toml

# \ all
rust: $(R)
	$(CARGO) build && $(CARGO) fmt
	$(CARGO) run lib/$(MODULE).ini
```

```Makefile
# \ install
install: doc gz $(RUSTUP)
	$(MAKE)   update
	$(RUSTUP) target add wasm32-unknown-unknown
	$(CARGO)  install cargo-watch lalrpop
```
