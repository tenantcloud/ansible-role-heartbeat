tenantcloud.ansible_role_heartbeat
=========

Ansible role for install and setup heartbeat. This role include in default terraform scenario for auto-deploy new server.

Requirements
------------

ELK Stack, Elastalert, ReadOnlyRest

Role Variables
--------------

elasticsearch_version: Elasticseatch version
beat_version: Elasticsearch beats version
url_http_check: Url for check domain avaliable
ip_ssh_check: IP address for check local servers

Dependencies
------------

Example Playbook
----------------

```yaml
  - hosts: localhost
    vars:
      elasticsearch_version: "6.x"
      beat_version: "latest"
      url_http_check:
        - {url: "https://google.com"}
        - {url: "https://twitch.com"}
      ip_ssh_check:
        - {ip: "1.2.3.4", port: "60001"}
        - {ip: "1.2.3.4", port: "60002"}
        - {ip: "8.8.8.8", port: "5050"}
        - {ip: "8.8.8.8", port: "8080"}
    become: yes
    roles:
      - tenantcloud.ansible_role_heartbeat
```

License
-------

BSD

Author Information
------------------

TenantCloud DevOps Team
