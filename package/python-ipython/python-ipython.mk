################################################################################
#
# python-bottle
#
################################################################################

PYTHON_IPYTHON_VERSION = 1.1.0
PYTHON_IPYTHON_SOURCE = ipython-$(PYTHON_IPYTHON_VERSION).tar.gz
PYTHON_IPYTHON_SITE = https://pypi.python.org/packages/source/i/ipython/
PYTHON_IPYTHON_DEPENDENCIES = python
PYTHON_IPYTHON_LICENSE = BSD
# README.rst refers to the file "LICENSE" but it's not included

define PYTHON_IPYTHON_BUILD_CMDS
	(cd $(@D); $(HOST_DIR)/usr/bin/python setup.py build --executable=/usr/bin/python)
endef

define PYTHON_IPYTHON_INSTALL_TARGET_CMDS
	(cd $(@D); $(HOST_DIR)/usr/bin/python setup.py install --prefix=$(TARGET_DIR)/usr)
endef

$(eval $(generic-package))
