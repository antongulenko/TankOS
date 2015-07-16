
LIBRARY := true
project := $(get-basedir)
include $(project)/Dependencies.mk

include Defaults.mk

include Main.mk
