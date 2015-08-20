# Make sure at least one object is included in the archive. Otherwise make keeps rebuilding the empty archive.
objects += Tank-Shared/$(BUILD_DIRNAME)/phony.o
