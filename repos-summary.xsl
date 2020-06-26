<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8" omit-xml-declaration="yes"/>
    <xsl:variable name="smallcase" select="'abcdefghijklmnopqrstuvwxyz'" />
    <xsl:variable name="uppercase" select="'ABCDEFGHIJKLMNOPQRSTUVWXYZ'" />

    <xsl:template match="/">
        <html>

        <head>
            <title>My Github Repositories</title>
            <link rel="stylesheet" type="text/css" href="myweb.css" />
        </head>

        <body>
            <xsl:apply-templates select="*"/>
        </body>

        </html>
    </xsl:template>
    
    <xsl:template match="repos">
        <xsl:call-template name="Group">
            <xsl:with-param name="type">Windows</xsl:with-param>
        </xsl:call-template>
        <xsl:call-template name="Group">
            <xsl:with-param name="type">Java</xsl:with-param>
        </xsl:call-template>
        <xsl:call-template name="Group">
            <xsl:with-param name="type">Android</xsl:with-param>
        </xsl:call-template>
    </xsl:template>
    
    <xsl:template name="Group">
        <xsl:param name="type" />
        <xsl:variable name="ltype" select="translate($type, $uppercase, $smallcase)" />
        <xsl:element name="h2">
            <xsl:element name="a">
                <xsl:attribute name="href">https://github.com/RadAd?tab=repositories&amp;q=<xsl:value-of select="$ltype"/></xsl:attribute>
                <xsl:attribute name="target">_blank</xsl:attribute>
                <xsl:value-of select="$type"/>
            </xsl:element>
        </xsl:element>
        <xsl:element name="table">
            <xsl:apply-templates select="*[topics/topic[text()=$ltype]]"/>
        </xsl:element>
    </xsl:template>
    
    <xsl:template match="repo">
        <xsl:variable name="p"><xsl:value-of select="full_name"/></xsl:variable>
        <xsl:variable name="n"><xsl:value-of select="name"/></xsl:variable>
        <xsl:variable name="icon"><xsl:value-of select="document('repos-extra.xml')/MyGithub/User/Repo[@name=$n]/@icon"/></xsl:variable>
        <xsl:variable name="releases"><xsl:value-of select="document('repos-extra.xml')/MyGithub/User/Repo[@name=$n]/@releases"/></xsl:variable>
        <xsl:element name="tr">
            <xsl:element name="th">
                <xsl:element name="h3">
                    <xsl:element name="a">
                        <xsl:attribute name="href"><xsl:value-of select="html_url"/></xsl:attribute>
                        <xsl:attribute name="target">_blank</xsl:attribute>
                        <xsl:choose>
                            <xsl:when test="$icon != ''">
                                <xsl:element name="img">
                                    <xsl:attribute name="src">https://raw.githubusercontent.com/<xsl:value-of select="$p"/>/master/<xsl:value-of select="$icon"/></xsl:attribute>
                                    <xsl:attribute name="width">16</xsl:attribute>
                                    <xsl:attribute name="height">16</xsl:attribute>
                                </xsl:element>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:element name="img">
                                    <xsl:attribute name="src">https://github.githubassets.com/favicons/favicon.png</xsl:attribute>
                                    <xsl:attribute name="width">16</xsl:attribute>
                                    <xsl:attribute name="height">16</xsl:attribute>
                                </xsl:element>
                            </xsl:otherwise>    
                        </xsl:choose>
                        <xsl:value-of select="name"/>
                    </xsl:element>
                </xsl:element>
            </xsl:element>
            <xsl:element name="td">
                <xsl:element name="img">
                    <xsl:attribute name="title">Downloads</xsl:attribute>
                    <xsl:choose>
                        <xsl:when test="$releases != 'true'">
                            <xsl:attribute name="src">https://img.shields.io/badge/----red.svg</xsl:attribute>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:attribute name="src">https://img.shields.io/github/downloads/<xsl:value-of select="$p"/>/total.svg?maxAge=2592000&amp;label=</xsl:attribute>
                        </xsl:otherwise>    
                    </xsl:choose>
                </xsl:element>
            </xsl:element>
            <xsl:element name="td">
                <xsl:element name="a">
                    <xsl:attribute name="href">https://github.com/<xsl:value-of select="$p"/>/releases/latest</xsl:attribute>
                    <xsl:attribute name="target">_blank</xsl:attribute>
                    <xsl:element name="img">
                        <xsl:attribute name="title">Latest Release</xsl:attribute>
                        <xsl:choose>
                            <xsl:when test="$releases != 'true'">
                                <xsl:attribute name="src">https://img.shields.io/badge/----red.svg</xsl:attribute>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:attribute name="src">https://img.shields.io/github/release/<xsl:value-of select="$p"/>.svg?maxAge=2592000&amp;label=</xsl:attribute>
                            </xsl:otherwise>    
                        </xsl:choose>
                    </xsl:element>
                </xsl:element>
            </xsl:element>
            <xsl:element name="td">
                <xsl:element name="a">
                    <xsl:attribute name="href">https://github.com/<xsl:value-of select="$p"/>/commits/master</xsl:attribute>
                    <xsl:attribute name="target">_blank</xsl:attribute>
                    <xsl:element name="img">
                        <xsl:attribute name="title">Commits since Latest Release</xsl:attribute>
                        <xsl:choose>
                            <xsl:when test="$releases != 'true'">
                                <xsl:attribute name="src">https://img.shields.io/badge/----red.svg</xsl:attribute>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:attribute name="src">https://img.shields.io/github/commits-since/<xsl:value-of select="$p"/>/latest.svg?maxAge=2592000&amp;label=</xsl:attribute>
                            </xsl:otherwise>    
                        </xsl:choose>
                    </xsl:element>
                </xsl:element>
            </xsl:element>
            <xsl:element name="td">
                <xsl:apply-templates select="topics/topic"/>
            </xsl:element>
            <xsl:element name="td">
                <xsl:value-of select="description"/>
            </xsl:element>
        </xsl:element>
    </xsl:template>
    
    <xsl:template match="topic[text()='appveyor']">
        <xsl:variable name="p"><xsl:value-of select="../../full_name"/></xsl:variable>
        <xsl:element name="a">
            <xsl:attribute name="href">https://ci.appveyor.com/project/<xsl:value-of select="$p"/></xsl:attribute>
            <xsl:attribute name="target">_blank</xsl:attribute>
            <xsl:element name="img">
                <xsl:attribute name="src">https://img.shields.io/appveyor/ci/<xsl:value-of select="$p"/>.svg?maxAge=2592000&amp;label=</xsl:attribute>
            </xsl:element>
        </xsl:element>
    </xsl:template>
    
    <xsl:template match="topic[text()='shippable']">
        <xsl:variable name="p"><xsl:value-of select="../../full_name"/></xsl:variable>
        <xsl:element name="a">
            <xsl:attribute name="href">https://app.shippable.com/github/<xsl:value-of select="$p"/></xsl:attribute>
            <xsl:attribute name="target">_blank</xsl:attribute>
            <xsl:element name="img">
                <xsl:attribute name="src">https://img.shields.io/shippable/<xsl:value-of select="@id"/>.svg?maxAge=2592000&amp;label=</xsl:attribute>
            </xsl:element>
        </xsl:element>
    </xsl:template>

    <xsl:template match="topic">
    </xsl:template>
    
</xsl:stylesheet>
