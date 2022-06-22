```Makefile
# \ install
install: $(OS)_install doc gz $(RUSTUP)
	$(CARGO)  install cargo-watch
	$(RUSTUP) target add wasm32-unknown-unknown
	$(MAKE)   update

update: $(OS)_update
	$(RUSTUP) self update ; $(RUSTUP) update

$(RUSTUP):
	curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```
