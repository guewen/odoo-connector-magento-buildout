Bootstrapping the buildout
--------------------------

Bootstrapping the buildout consists in creating the basic structure of
the buildout, and installing buildout itself in the directory.

The easiest and recommended way to bootstrap is to use a
``bootstrap.py`` script::

  $ wget https://raw.github.com/buildout/buildout/master/bootstrap/bootstrap.py
  $ python bootstrap.py

As an alternative and more complicated solution, you may also bootstrap
by creating a virtualenv, installing zc.buildout, then run the
bootstrap::

  $ virtualenv sandbox
  $ sandbox/bin/pip install zc.buildout
  $ sandbox/bin/buildout bootstrap

Running the build

Just run ::

  $ bin/buildout -c openerp_magento7.cfg

You can change or create your own configuration file as well.


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

This will launch automatically the process ``start_openerp`` In
addition, the process ``openerp`` to launch a server in standalone will
be available in supervisor.

To manage the processes::

  $ bin/supervisorctl

In supervisorctl type ``help`` to see all commands.

Running the unit tests
----------------------

To run the unit tests of the ``connector`` module::

  $ bin/unittest_connector

To run the unit tests of the ``magentoerpconnect`` module::

  $ bin/unittest_magentoerpconnect

Generating the html documentation
---------------------------------

Run::

  $ bin/sphinxbuilder_connector
  $ bin/sphinxbuilder_magentoerpconnect

The documentations will be built in ``docs/connector`` and
``docs/magentoerpconnect``.
