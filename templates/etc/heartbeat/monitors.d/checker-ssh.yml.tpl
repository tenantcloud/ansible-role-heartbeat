{% for var in ip_ssh_check %}
- type: tcp
  schedule: '@every 600s'
  hosts: ["{{ var.ip }}"]
  ports: {{ var.port }}

{% endfor %}
