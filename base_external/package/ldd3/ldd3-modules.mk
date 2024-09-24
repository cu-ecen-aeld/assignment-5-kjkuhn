
################################################################################  
#  
# ldd3-modules  
#  
################################################################################  

LDD3_MODULES_VERSION = 0e621ec06aefebc4b5f8b7185aebdea7c5c870c0
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
LDD3_MODULES_SITE = git@github.com:cu-ecen-aeld/assignment-7-kjkuhn.git
LDD3_MODULES_SITE_METHOD = git
LDD3_MODULES_GIT_SUBMODULES = YES

define LDD3_MODULES_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/misc-subdirs all
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/scull all
endef


define LDD3_MODULES_INSTALL_TARGET_CMDS
	$(INSTALL) -d 0755 $(@D)/conf/ $(TARGET_DIR)/etc/assignment7/misc-subdirs
	$(INSTALL) -d 0755 $(@D)/conf/ $(TARGET_DIR)/etc/assignment7/scull

	$(INSTALL) -m 0755 $(@D)/misc-subdirs/*.ko $(TARGET_DIR)/etc/assignment7/misc-subdirs
	$(INSTALL) -m 0755 $(@D)/scull/*.ko $(TARGET_DIR)/etc/assignment7/scull
endef
#$(INSTALL) -m 0755 $(@D)/server/aesdsocket-start-stop.sh $(TARGET_DIR)/etc/init.d/S99aesdsocket
$(eval $(generic-package))
