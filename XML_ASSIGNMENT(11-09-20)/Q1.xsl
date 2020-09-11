<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html> 
<body>
  <table>
    <tr>
      <th style="text-align:left">Region</th>
      <th style="text-align:left">Location</th>
      <th style="text-align:left">Feature type</th>
      <th style="text-align:left">ROV Dives</th>
      <th style="text-align:left">Area Covered (ha)</th>
      <th style="text-align:left">Depth range surveyed(m)</th>
      <th style="text-align:left">Distance from land(km)</th>
      <th style="text-align:left">Shipping activity proxy</th>
      <th style="text-align:left">Items (ha -1)</th>
    </tr>
    <xsl:for-each select="survey/isro">
    <tr>
      <td><xsl:value-of select="region"/></td>
      <td><xsl:value-of select="location"/></td>
      <td><xsl:value-of select="feature_type"/></td>
      <td><xsl:value-of select="rov_dives"/></td>
      <xsl:choose>
      <xsl:when test="area_cover > 2.0">
         <td bgcolor="#9acd32">
         <xsl:value-of select="area_cover"/>
         </td>
      </xsl:when>
      <xsl:otherwise>
         <td><xsl:value-of select="area_cover"/></td>
      </xsl:otherwise>
      </xsl:choose>
      <td><xsl:value-of select="depth"/></td>
      <td><xsl:value-of select="dist_land"/></td>
      <td><xsl:value-of select="shipping"/></td>
      <td><xsl:value-of select="items"/></td>
    </tr>
    </xsl:for-each>
  </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>

