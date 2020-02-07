############################# Heartbeat ######################################

heartbeat.config.monitors:
  path: ${path.config}/monitors.d/*.yml
  reload.enabled: false
  reload.period: 5s

#==================== Elasticsearch template setting ==========================

setup.template.settings:
  index.number_of_shards: 1
  index.codec: best_compression
setup.template.name: "heartbeat"
setup.template.pattern: "heartbeat-*"
#================================ General =====================================

#============================== Dashboards =====================================
setup.dashboards.enabled: true

#============================== Kibana =====================================
setup.kibana:
  host: "{{ elk_url }}:5601"
setup.dashboards.index: "heartbeat-*"
#-------------------------- Elasticsearch output ------------------------------
output.elasticsearch:
  hosts: ["{{ elk_url }}:9200"]
  index: "heartbeat-%{+yyyy.MM.dd}"
  username: "{{ elk_username }}"
  password: "{{ elk_password }}"

#================================ Processors =====================================
processors:
  - add_host_metadata: ~
  - add_cloud_metadata: ~

#==============================  ===============================
setup.ilm.enabled: false
ilm.enabled: false
