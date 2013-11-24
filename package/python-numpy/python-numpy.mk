################################################################################
#
# python-numpy
#
################################################################################

PYTHON_NUMPY_VERSION = 1.8.0
PYTHON_NUMPY_SOURCE = numpy-$(PYTHON_NUMPY_VERSION).tar.gz
PYTHON_NUMPY_SITE = https://pypi.python.org/packages/source/n/numpy/
PYTHON_NUMPY_DEPENDENCIES = python
PYTHON_NUMPY_LICENSE = BSD
# README.rst refers to the file "LICENSE" but it's not included

define PYTHON_NUMPY_BUILD_CMDS
	(cd $(@D); $(HOST_DIR)/usr/bin/python setup.py build --executable=/usr/bin/python)
endef

define PYTHON_NUMPY_INSTALL_TARGET_CMDS
	(cd $(@D); $(HOST_DIR)/usr/bin/python setup.py install --prefix=$(TARGET_DIR)/usr)
endef

$(eval $(generic-package))
