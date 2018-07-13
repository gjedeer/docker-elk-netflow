FROM sebp/elk

ENV ES_HOME /opt/elasticsearch
WORKDIR ${ES_HOME}

RUN CONF_DIR=/etc/elasticsearch gosu elasticsearch bin/elasticsearch-plugin \
    install -b ingest-geoip

WORKDIR ${LOGSTASH_HOME}
RUN gosu logstash bin/logstash-plugin install logstash-codec-netflow

#ADD logstash-30-netflow.conf /etc/logstash/conf.d/30-netflow.conf
ADD elk-post-hooks.sh /usr/local/bin/elk-post-hooks.sh
