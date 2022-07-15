---
icons:
  RadMeter: "test"
  RadGui: "test"
---
{{ icon.RadNotepadMFC }}
{{ icon.RadMeter }}

{% for repository in site.github.public_repositories -%}
{{ repository }}

{% endfor %}
