# Windows GUI
{% for repository in site.github.public_repositories %}
  {% if repository.topics contains 'windows' and repository.topics contains 'gui'%}
* [{{ repository.name }}]({{ repository.html_url }}) - {{ repository.description }}

  !(Alt text)[https://img.shields.io/github/downloads/{{ repository.full_name }}/total.svg?maxAge=2592000&label=]
  {{ repository.watchers_count }} {{ repository.forks_count }} {{ repository.stargazers_count }}
  {% endif %}
{% endfor %}
