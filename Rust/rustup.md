# `rustup`

https://www.rust-lang.org/tools/install

[[Makefile/rust]]

```Makefile
install: doc $(RUSTUP)
	$(MAKE) update
	$(RUSTUP) target add wasm32-unknown-unknown

update:
	sudo apt update
	sudo apt install `cat apt.dev apt.txt`
	$(RUSTUP) self update ; $(RUSTUP) update

$(RUSTUP):
	curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```
