```Makefile
all:

rust: $(R)
	$(CARGO) build && $(CARGO) fmt
	$(CARGO) run lib/$(MODULE).ini
```

![[make/watch]]
