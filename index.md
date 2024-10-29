---
title: Projects
no_release: [ "IcoUtils", "JsonViewer", "RadAppBar", "RadAudioMeterDB", "Radboy", "RadDbg", "RadKeyLockDB", "RadLauncher", "RadReadConsole", "RadTabs", "SyntaxHighlighter", "TextUI" ]
branch:
    CmdStartup: "main"
    RadLauncher: "main"
icons:
    AppDrawer: "res/drawable/app_drawer_icon.png"
    Clock: "res/drawable/clock.png"
    ConEdit: "ConEdit.ico"
    CmdStartup: "CmdStartup.ico"
    DesktopsMenu: "res/main.ico"
    DbgOut: "res/bug-white.png"
    JsonViewer: "Res/JsonViewer.ico"
    MiniExplorer: "res/MiniExplorer.ico"
    Notepad: "Notepad.ico"
    OpenAsText: "res/drawable/text.png"
    RadAudioPlayer: "res/Music.ico"
    Radboy: "res/game-boy-icon-53-32x32.png"
    RadBuildStatus: "res/RadBuildStatus.ico"
    RadHotCorner: "res/RadHotCorner-White.ico"
    RadImgViewer: "RadImgViewer/res/imgviewer.ico"
    RadImgViewer2: "res/imgviewer.ico"
    RadFloatDB: "RadFloatDB/RadFloatDB.ico"
    RadGui: "RadGui.ico"
    RadJoyKey: "RadJoyKey.ico"
    RadJoyKeyX: "RadJoyKeyX.ico"
    RadLauncher: "res/RadLaunch.ico"
    RadMenu: "res/RadMenu.ico"
    RadMeter: "RadMeter.ico"
    RadNotepadMFC: "res/RadNotepad.ico"
    RadNotepad: "res/drawable/ic_launcher.png"
    RadSwitch: "res/RadSwitch.ico"
    RadTabs: "RadTabsW.ico"
    RadTerminal: "RadTerminal.ico"
    RadWinKill: "RadWinKill.ico"
    RadWndResizer: "res/RadWndResizer.ico"
    Rainbow: "rainbow.ico"
    RadUnread: "res/drawable/icon.png"
    WebIntents: "res/drawable/web_intents_icon.png"
stars_img: "[![downloads](https://img.shields.io/github/stars/[repo]?style=tile&maxAge=2592000&label=)](https://github.com/[repo]/stargazers)"
downloads_img: "![downloads](https://img.shields.io/github/downloads/[repo]/total.svg?maxAge=2592000&label=)"
release_img: "[![release](https://img.shields.io/github/release/[repo].svg?maxAge=2592000&label=)](https://github.com/[repo]/releases/latest)"
commits_img: "[![commits-since](https://img.shields.io/github/commits-since/[repo]/latest.svg?maxAge=2592000&label=)](https://github.com/[repo]/commits/master)"
appveyor_img: "[![appveyor](https://img.shields.io/appveyor/ci/[repo].svg?maxAge=2592000&label=)](https://ci.appveyor.com/project/[repo])"
none_img: "![](https://img.shields.io/badge/----red.svg)"
---
## [Windows GUI-Application](https://github.com/RadAd?tab=repositories&q=%23windows+%23gui-application)
{% assign repositories = site.github.public_repositories %}
{% assign repositories = repositories | where_exp: "repository", "repository.archived == false" %}
{% assign repositories = repositories | where_exp: "repository", "repository.topics contains 'windows'" %}
{% assign repositories = repositories | where_exp: "repository", "repository.topics contains 'gui-application'" %}
{% for repository in repositories -%}
{% if page.no_release contains repository.name -%}
| [<img src="{{ repository.html_url }}/raw/{{ page.branch[repository.name] | default: "master" }}/{{ page.icons[repository.name] }}" width="16" onerror='this.src="github-11-16.png"' />{{ repository.name }}]({{ repository.html_url }}) | {{ page.stars_img | replace: "[repo]", repository.full_name }} | {{ page.none_img }} | {{ page.none_img }} | {{ page.none_img }} | {% if repository.topics contains 'appveyor' %}{{ page.appveyor_img | replace: "[repo]", repository.full_name }}{% endif %} | {{ repository.description }} |
{% else -%}
| [<img src="{{ repository.html_url }}/raw/{{ page.branch[repository.name] | default: "master" }}/{{ page.icons[repository.name] }}" width="16" onerror='this.src="github-11-16.png"' />{{ repository.name }}]({{ repository.html_url }}) | {{ page.stars_img | replace: "[repo]", repository.full_name }} | {{ page.downloads_img | replace: "[repo]", repository.full_name }} | {{ page.release_img | replace: "[repo]", repository.full_name }} | {{ page.commits_img | replace: "[repo]", repository.full_name }} | {% if repository.topics contains 'appveyor' %}{{ page.appveyor_img | replace: "[repo]", repository.full_name }}{% endif %} | {{ repository.description }} |
{% endif -%}
{% endfor %}

## [Windows Shell-Extension](https://github.com/RadAd?tab=repositories&q=%23windows+%23shell-extension)
{% assign repositories = site.github.public_repositories %}
{% assign repositories = repositories | where_exp: "repository", "repository.archived == false" %}
{% assign repositories = repositories | where_exp: "repository", "repository.topics contains 'windows'" %}
{% assign repositories = repositories | where_exp: "repository", "repository.topics contains 'shell-extension'" %}
{% for repository in repositories -%}
{% if page.no_release contains repository.name -%}
| [<img src="{{ repository.html_url }}/raw/{{ page.branch[repository.name] | default: "master" }}/{{ page.icons[repository.name] }}" width="16" onerror='this.src="github-11-16.png"' />{{ repository.name }}]({{ repository.html_url }}) | {{ page.stars_img | replace: "[repo]", repository.full_name }} | {{ page.none_img }} | {{ page.none_img }} | {{ page.none_img }} | {% if repository.topics contains 'appveyor' %}{{ page.appveyor_img | replace: "[repo]", repository.full_name }}{% endif %} | {{ repository.description }} |
{% else -%}
| [<img src="{{ repository.html_url }}/raw/{{ page.branch[repository.name] | default: "master" }}/{{ page.icons[repository.name] }}" width="16" onerror='this.src="github-11-16.png"' />{{ repository.name }}]({{ repository.html_url }}) | {{ page.stars_img | replace: "[repo]", repository.full_name }} | {{ page.downloads_img | replace: "[repo]", repository.full_name }} | {{ page.release_img | replace: "[repo]", repository.full_name }} | {{ page.commits_img | replace: "[repo]", repository.full_name }} | {% if repository.topics contains 'appveyor' %}{{ page.appveyor_img | replace: "[repo]", repository.full_name }}{% endif %} | {{ repository.description }} |
{% endif -%}
{% endfor %}

## [Windows Console](https://github.com/RadAd?tab=repositories&q=%23windows+%23console)
{% assign repositories = site.github.public_repositories %}
{% assign repositories = repositories | where_exp: "repository", "repository.archived == false" %}
{% assign repositories = repositories | where_exp: "repository", "repository.topics contains 'windows'" %}
{% assign repositories = repositories | where_exp: "repository", "repository.topics contains 'console'" %}
{% for repository in repositories -%}
{% if page.no_release contains repository.name -%}
| [<img src="{{ repository.html_url }}/raw/{{ page.branch[repository.name] | default: "master" }}/{{ page.icons[repository.name] }}" width="16" onerror='this.src="github-11-16.png"' />{{ repository.name }}]({{ repository.html_url }}) | {{ page.stars_img | replace: "[repo]", repository.full_name }} | {{ page.none_img }} | {{ page.none_img }} | {{ page.none_img }} | {% if repository.topics contains 'appveyor' %}{{ page.appveyor_img | replace: "[repo]", repository.full_name }}{% endif %} | {{ repository.description }} |
{% else -%}
| [<img src="{{ repository.html_url }}/raw/{{ page.branch[repository.name] | default: "master" }}/{{ page.icons[repository.name] }}" width="16" onerror='this.src="github-11-16.png"' />{{ repository.name }}]({{ repository.html_url }}) | {{ page.stars_img | replace: "[repo]", repository.full_name }} | {{ page.downloads_img | replace: "[repo]", repository.full_name }} | {{ page.release_img | replace: "[repo]", repository.full_name }} | {{ page.commits_img | replace: "[repo]", repository.full_name }} | {% if repository.topics contains 'appveyor' %}{{ page.appveyor_img | replace: "[repo]", repository.full_name }}{% endif %} | {{ repository.description }} |
{% endif -%}
{% endfor %}

## [Windows Deskband](https://github.com/RadAd?tab=repositories&q=%23windows+%23deskband)
{% assign repositories = site.github.public_repositories %}
{% assign repositories = repositories | where_exp: "repository", "repository.archived == false" %}
{% assign repositories = repositories | where_exp: "repository", "repository.topics contains 'windows'" %}
{% assign repositories = repositories | where_exp: "repository", "repository.topics contains 'deskband'" %}
{% for repository in repositories -%}
{% if page.no_release contains repository.name -%}
| [<img src="{{ repository.html_url }}/raw/{{ page.branch[repository.name] | default: "master" }}/{{ page.icons[repository.name] }}" width="16" onerror='this.src="github-11-16.png"' />{{ repository.name }}]({{ repository.html_url }}) | {{ page.stars_img | replace: "[repo]", repository.full_name }} | {{ page.none_img }} | {{ page.none_img }} | {{ page.none_img }} | {% if repository.topics contains 'appveyor' %}{{ page.appveyor_img | replace: "[repo]", repository.full_name }}{% endif %} | {{ repository.description }} |
{% else -%}
| [<img src="{{ repository.html_url }}/raw/{{ page.branch[repository.name] | default: "master" }}/{{ page.icons[repository.name] }}" width="16" onerror='this.src="github-11-16.png"' />{{ repository.name }}]({{ repository.html_url }}) | {{ page.stars_img | replace: "[repo]", repository.full_name }} | {{ page.downloads_img | replace: "[repo]", repository.full_name }} | {{ page.release_img | replace: "[repo]", repository.full_name }} | {{ page.commits_img | replace: "[repo]", repository.full_name }} | {% if repository.topics contains 'appveyor' %}{{ page.appveyor_img | replace: "[repo]", repository.full_name }}{% endif %} | {{ repository.description }} |
{% endif -%}
{% endfor %}

## [Java](https://github.com/RadAd?tab=repositories&q=%23java)
{% assign repositories = site.github.public_repositories | where_exp: "repository", "repository.topics contains 'java'" %}
{% for repository in repositories -%}
{% if page.no_release contains repository.name -%}
| [<img src="{{ repository.html_url }}/raw/{{ page.branch[repository.name] | default: "master" }}/{{ page.icons[repository.name] }}" width="16" onerror='this.src="github-11-16.png"' />{{ repository.name }}]({{ repository.html_url }}) | {{ page.stars_img | replace: "[repo]", repository.full_name }} | {{ page.none_img }} | {{ page.none_img }} | {{ page.none_img }} | {{ repository.description }} |
{% else -%}
| [<img src="{{ repository.html_url }}/raw/{{ page.branch[repository.name] | default: "master" }}/{{ page.icons[repository.name] }}" width="16" onerror='this.src="github-11-16.png"' />{{ repository.name }}]({{ repository.html_url }}) | {{ page.stars_img | replace: "[repo]", repository.full_name }} | {{ page.downloads_img | replace: "[repo]", repository.full_name }} | {{ page.release_img | replace: "[repo]", repository.full_name }} | {{ page.commits_img | replace: "[repo]", repository.full_name }} | {{ repository.description }} |
{% endif -%}
{% endfor %}

## [Android](https://github.com/RadAd?tab=repositories&q=%23android)
{% assign repositories = site.github.public_repositories | where_exp: "repository", "repository.topics contains 'android'" %}
{% for repository in repositories -%}
{% if page.no_release contains repository.name -%}
| [<img src="{{ repository.html_url }}/raw/{{ page.branch[repository.name] | default: "master" }}/{{ page.icons[repository.name] }}" width="16" onerror='this.src="github-11-16.png"' />{{ repository.name }}]({{ repository.html_url }}) | {{ page.stars_img | replace: "[repo]", repository.full_name }} | {{ page.none_img }} | {{ page.none_img }} | {{ page.none_img }} | {{ repository.description }} |
{% else -%}
| [<img src="{{ repository.html_url }}/raw/{{ page.branch[repository.name] | default: "master" }}/{{ page.icons[repository.name] }}" width="16" onerror='this.src="github-11-16.png"' />{{ repository.name }}]({{ repository.html_url }}) | {{ page.stars_img | replace: "[repo]", repository.full_name }} | {{ page.downloads_img | replace: "[repo]", repository.full_name }} | {{ page.release_img | replace: "[repo]", repository.full_name }} | {{ page.commits_img | replace: "[repo]", repository.full_name }} | {{ repository.description }} |
{% endif -%}
{% endfor %}
