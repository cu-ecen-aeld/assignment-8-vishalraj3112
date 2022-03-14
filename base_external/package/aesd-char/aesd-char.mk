
##############################################################
#
# AESD-CHAR-ASSIGNMENTS
#
###############################################################

AESD_CHAR_VERSION = 8a93f369e07899e629152e6cc8f546964e15ad86 #commit version number for A8
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
AESD_CHAR_SITE = git@github.com:cu-ecen-aeld/assignments-3-and-later-vishalraj3112.git
AESD_CHAR_SITE_METHOD = git
AESD_CHAR_GIT_SUBMODULES = YES

# Adding aesd char device subdirectory.
AESD_CHAR_MODULE_SUBDIRS = aesd-char-driver/
#LDD_OVERRIDE_SRCDIR = /home/vishalraj/AESD/Assignment-3-7_P1/assignment-1-vishalraj3112

# Adding all the dependencies(aesd char device).
define AESD_CHAR_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_load $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_unload $(TARGET_DIR)/usr/bin
	
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/drivertest.sh $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/drivertest2.sh $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/drivertest3.sh $(TARGET_DIR)/usr/bin
endef

$(eval $(kernel-module))
$(eval $(generic-package))
