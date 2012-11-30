
# Include kernel-objects defined by dependency-projects.
# kernel-objects cannot be linked from within an archive, because then the linker uses them only to resolve symbols!
# But kernel-objects contain ISRs and .init code sections. The linker must process these things explicitely, which he
# does only when we pass the object files directly.
-include $(foreach d, $(dependencies), $d/KernelObjects.mk)

studio_output := $(MAIN_$(project)).main
