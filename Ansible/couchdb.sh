#!/usr/bin/env bash

  wget -q http://ftp.tudelft.nl/apache/couchdb/source/1.5.0/apache-couchdb-1.5.0.tar.gz
  tar xfz apache-couchdb-1.5.0.tar.gz
  cd apache-couchdb-1.5.0
  ./configure
  make
  make install

  adduser --system \
          --home /usr/local/var/lib/couchdb \
          --no-create-home \
          --shell /bin/bash \
          --group --gecos \
          "CouchDB Administrator" couchdb

  chown -R couchdb:couchdb /usr/local/etc/couchdb
  chown -R couchdb:couchdb /usr/local/var/lib/couchdb
  chown -R couchdb:couchdb /usr/local/var/log/couchdb
  chown -R couchdb:couchdb /usr/local/var/run/couchdb

  chmod 0770 /usr/local/etc/couchdb
  chmod 0770 /usr/local/var/lib/couchdb
  chmod 0770 /usr/local/var/log/couchdb
  chmod 0770 /usr/local/var/run/couchdb

  ln -s /usr/local/etc/logrotate.d/couchdb /etc/logrotate.d/couchdb
  ln -s /usr/local/etc/init.d/couchdb /etc/init.d
  update-rc.d couchdb defaults