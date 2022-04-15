<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="zaznamy">
     <html>
       <head><title>Pokus</title></head>
       <body>
         <h1>Testujeme jestli to funguje</h1>
         <table border="1">
           <tr><td>ID</td><td>Měření °C</td><td>Měření °F</td></tr>
             <xsl:apply-templates/>
         </table>
       </body>
     </html>
 </xsl:template>

<xsl:template match="mereni">
  <xsl:for-each select=".">
    <xsl:sort order="ascending" select="teplota"/>
      <xsl:if test="teplota &gt;1" >
        <tr>
          <td><xsl:value-of select="./@id" /></td>
          <td><xsl:value-of select="teplota" /> °C</td>
          <td><xsl:value-of select="teplota * 9 div 5 + 32"/> °F</td>
        </tr>
    </xsl:if>
  </xsl:for-each>
</xsl:template>

</xsl:stylesheet>