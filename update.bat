@echo off
setlocal
set CURL=curl.exe
set JSON2XML=json2xml
set XSLT=msxsl.exe

prompt $G$S
echo on
call %CURL% -ks -H "Accept: application/vnd.github.mercy-preview+json" "https://api.github.com/users/RadAd/repos?per_page=100&sort=name&direction=asc" > repos.json
call %JSON2XML% repos repos.json > repos.xml
call %XSLT% repos.xml repos-summary.xsl > repos-summary.html
