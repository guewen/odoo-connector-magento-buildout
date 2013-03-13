#!/bin/bash
./bin/oe run-tests -dopenerp_magento7 -p8401 --addons parts/webclient/addons,\
parts/addons,\
parts/openobject-extension,\
parts/e-commerce-addons,\
parts/openerp-product-attributes,\
parts/magentoerpconnect \
-m magentoerpconnect
