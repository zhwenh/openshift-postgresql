# Variables are documented in common/build.sh.
BASE_IMAGE_NAME = postgresql
VERSIONS = 9.4 9.5
OPENSHIFT_NAMESPACES = 9.2

# This is really, really _ugly_ hack, and we should really do
# 'include common/common.mk' only.  But we need to have it here for transition
# period so the 'make' and 'make test' works out of box.  In future it should be
# safe to expect people 'git clone --recursive' our repositories.
.PHONY: $(shell test -f common/common.mk || git submodule update --init >/dev/null)

include common/common.mk
