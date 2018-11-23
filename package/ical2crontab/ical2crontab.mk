################################################################################
# ICAL2CRONTAB
# nicolas.jourden@laposte.net - 23/11/2018.=
################################################################################

ICAL2CRONTAB_VERSION = v0.3
ICAL2CRONTAB_SOURCE = $(ICAL2CRONTAB_VERSION).tar.gz
ICAL2CRONTAB_SITE = https://github.com/NicolasJourden/ical2crontab/archive
ICAL2CRONTAB_INSTALL_STAGING = NO
ICAL2CRONTAB_INSTALL_TARGET = YES
ICAL2CRONTAB_DEPENDENCIES = libical

$(eval $(cmake-package))
