#!/bin/bash
./oe run-tests -dopenerp_magento7 -p8401 --addons /home/guewen/code/dev_instances/openerp_magento7/parts/webclient/addons,\
/home/guewen/code/dev_instances/openerp_magento7/parts/addons,\
/home/guewen/code/dev_instances/openerp_magento7/parts/openobject-extension,\
/home/guewen/code/dev_instances/openerp_magento7/parts/e-commerce-addons,\
/home/guewen/code/dev_instances/openerp_magento7/parts/openerp-product-attributes,\
/home/guewen/code/dev_instances/openerp_magento7/parts/magentoerpconnect \
-m magentoerpconnect
