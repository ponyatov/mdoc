```Makefile
# /Makefile
X += $(shell find lib    -type f -regex .+.exs?$$)
X += $(shell find test   -type f -regex .+.exs?$$)
X += $(shell find config -type f -regex .+.exs?$$)
X += $(shell ls *.exs)   .formatter.exs
E += $(shell find src    -type f -regex .+.erl$$)
S += $(X) $(E)
```
```Makefile
.PHONY: all
all:
	mix run
	$(MAKE) format
```
```Makefile
.PHONY: repl
repl:
	iex -S mix
	$(MAKE) format
	$(MAKE) $@
```
```Makefile
.PHONY: doc
doc:
	rsync -rv ~/mdoc/Erlang/*   doc/Erlang/
	rsync -rv ~/mdoc/Elixir/*   doc/Elixir/
	rsync -rv ~/mdoc/DB/*       doc/DB/
	git add doc
```
```Makefile
update: $(OS)_update doc gz
	mix deps.get
```
```Makefile
```
```Makefile
```
```Makefile
```
