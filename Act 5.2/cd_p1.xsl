<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html>
        <body>
            <h1>Catálogo de CDs</h1>
            <table border="1">
                <tr bgcolor="#887788">
                    <th>Título del Album</th>
                    <th>Artista</th>
                    <th>Canciones y Duración</th>
                    <th>Sello Discográfico</th>
                    <th>Año de Publicación</th>
                </tr>
                <xsl:for-each select="catalogo/cd">
                    <tr>
                        <td><xsl:value-of select="tituloAlbum"/></td>
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
                        <td><xsl:value-of select="sello"/></td>
                        <td><xsl:value-of select="anio"/></td>
                    </tr>
                </xsl:for-each>
            </table>
        </body>
    </html>
</xsl:template>
</xsl:stylesheet>
