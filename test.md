# Windows GUI

{% for repository in site.github.public_repositories | where repository.topics contains 'windows' and repository.topics contains 'gui'%}* {{ repository.name }}
{% endfor %}



|-----------------+------------+-----------------+----------------|
| Default aligned |Left aligned| Center aligned  | Right aligned  |
|-----------------|:-----------|:---------------:|---------------:|
{% for repository in site.github.public_repositories %}{% if repository.topics contains 'windows' and repository.topics contains 'gui'%}| [{{ repository.name }}]({{ repository.html_url }}) | ![downloads](https://img.shields.io/github/downloads/{{ repository.full_name }}/total.svg?maxAge=2592000&label=) | ![release](https://img.shields.io/github/release/{{ repository.full_name }}.svg?maxAge=2592000&label=) | ![commits-since](https://img.shields.io/github/commits-since/{{ repository.full_name }}/latest.svg?maxAge=2592000&label=) | {{ repository.description }} |{% else %}| |{% endif %}
{% endfor %}
