---
icons:
  RadGui: "RadGui.ico"
  RadMeter: "RadMeter.ico"
---
{{ page.icons["RadNotepadMFC"] }}
{{ page.icons["RadMeter"] }}

{% for repository in site.github.public_repositories -%}
{{ page.icons[repository.name] }}
{{ repository }}

{% endfor %}

