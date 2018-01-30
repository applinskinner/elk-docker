FROM sebp/elk

ADD 90-kv-filter.conf /etc/logstash/conf.d/90-kv-filter.conf

WORKDIR ${LOGSTASH_HOME}
RUN gosu logstash bin/logstash-plugin install logstash-filter-kv

WORKDIR ${KIBANA_HOME}
RUN gosu kibana bin/kibana-plugin install https://github.com/sivasamyk/logtrail/releases/download/v0.1.25/logtrail-6.1.2-0.1.25.zip
