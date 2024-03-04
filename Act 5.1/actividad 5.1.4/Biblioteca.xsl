<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h1>Librería</h1>
                <table border="1">
                    <tr>
                        <th>ISBN</th>
                        <th>Título</th>
                        <th>Autor</th>
                        <th>Editor</th>
                        <th>Precio</th>
                    </tr>
                    <xsl:for-each select="libreria/libro">
                        <xsl:choose>
                            <xsl:when test="precio > 25">
                                <tr style="background-color: red;">
                                    <td><xsl:value-of select="isbn"/></td>
                                    <td><xsl:value-of select="titulo"/></td>
                                    <td><xsl:value-of select="autor"/></td>
                                    <td><xsl:value-of select="editor"/></td>
                                    <td><xsl:value-of select="precio"/></td>
                                </tr>
                            </xsl:when>
                            <xsl:otherwise>
                                <tr style="background-color: green;">
                                    <td><xsl:value-of select="isbn"/></td>
                                    <td><xsl:value-of select="titulo"/></td>
                                    <td><xsl:value-of select="autor"/></td>
                                    <td><xsl:value-of select="editor"/></td>
                                    <td><xsl:value-of select="precio"/></td>
                                </tr>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
