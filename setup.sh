#!/bin/bash/
#setup.sh script to start postgres and execute sql and stop the db 

set -e

/etc/init.d/postgresql start
sleep 5
#To create DB , user and tables
psql -f create_setup.sql
#To execute tasked sql
psql -f task.sql
/etc/init.d/postgresql stop