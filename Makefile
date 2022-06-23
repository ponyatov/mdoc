# var
MODULE = $(notdir $(CURDIR))
module = $(shell echo $(MODULE) | tr A-Z a-z)
OS     = $(shell uname -o|tr / _)
NOW    = $(shell date +%d%m%y)
REL    = $(shell git rev-parse --short=4 HEAD)
BRANCH = $(shell git rev-parse --abbrev-ref HEAD)

# merge
MERGE  = Makefile README.md
MERGE += el hw Arduino RTOS
MERGE += VM
MERGE += bk85

pub:
	git push -v
	git checkout $@
	git pull -v
	git checkout shadow -- $(MERGE)

shadow:
	git push -v
	git checkout $@
	git pull -v

ZIP = tmp/$(MODULE)_$(NOW)_$(REL)_$(BRANCH).zip
zip:
	git archive --format zip --output $(ZIP) HEAD
