#!/bin/bash
./bin/oe run-tests -dopenerp_magento7  -p8401 --addons parts/webclient/addons,parts/addons,parts/openobject-extension -m connector
