<?xml version="1.0" encoding="UTF-8"?>

<!-- XSL soubor-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:template match="herniEvidence">
  <html>
    <head>
      <title>Herní evidence</title>
    </head>
    <body>
      <h1>Knihovna her</h1>
      <table border="1">
        <caption>Seznam her podle hodnocení</caption>
        <tr>
          <th>Název</th>
          <th>Žánr</th>
          <th>Hodnocení</th>
          <th>Multiplayer</th>
          <th>Platforma</th>
          <th>Cena</th>
          <th>Datum vydání</th>
          <th>Datum nákupu</th>
          <th>Vývojář</th>
          <th>Vydavatel</th>
          <th>Speciálni hardware</th>
          <th>Jazyk</th>
        </tr>
        <xsl:for-each select="hry">
          <xsl:sort select="hodnoceni" order="descending"/>
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
      <h1>Přehled platform</h1>
      <table border="1">
        <tr>
          <th>Název</th>
          <th>Datum registrace</th>
          <th>Cílové zařízení</th>
          <th>Firma</th>
        </tr>
        <xsl:for-each select="platformy">
          <tr>
            <td><xsl:value-of select="jmeno"/></td>
            <td><xsl:value-of select="datumRegistrace"/></td>
            <td><xsl:value-of select="ciloveZarizeni"/></td>
            <td><xsl:value-of select="firma"/></td>
          </tr>
        </xsl:for-each>
      </table>
    </body>
  </html>
</xsl:template>

</xsl:stylesheet>