PLATFORMS = linux-arm64 \
		linux-armv7 \
		linux-arm \
		linux-x64 \
		linux-x86 \
		windows-x64 \
		windows-x86
DOCKER    = docker
IMAGE     = dimitriss/cross-compiler

base:
	$(DOCKER) build -t $(IMAGE):base .

.PHONY: $(PLATFORMS)

$(PLATFORMS):
	$(DOCKER) build -t $(IMAGE):$@ $@;

all:
	$(MAKE) base
	for i in $(PLATFORMS); do \
		$(MAKE) $$i; \
	done
