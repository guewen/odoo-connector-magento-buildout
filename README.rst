Bootstrapping the buildout
--------------------------

Dependencies: http://pythonhosted.org/anybox.recipe.openerp/first_steps.html#installing-build-dependencies

For a quick installation, just run::

  $ ./bootstrap.sh
  $ bin/buildout

Then create a database and install Odoo::

  $ createdb odoo_magento8
  $ bin/start_openerp -d odoo_magento8 -i magentoerpconnect --stop-after-init

You may be interested to read the full documentation on http://pythonhosted.org/anybox.recipe.openerp/

Starting OpenERP
----------------

Just run::

  $ bin/start_openerp

Or in multiprocessing mode::

  $ bin/start_openerp --workers=4
  $ bin/start_connector_worker --workers=1  # start the connector jobs workers

Using Supervisord
-----------------

To launch supervisor::

  $ bin/supervisord

This will launch automatically the process ``start_openerp``. In
addition, the process ``openerp`` to launch a server in standalone will
be available in supervisor.

To manage the processes::

  $ bin/supervisorctl

In supervisorctl type ``help`` to see all commands.

Running the unit tests
----------------------

To run the unit tests of the ``connector`` module:

With `oe`::

  $ bin/rununittests --database odoo_magento8 -m connector

With nose::

  $ bin/nosetests-openerp -d odoo_magento8 -- --nologcapture --with-coverage --pdb parts/connector/connector/tests

To run the unit tests of the ``connector_ecommerce`` module:

With `oe`::

  $ bin/rununittests --database odoo_magento8 -m connector_ecommerce

With nose::

  $ bin/nosetests-openerp -d odoo_magento8 -- --nologcapture --with-coverage --pdb parts/connector-ecommerce/connector_ecommerce/tests

To run the unit tests of the ``magentoerpconnect`` module:

With `oe`::

  $ bin/rununittests --database odoo_magento8 -m magentoerpconnect

With nose::

  $ bin/nosetests-openerp -d odoo_magento8 -- --nologcapture --with-coverage --pdb parts/connector-magento/magentoerpconnect/tests


Generating the html documentation
---------------------------------

Run::

  $ bin/sphinxbuilder_connector
  $ bin/sphinxbuilder_connector_magento

The documentations will be built in ``docs/connector`` and
``docs/connector_magento``.
