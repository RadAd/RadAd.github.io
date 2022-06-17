Test

{% for repository in site.github.public_repositories %}
  {% if repository.topics contains 'windows' and repository.topics contains 'gui'%}
      * [{{ repository.name }}]({{ repository.html_url }}) - {{ repository.description }}
        {{ repository.watchers_count }} {{ repository.forks_count }} {{ repository.stargazers_count }}
  {% endif %}
{% endfor %}
