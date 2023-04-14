<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:tei="http://www.tei-c.org/ns/1.0"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    version="1.0">
    <xsl:output method="html"/>
    
    <xsl:template match="tei:TEI">
        <html>
            <head>
                <title>
                    <xsl:value-of select="tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title"/>
                </title>
                <meta charset="UTF-8"/>
            </head>
            <body>
                <xsl:apply-templates/>
                <div>
                    <hr/>
                    <xsl:value-of select="tei:teiHeader/tei:fileDesc/tei:publicationStmt/tei:p"/></div>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="tei:teiHeader"/>
    
    <xsl:template match="tei:div[@type='poem']">
        <div style="font-size:14pt;padding-bottom:20px">
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    
    <xsl:template match="tei:div[@type='shortPoem']">
        <div style="font-size:10pt">
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    
    <xsl:template match="tei:head">
        <h2><xsl:apply-templates/></h2>
    </xsl:template>
    
    <xsl:template match="tei:l">
        <div><xsl:apply-templates/></div>
    </xsl:template>
    
    <xsl:template match="tei:lg">
        <div style="padding-bottom:10px">
            <xsl:apply-templates/>
        </div>
    </xsl:template>
</xsl:stylesheet>

