# var
MODULE = $(notdir $(CURDIR))
module = $(shell echo $(MODULE) | tr A-Z a-z)
OS     = $(shell uname -o|tr / _)
NOW    = $(shell date +%d%m%y)
REL    = $(shell git rev-parse --short=4 HEAD)
BRANCH = $(shell git rev-parse --abbrev-ref HEAD)

# merge
MERGE  = Makefile README.md
MERGE += hw Arduino RTOS STM32
MERGE += VM Linux JS WP Cpp MinGW Java Python
MERGE += el bk85 ProsKit
MERGE += Obsidian psy Zettel
MERGE += DB

pub:
	git push -v
	git checkout $@
	git pull -v
	git checkout shadow -- $(MERGE)
	git checkout .obsidian

shadow:
	git push -v
	git checkout $@
	git pull -v

ZIP = tmp/$(MODULE)_$(NOW)_$(REL)_$(BRANCH).zip
zip:
	git archive --format zip --output $(ZIP) HEAD
