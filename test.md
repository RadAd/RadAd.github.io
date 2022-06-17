# Windows GUI

## Part 1
{% assign repositories = site.github.public_repositories %}
{% for repository in repositories -%}
* {{ repository.name }}
{% endfor %}


## Part 2
|---+---+---|
{% for repository in site.github.public_repositories -%}
{% if repository.topics contains 'windows' and repository.topics contains 'gui' -%}
| [{{ repository.name }}]({{ repository.html_url }}) | ![downloads](https://img.shields.io/github/downloads/{{ repository.full_name }}/total.svg?maxAge=2592000&label=) | ![release](https://img.shields.io/github/release/{{ repository.full_name }}.svg?maxAge=2592000&label=) | ![commits-since](https://img.shields.io/github/commits-since/{{ repository.full_name }}/latest.svg?maxAge=2592000&label=) | ![appveyor](https://img.shields.io/appveyor/ci/{{ repository.full_name }}.svg?maxAge=2592000&label=) | {{ repository.description }} |
{% endif -%}
{% endfor %}
