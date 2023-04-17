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

    <!-- Starting from XSLT2, we are allowed to include extra files.
         Let's move all the templates in a separate file -->
    <xsl:include href="include_example.xsl"/>
</xsl:stylesheet>
