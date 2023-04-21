<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:tei="http://www.tei-c.org/ns/1.0" exclude-result-prefixes="xs" version="2.0">
    <xsl:output method="html"/>
    <xsl:template match="tei:TEI">
        <html>
            <head>
                <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"/>
                <meta charset="UTF-8"/>
            </head>
            <body>
                <div class="container">
                    <div class="row">
                        <div class="col-sm">
                            <img width="600" src="{//tei:facsimile/tei:graphic/@url}"/>
                        </div>
                        <div class="col-sm" style="margin-left: 5em">
                            <xsl:apply-templates select="//tei:head"/>
                            <xsl:apply-templates select="//tei:div/tei:p"/>
                            Corrections: <xsl:copy-of select="$hands"/>
                        </div>
                    </div>
                </div>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="//tei:teiHeader"/>
    <xsl:template match="//tei:head">
        <h1>
            <xsl:apply-templates/>
        </h1>
    </xsl:template>
    <xsl:template match="//tei:p">
        <p>
            <xsl:apply-templates/>
        </p>
    </xsl:template>
    <xsl:template match="//tei:lb">
        <xsl:apply-templates/><br/>
    </xsl:template>

    <xsl:template match="//tei:del">
        <s>
            <xsl:apply-templates/>
        </s>
    </xsl:template>
    <xsl:template match="//tei:hi">
    <xsl:choose>
        <xsl:when test="@rend='u'">
            <u>
                <xsl:apply-templates/>
            </u>
        </xsl:when>
        <xsl:otherwise>
            <sup>
                <xsl:apply-templates/>
            </sup>
        </xsl:otherwise>
    </xsl:choose>
    </xsl:template>
    <xsl:template match="//tei:add">
        <xsl:choose>
            <xsl:when test="@place='marginleft'">
                <span style="left:-5em; position: absolute; font-size: 0.6em;"><xsl:apply-templates/></span>
            </xsl:when>
            <xsl:otherwise>
                <s><xsl:apply-templates/></s>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <xsl:variable name="hands" select="count(//*[@hand])"/>

    <xsl:include href="include_example.xsl"/>
</xsl:stylesheet>