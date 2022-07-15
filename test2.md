---
icons:
  RadMeter: "test"
  RadGui: "test"
---
{{ page.icons.RadNotepadMFC }}
{{ page.icons.RadMeter }}

{% for repository in site.github.public_repositories -%}
{{ repository }}

{% endfor %}
