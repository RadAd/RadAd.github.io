@echo off
setlocal
set CURL=curl.exe
set JSON2XML=cscript /nologo "C:\Users\Adam.Gates\Desktop\json2xml.js"
set XSLT=msxsl.exe

%CURL% -ks -H "Accept: application/vnd.github.mercy-preview+json" "https://api.github.com/users/RadAd/repos?per_page=100&sort=name&direction=asc" > repos.json
%JSON2XML% repos repos.json > repos.xml
%XSLT% repos.xml repos-summary.xsl > repos-summary.html
