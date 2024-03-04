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
                        <th>Número de Páginas</th>
                    </tr>
                    <xsl:for-each select="libreria/libro">
                        <tr>
                            <td><xsl:value-of select="isbn"/></td>
                            <td><xsl:value-of select="titulo"/></td>
                            <td><xsl:value-of select="autor"/></td>
                            <td><xsl:value-of select="editor"/></td>
                            <td><xsl:value-of select="precio"/></td>
                            <td>
                                <xsl:attribute name="style">
                                    <xsl:if test="numPaginas > 150">color:red;</xsl:if>
                                </xsl:attribute>
                                <xsl:value-of select="numPaginas"/>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
