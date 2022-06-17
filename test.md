Test

{% for repository in site.github.public_repositories %}
  * [{{ repository.name }}]({{ repository.html_url }})
  {% if repository.topics contains "windows" %}
      WINDOWS
  {% endif %}
    {{ repository }}
{% endfor %}
