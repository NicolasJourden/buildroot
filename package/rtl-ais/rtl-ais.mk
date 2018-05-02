################################################################################
# RTL-AIS Decoder.
# Nicolas JOURDEN <nicolas.jourden at laposte.net>
################################################################################

RTL_AIS_LICENSE = GPLv2
RTL_AIS_VERSION = v0.2
RTL_AIS_SOURCE = $(RTL_AIS_VERSION).tar.gz
RTL_AIS_SITE = "https://github.com/dgiardini/rtl-ais/archive"
RTL_AIS_INSTALL_STAGING = NO
RTL_AIS_INSTALL_TARGET = YES

RTL_AIS_DEPENDENCIES = librtlsdr

define RTL_AIS_BUILD_CMDS
	$(TARGET_CONFIGURE_OPTS) \
		CC="$(TARGET_CC)" CFLAGS="$(TARGET_CFLAGS)" \
		$(MAKE) -C $(@D)
endef

define RTL_AIS_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/rtl_ais        $(TARGET_DIR)/usr/bin/rtl_ais
endef

$(eval $(generic-package))
