
LIBRARY := true
project := $(get-basedir)
include $(project)/Dependencies.mk

include Defaults.mk

# No additional symbols

include Main.mk
