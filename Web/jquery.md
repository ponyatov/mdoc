# `jquery`

## install

```Makefile
# \ var
MODULE = $(notdir $(CURDIR))
OS     = $(shell uname -o|tr / _)

# \ version
JQUERY_VER = 3.6.0

# \ install
install: $(OS)_install gz
	$(MAKE) update
update: $(OS)_update

GNU_Linux_install:
GNU_Linux_update:
	sudo apt update
	sudo apt install -yu `cat apt.dev apt.txt`

gz: js

JSLIB += static/cdn/jquery.min.js
static/cdn/jquery.min.js:
	$(CURL) $@ https://cdnjs.cloudflare.com/ajax/libs/jquery/$(JQUERY_VER)/jquery.min.js

js: $(JSLIB)
```
