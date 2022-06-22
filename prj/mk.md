```Makefile
# var
MODULE = $(notdir $(CURDIR))
module = $(shell echo $(MODULE) | tr A-Z a-z)
OS     = $(shell uname -o|tr / _)
NOW    = $(shell date +%d%m%y)
REL    = $(shell git rev-parse --short=4 HEAD)
BRANCH = $(shell git rev-parse --abbrev-ref HEAD)
CORES  = $(shell grep processor /proc/cpuinfo| wc -l)
PEPS   = E26,E302,E305,E401,E402,E701,E702
```
```Makefile
# version
```
```Makefile
# dir
CWD   = $(CURDIR)
TMP   = $(CWD)/tmp
```
```Makefile
# tool
CURL   = curl -L -o
CF     = clang-format
PY     = $(shell which python3)
PIP    = $(shell which pip3)
PEP    = $(shell which autopep8)
```
```Makefile
# src
P += metaL.py $(MODULE).meta.py
S += $(P) rc
```
```Makefile
# cfg
```
```Makefile
# all
.PHONY: all
all:
	$(MAKE) format

.PHONY: repl
repl:
	$(MAKE) format
	$(MAKE) $@

.PHONY: meta
meta: $(PY) $(MODULE).meta.py
	$^ && $(MAKE) format
```
```Makefile
# format
.PHONY: format
format: tmp/format_py

tmp/format_py: $(P)
	$(PEP) --ignore=$(PEPS) -i $? && touch $@
```
```Makefile
# rule
```
```Makefile
# doc
.PHONY: doc
doc:
	rsync -rv ~/mdoc/DB/*            doc/DB/
	git add doc
```
```Makefile
# install
.PHONY: install update updev
install: $(OS)_install doc gz
	$(MAKE) update
update: $(OS)_update doc gz
	$(PIP) install --user -U pip autopep8 xxhash
updev: update
	sudo apt install -yu `cat apt.dev`

GNU_Linux_install:
GNU_Linux_update:
	sudo apt update
	sudo apt install -yu `cat apt.txt`

gz:
```
```Makefile
# merge
```
