<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8" omit-xml-declaration="yes"/>

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
    
    <xsl:template match="User">
        <xsl:element name="h2">
            <xsl:element name="a">
                <xsl:attribute name="href">https://github.com/<xsl:value-of select="@name"/></xsl:attribute>
                <xsl:value-of select="@name"/>
            </xsl:element>
        </xsl:element>
        <xsl:element name="table">
            <xsl:apply-templates select="*"/>
        </xsl:element>
    </xsl:template>
    
    <xsl:template match="Repo">
        <xsl:variable name="p"><xsl:value-of select="../@name"/>/<xsl:value-of select="@name"/></xsl:variable>
        <xsl:element name="tr">
            <xsl:element name="th">
                <xsl:element name="h3">
                    <xsl:element name="a">
                        <xsl:attribute name="href">https://github.com/<xsl:value-of select="$p"/></xsl:attribute>
                        <xsl:value-of select="@name"/>
                    </xsl:element>
                </xsl:element>
            </xsl:element>
            <xsl:element name="td">
                <xsl:element name="img">
                    <xsl:attribute name="src">https://img.shields.io/github/downloads/<xsl:value-of select="$p"/>/total.svg?maxAge=2592000</xsl:attribute>
                </xsl:element>
            </xsl:element>
            <xsl:element name="td">
                <xsl:element name="a">
                    <xsl:attribute name="href">https://github.com/<xsl:value-of select="$p"/>/releases/latest</xsl:attribute>
                    <xsl:element name="img">
                        <xsl:attribute name="src">https://img.shields.io/github/release/<xsl:value-of select="$p"/>.svg?maxAge=2592000</xsl:attribute>
                    </xsl:element>
                </xsl:element>
            </xsl:element>
            <xsl:element name="td">
                <xsl:apply-templates select="*"/>
            </xsl:element>
        </xsl:element>
    </xsl:template>
    
    <xsl:template match="Commit">
        <xsl:variable name="p"><xsl:value-of select="../../@name"/>/<xsl:value-of select="../@name"/></xsl:variable>
        <xsl:element name="a">
            <xsl:attribute name="href">https://github.com/<xsl:value-of select="$p"/>/commits/master</xsl:attribute>
            <xsl:element name="img">
                <xsl:attribute name="src">https://img.shields.io/github/commits-since/<xsl:value-of select="$p"/>/<xsl:value-of select="."/>.svg?maxAge=2592000</xsl:attribute>
            </xsl:element>
        </xsl:element>
    </xsl:template>
</xsl:stylesheet>
