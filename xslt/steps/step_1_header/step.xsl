<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:tei="http://www.tei-c.org/ns/1.0" exclude-result-prefixes="xs" version="2.0">
    <!-- In this exercise we want to create a basic HTML page structure,
         showing the image and the title -->

    <xsl:output method="html"/>

    <!-- this template runs because the root of the XML element matches with
         this template node -->
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
                            <!-- The image is taken using XPath -->
                            <img width="600" src="SOMETHING_HERE_TO_SHOW_THE_IMAGE" />
                        </div>
                        <div class="col-sm" style="margin-left: 5em">
                            <!-- Let's apply other XSLT templates on the
                                 selected element `tei:head`
                                 SOMETHING HERE TO TRIGGER THE EXECUTION OF TEMPLATES FOR TAG `tei::head`-->
                        </div>
                    </div>
                </div>
            </body>
        </html>
    </xsl:template>

    <!-- this template runs because it's called explicitly
    SOMETHING HERE TO SHOW <h1>HEAD<h1> -->
</xsl:stylesheet>
