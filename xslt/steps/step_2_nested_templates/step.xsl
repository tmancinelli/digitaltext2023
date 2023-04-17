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
                            <!-- Let's run other templates too, using a bit more complex XPath
                            ADD SOMETHING HERE TO APPLY TRANSFORMATIONS FOR ANY NESTED NODE UNDER `tei:p` -->
                        </div>
                    </div>
                </div>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="//tei:head">
        <h1>
            <xsl:apply-templates/>
        </h1>
    </xsl:template>

    <!-- we don't know the nested XML-tree. XSLT will do the magic for us. When
         one of the following XML nodes will be found, XLST will apply the
         correct template

    ADD SOMETHING HERE TO COVER:
      - tei:p -> <p>FOO</p>
      - tei:lb -> FOO<br />
      - tei:del -> <s>FOO</s>
    -->
    
</xsl:stylesheet>
