{% for var in url_http_check %}
- type: http
  schedule: '@every 600s'
  urls: ["{{ var.url }}"]
  check.response.status: 200

{% endfor %}
