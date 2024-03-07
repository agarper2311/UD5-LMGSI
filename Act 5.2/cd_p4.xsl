<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html>
        <body>
            <h1>Canciones con Duracion Inferior a 4:00</h1>
            <table border="1">
                <tr bgcolor="#887788">
                    <th>Artista</th>
                    <th>Título del Album</th>
                    <th>Canción</th>
                </tr>
                <xsl:for-each select="catalogo/cd/canciones/cancion[@tiempo &lt; '4:00']">
                    <xsl:variable name="parentCd" select="ancestor::cd"/>
                    <tr>
                        <td><xsl:value-of select="$parentCd/artista"/></td>
                        <td><xsl:value-of select="$parentCd/tituloAlbum"/></td>
                        <td>
                            <xsl:value-of select="."/>
                            <xsl:text> (</xsl:text>
                            <xsl:value-of select="@tiempo"/>
                            <xsl:text>)</xsl:text>
                        </td>
                    </tr>
                </xsl:for-each>
            </table>
        </body>
    </html>
</xsl:template>
</xsl:stylesheet>
