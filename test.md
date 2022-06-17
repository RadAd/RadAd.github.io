---
no_release: [ "RadFloatDB", "MiniUtils", "Shortcut" ]
---
## Windows GUI
{% assign repositories = site.github.public_repositories %}
{% assign repositories = repositories | where_exp: "repository", "repository.topics contains 'windows'" %}
{% assign repositories = repositories | where_exp: "repository", "repository.topics contains 'gui'" %}
|------+------+------+------+------|
|------|-----:|-----:|-----:|------|
{% for repository in repositories -%}
| [{{ repository.name }}]({{ repository.html_url }}) | {% unless page.no_release contains repository.name %}![downloads](https://img.shields.io/github/downloads/{{ repository.full_name }}/total.svg?maxAge=2592000&label=){% endunless %} | ![release](https://img.shields.io/github/release/{{ repository.full_name }}.svg?maxAge=2592000&label=) | ![commits-since](https://img.shields.io/github/commits-since/{{ repository.full_name }}/latest.svg?maxAge=2592000&label=) | {% if repository.topics contains 'appveyor' %}![appveyor](https://img.shields.io/appveyor/ci/{{ repository.full_name }}.svg?maxAge=2592000&label=){% endif %} | {{ repository.description }} |
{% endfor %}

## Windows Console
{% assign repositories = site.github.public_repositories %}
{% assign repositories = repositories | where_exp: "repository", "repository.topics contains 'windows'" %}
{% assign repositories = repositories | where_exp: "repository", "repository.topics contains 'console'" %}
{% for repository in repositories -%}
| [{{ repository.name }}]({{ repository.html_url }}) | ![downloads](https://img.shields.io/github/downloads/{{ repository.full_name }}/total.svg?maxAge=2592000&label=) | ![release](https://img.shields.io/github/release/{{ repository.full_name }}.svg?maxAge=2592000&label=) | {% if repository.topics contains 'appveyor' %}![appveyor](https://img.shields.io/appveyor/ci/{{ repository.full_name }}.svg?maxAge=2592000&label=){% endif %} | {{ repository.description }} |
{% endfor %}
