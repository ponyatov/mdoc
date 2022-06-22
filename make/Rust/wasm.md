```Makefile
# \ wasm
wasm: static/$(module).wasm
	$(MAKE) tmp/format_js

static/$(module).wasm: target/wasm32-unknown-unknown/debug/$(module).wasm Makefile
	wasm-strip $<
	wasm-opt -o $@ -Oz $<
	ls -la $< $@

target/wasm32-unknown-unknown/debug/$(module).wasm: $(R) Cargo.toml
	$(CARGO) build --lib --target wasm32-unknown-unknown
	$(CARGO) fmt
```
