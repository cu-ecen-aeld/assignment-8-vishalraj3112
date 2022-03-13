
##############################################################
#
# LDD-ASSIGNMENTS
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
LDD_VERSION = ef640e4fe8bdb2e3c2f8c88723467e80673df03a #commit version number for A7-P2
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
LDD_SITE = git@github.com:cu-ecen-aeld/assignment-7-vishalraj3112.git
LDD_SITE_METHOD = git
LDD_GIT_SUBMODULES = YES

# Adding scull and misc-modules subdirectory.
LDD_MODULE_SUBDIRS = scull/
LDD_MODULE_SUBDIRS += misc-modules/

# TODO adding all the dependencies(scull and misc-modules).
define LDD_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/misc-modules/module_load $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/misc-modules/module_unload $(TARGET_DIR)/usr/bin
	
	$(INSTALL) -m 0755 $(@D)/scull/scull_load $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/scull/scull_unload $(TARGET_DIR)/usr/bin
endef

$(eval $(kernel-module))
$(eval $(generic-package))

