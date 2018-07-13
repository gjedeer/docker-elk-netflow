#!/bin/sh

if [ -f /setup_complete ]; then
	exit 0
fi

echo "Running first-run setup hooks"

touch /setup_complete

cd /opt/logstash
service logstash stop

re_is_numeric='^[0-9]+$'
if ! [[ $NETFLOW_PORT =~ $re_is_numeric ]] ; then
	NETFLOW_PORT=9995
fi
bin/logstash --modules netflow --setup -M netflow.var.input.udp.port=$NETFLOW_PORT

echo "Netflow module setup complete"
