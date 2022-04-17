<?xml version="1.0" encoding="UTF-8"?>

<!-- XSL soubor-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:template match="herniEvidence">
  <html>
    <head>
      <title>Heni Evidence</title>
    </head>
    <body>
      <table border="1">
        <tr>
          <th>Nazev</th>
          <th>Zanr</th>
          <th>Hodnoceni</th>
          <th>Multiplayer</th>
          <th>Platforma</th>
          <th>Cena</th>
          <th>Datum vydani</th>
          <th>Datum nakupu</th>
          <th>Vyvojar</th>
          <th>Vydavatel</th>
          <th>Specialni hardware</th>
          <th>Jazyk</th>
        </tr>
        <xsl:for-each select="hry">
          <tr>
            <td><xsl:value-of select="nazev"/></td>
            <td><xsl:value-of select="zanr"/></td>
            <td><xsl:value-of select="hodnoceni"/></td>
            <td><xsl:value-of select="multiplayer"/></td>
            <td><xsl:value-of select="platforma"/></td>
            <td><xsl:value-of select="porizovaciCena"/></td>
            <td><xsl:value-of select="datumVydani"/></td>
            <td><xsl:value-of select="datumNakupu"/></td>
            <td><xsl:value-of select="vyvojar"/></td>
            <td><xsl:value-of select="vydavatel"/></td>
            <td><xsl:value-of select="specialniHardware"/></td>
            <td><xsl:value-of select="jazyk"/></td>
          </tr>
        </xsl:for-each>
      </table>
    </body>
  </html>
</xsl:template>

</xsl:stylesheet>