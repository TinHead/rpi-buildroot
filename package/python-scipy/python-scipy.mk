################################################################################
#
# python-scipy
#
################################################################################

PYTHON_SCIPY_VERSION = 0.13.0
PYTHON_SCIPY_SOURCE = scipy-$(PYTHON_SCIPY_VERSION).tar.gz
PYTHON_SCIPY_SITE = https://pypi.python.org/packages/source/s/scipy/
PYTHON_SCIPY_DEPENDENCIES = python
PYTHON_SCIPY_LICENSE = BSD
# README.rst refers to the file "LICENSE" but it's not included

define PYTHON_SCIPY_BUILD_CMDS
	(cd $(@D); $(HOST_DIR)/usr/bin/python setup.py build --executable=/usr/bin/python)
endef

define PYTHON_SCIPY_INSTALL_TARGET_CMDS
	(cd $(@D); $(HOST_DIR)/usr/bin/python setup.py install --prefix=$(TARGET_DIR)/usr)
endef

$(eval $(generic-package))