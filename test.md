---
no_release: [ "RadFloatDB", "MiniUtils", "Shortcut", "RadAudioMeterDB", "RadKeyLockDB", "Radboy", "SyntaxHighlighter", "TextUI" ]
downloads_img: "![downloads](https://img.shields.io/github/downloads/[repo]/total.svg?maxAge=2592000&label=)"
release_img: "[![release](https://img.shields.io/github/release/[repo].svg?maxAge=2592000&label=)](https://github.com/[repo]/releases/latest)"
commits_img: "[![commits-since](https://img.shields.io/github/commits-since/[repo]/latest.svg?maxAge=2592000&label=)](https://github.com/[repo]/commits/master)"
appveyor_img: "[![appveyor](https://img.shields.io/appveyor/ci/[repo].svg?maxAge=2592000&label=)](https://ci.appveyor.com/project/[repo])"
none_img: "![](https://img.shields.io/badge/----red.svg)"
---
## [Windows GUI](https://github.com/RadAd?tab=repositories&q=%23windows+%23gui)
{% assign repositories = site.github.public_repositories %}
{% assign repositories = repositories | where_exp: "repository", "repository.topics contains 'windows'" %}
{% assign repositories = repositories | where_exp: "repository", "repository.topics contains 'gui'" %}
{% for repository in repositories -%}
{% if page.no_release contains repository.name -%}
| [{{ repository.name }}]({{ repository.html_url }}) | {{ page.none_img }} | {{ page.none_img }} | {{ page.none_img }} | {% if repository.topics contains 'appveyor' %}{{ page.appveyor_img | replace: "[repo]", repository.full_name }}{% endif %} | {{ repository.description }} |
{% else -%}
| [{{ repository.name }}]({{ repository.html_url }}) | {{ page.downloads_img | replace: "[repo]", repository.full_name }} | {{ page.release_img | replace: "[repo]", repository.full_name }} | {{ page.commits_img | replace: "[repo]", repository.full_name }} | {% if repository.topics contains 'appveyor' %}{{ page.appveyor_img | replace: "[repo]", repository.full_name }}{% endif %} | {{ repository.description }} |
{% endif -%}
{% endfor %}

## [Windows Console](https://github.com/RadAd?tab=repositories&q=%23windows+%23console)
{% assign repositories = site.github.public_repositories %}
{% assign repositories = repositories | where_exp: "repository", "repository.topics contains 'windows'" %}
{% assign repositories = repositories | where_exp: "repository", "repository.topics contains 'console'" %}
{% for repository in repositories -%}
{% if page.no_release contains repository.name -%}
| [{{ repository.name }}]({{ repository.html_url }}) | {{ page.none_img }} | {{ page.none_img }} | {{ page.none_img }} | {% if repository.topics contains 'appveyor' %}{{ page.appveyor_img | replace: "[repo]", repository.full_name }}{% endif %} | {{ repository.description }} |
{% else -%}
| [{{ repository.name }}]({{ repository.html_url }}) | {{ page.downloads_img | replace: "[repo]", repository.full_name }} | {{ page.release_img | replace: "[repo]", repository.full_name }} | {{ page.commits_img | replace: "[repo]", repository.full_name }} | {% if repository.topics contains 'appveyor' %}{{ page.appveyor_img | replace: "[repo]", repository.full_name }}{% endif %} | {{ repository.description }} |
{% endif -%}
{% endfor %}

## [Windows Deskband](https://github.com/RadAd?tab=repositories&q=%23windows+%23deskband)
{% assign repositories = site.github.public_repositories %}
{% assign repositories = repositories | where_exp: "repository", "repository.topics contains 'windows'" %}
{% assign repositories = repositories | where_exp: "repository", "repository.topics contains 'deskband'" %}
{% for repository in repositories -%}
{% if page.no_release contains repository.name -%}
| [{{ repository.name }}]({{ repository.html_url }}) | {{ page.none_img }} | {{ page.none_img }} | {{ page.none_img }} | {% if repository.topics contains 'appveyor' %}{{ page.appveyor_img | replace: "[repo]", repository.full_name }}{% endif %} | {{ repository.description }} |
{% else -%}
| [{{ repository.name }}]({{ repository.html_url }}) | {{ page.downloads_img | replace: "[repo]", repository.full_name }} | {{ page.release_img | replace: "[repo]", repository.full_name }} | {{ page.commits_img | replace: "[repo]", repository.full_name }} | {% if repository.topics contains 'appveyor' %}{{ page.appveyor_img | replace: "[repo]", repository.full_name }}{% endif %} | {{ repository.description }} |
{% endif -%}
{% endfor %}

## [Java](https://github.com/RadAd?tab=repositories&q=%23java)
{% assign repositories = site.github.public_repositories | where_exp: "repository", "repository.topics contains 'java'" %}
{% for repository in repositories -%}
{% if page.no_release contains repository.name -%}
| [{{ repository.name }}]({{ repository.html_url }}) | {{ page.none_img }} | {{ page.none_img }} | {{ page.none_img }} | {{ repository.description }} |
{% else -%}
| [{{ repository.name }}]({{ repository.html_url }}) | {{ page.downloads_img | replace: "[repo]", repository.full_name }} | {{ page.release_img | replace: "[repo]", repository.full_name }} | {{ page.commits_img | replace: "[repo]", repository.full_name }} | {{ repository.description }} |
{% endif -%}
{% endfor %}

## [Android](https://github.com/RadAd?tab=repositories&q=%23android)
{% assign repositories = site.github.public_repositories | where_exp: "repository", "repository.topics contains 'android'" %}
{% for repository in repositories -%}
{% if page.no_release contains repository.name -%}
| [{{ repository.name }}]({{ repository.html_url }}) | {{ page.none_img }} | {{ page.none_img }} | {{ page.none_img }} | {{ repository.description }} |
{% else -%}
| [{{ repository.name }}]({{ repository.html_url }}) | {{ page.downloads_img | replace: "[repo]", repository.full_name }} | {{ page.release_img | replace: "[repo]", repository.full_name }} | {{ page.commits_img | replace: "[repo]", repository.full_name }} | {{ repository.description }} |
{% endif -%}
{% endfor %}

