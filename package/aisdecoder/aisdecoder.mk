################################################################################
# AIS Decoder.
# Nicolas JOURDEN <nicolas.jourden at laposte.net>
################################################################################

AISDECODER_LICENSE = LGPLv2
AISDECODER_VERSION = 1.0.0
AISDECODER_SOURCE = aisdecoder-$(AISDECODER_VERSION).tar.gz
AISDECODER_SITE = http://www.aishub.net/downloads
AISDECODER_INSTALL_STAGING = YES
AISDECODER_INSTALL_TARGET = YES

AISDECODER_DEPENDENCIES = alsa-lib
AISDECODER_DEPENDENCIES += librtlsdr

define AISDECODER_INSTALL_STAGING_CMDS
	$(INSTALL) -D -m 0755 $(@D)/libaisdecoder.a   $(STAGING_DIR)/usr/lib/libaisdecoder.a
	$(INSTALL) -D -m 0755 $(@D)/libaisdecoder.so* $(STAGING_DIR)/usr/lib
	$(INSTALL) -D -m 0755 $(@D)/aisdecoder        $(STAGING_DIR)/usr/bin/aisdecoder
endef

define AISDECODER_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/libaisdecoder.a   $(TARGET_DIR)/usr/lib/libaisdecoder.a
	$(INSTALL) -D -m 0755 $(@D)/libaisdecoder.so* $(TARGET_DIR)/usr/lib
	$(INSTALL) -D -m 0755 $(@D)/aisdecoder        $(TARGET_DIR)/usr/bin/aisdecoder
endef

$(eval $(cmake-package))
