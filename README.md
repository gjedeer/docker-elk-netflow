# docker-elk-netflow
Elasticsearch/Logstash/Kibana setup configured as a Netflow receiver

Based on https://github.com/spujadas/elk-docker

Listens on UDP `$NETFLOW_PORT`, which is 9995 by default.

Use http://manpages.ubuntu.com/manpages/precise/man8/softflowd.8.html or https://github.com/aabc/ipt-netflow to send data.

https://hub.docker.com/r/gdr1/elk-netflow/
