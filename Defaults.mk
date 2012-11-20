
# This is separate from the Main.mk file to keep the Main.mk mor flexible.
# When tests are added, these variables will be defined differently, for example to allow selective linking.

output := $(BASEDIR)
project := $(BASEDIR)
includes := $(dependencies)
sources := $(shell $(FIND) $(BASEDIR) -name \*.c)
sources := $(subst $(project)/,,$(sources))

objects := $(sources:.c=.o)

# TODO
# - In libraries, include only non-kernel-objects in the archive
# - For kernel-libraries, include the required kernel-objects in the kernel-archive!
# - Main-projects simply include everything
# - This does not cover tests
