
################################################################################  
#  
# ldd-modules  
#  
################################################################################  

LDD_VERSION = 24407f68cc9a89638af9778766062f7b02093d91
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
LDD_SITE = git@github.com:cu-ecen-aeld/assignment-7-kjkuhn.git
LDD_SITE_METHOD = git
LDD_GIT_SUBMODULES = YES
LDD_DEPENDENCIES = linux
LDD_MODULE_SUBDIRS = misc-modules 
LDD_MODULE_SUBDIRS += scull



$(eval $(kernel-module))
$(eval $(generic-package))
