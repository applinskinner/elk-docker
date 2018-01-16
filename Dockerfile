FROM sebp/elk

WORKDIR ${LOGSTASH_HOME}
ADD 90-kv-filter.conf /etc/logstash/conf.d/90-kv-filter.conf

RUN gosu logstash bin/logstash-plugin install logstash-filter-kv
