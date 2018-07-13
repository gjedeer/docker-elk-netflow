#!/bin/sh

if [ -f /setup_complete ]; then
	exit 0
fi

echo "Running first-run setup hooks"

touch /setup_complete

cd /opt/logstash
bin/logstash --modules netflow --setup
echo "Netflow module setup complete"
