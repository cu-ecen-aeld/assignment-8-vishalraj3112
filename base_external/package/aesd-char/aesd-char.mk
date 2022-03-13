
##############################################################
#
# AESD-CHAR-ASSIGNMENTS
#
###############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
AESD_CHAR_VERSION = 8d52910c98781ad6fe57b6deec564533c9eb5081 #commit version number for A8
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
#LDD_SITE = git@github.com:cu-ecen-aeld/assignment-7-vishalraj3112.git
AESD_CHAR_SITE = git@github.com:cu-ecen-aeld/assignments-3-and-later-vishalraj3112.git
AESD_CHAR_SITE_METHOD = git
AESD_CHAR_GIT_SUBMODULES = YES

# Adding scull and misc-modules subdirectory.
#LDD_MODULE_SUBDIRS = scull/
#LDD_MODULE_SUBDIRS += misc-modules/
AESD_CHAR_MODULE_SUBDIRS = aesd-char-driver/
#LDD_OVERRIDE_SRCDIR = /home/vishalraj/AESD/Assignment-3-7_P1/assignment-1-vishalraj3112

# TODO adding all the dependencies(scull and misc-modules).
define AESD_CHAR_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_load $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_unload $(TARGET_DIR)/usr/bin
	
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/drivertest.sh $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/drivertest2.sh $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/drivertest3.sh $(TARGET_DIR)/usr/bin
	#$(INSTALL) -m 0755 $(@D)/misc-modules/module_load $(TARGET_DIR)/usr/bin
	#$(INSTALL) -m 0755 $(@D)/misc-modules/module_unload $(TARGET_DIR)/usr/bin
	
	#$(INSTALL) -m 0755 $(@D)/scull/scull_load $(TARGET_DIR)/usr/bin
	#$(INSTALL) -m 0755 $(@D)/scull/scull_unload $(TARGET_DIR)/usr/bin
endef

$(eval $(kernel-module))
$(eval $(generic-package))
