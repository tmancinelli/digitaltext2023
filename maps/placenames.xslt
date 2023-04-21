<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0" exclude-result-prefixes="xs" version="2.0">
    <xsl:template match="/">
      <kml xmlns="http://www.opengis.net/kml/2.2">
        <Document>
        <xsl:for-each select="//listPlace/place">
          <Placemark id="{@xml:id}">
              <description><xsl:value-of select="./placeName/text()" /></description>
              <name><xsl:value-of select="@xml:id" /></name>
              <Point><coordinates><xsl:value-of select="./location/geo/text()" /></coordinates></Point>
          </Placemark>
        </xsl:for-each>
        </Document>
      </kml>
    </xsl:template>

</xsl:stylesheet>
