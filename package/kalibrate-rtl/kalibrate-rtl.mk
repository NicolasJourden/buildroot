################################################################################
# Kalibrate-rtl
# Nicolas JOURDEN <nicolas.jourden at laposte.net>
################################################################################

KALIBRATE_RTL_LICENSE = BSD-2-Clause
KALIBRATE_RTL_VERSION = aae11c8a8dc79692a94ccfee39ba01e8c8c05d38
KALIBRATE_RTL_SITE = $(call github,steve-m,kalibrate-rtl,$(KALIBRATE_RTL_VERSION))
KALIBRATE_RTL_INSTALL_TARGET = YES

KALIBRATE_RTL_DEPENDENCIES = librtlsdr
KALIBRATE_RTL_DEPENDENCIES += fftw

define KALIBRATE_RTL_CALL_BOOTSTRAP
  (cd $(@D) && ./bootstrap)
endef

KALIBRATE_RTL_PRE_CONFIGURE_HOOKS += KALIBRATE_RTL_CALL_BOOTSTRAP

$(eval $(autotools-package))
