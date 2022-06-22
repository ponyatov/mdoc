# doc
```Makefile
# \ doc
.PHONY: doc
doc:
	rsync -av ~/mdoc/байт doc/
	rsync -av ~/mdoc/make doc/
```

```Makefile
doxy: doxy.gen
	rm -rf docs ; doxygen $< 1>/dev/null
	$(CARGO) doc --no-deps && mv target/doc docs/rust
```

