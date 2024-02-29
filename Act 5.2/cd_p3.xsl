<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html>
        <body>
            <h1>Canciones del Sello Epic Records</h1>
            <table border="1">
                <tr bgcolor="#887788">
                    <th>Artista</th>
                    <th>Canciones</th>
                </tr>
                <xsl:for-each select="catalogo/cd[sello='Epic Records']">
                    <tr>
                        <td><xsl:value-of select="artista"/></td>
                        <td>
                            <xsl:for-each select="canciones/cancion">
                                <xsl:value-of select="."/>
                                <xsl:text> (</xsl:text>
                                <xsl:value-of select="@tiempo"/>
                                <xsl:text>)</xsl:text>
                                <br/>
                            </xsl:for-each>
                        </td>
                    </tr>
                </xsl:for-each>
            </table>
        </body>
    </html>
</xsl:template>
</xsl:stylesheet>
