---
icons:
  RadMeter: "test"
  RadGui: "test"
---
{{ icons.RadNotepadMFC }}
{{ icons.RadMeter }}

{% for repository in site.github.public_repositories -%}
{{ repository }}

{% endfor %}
