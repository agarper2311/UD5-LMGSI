<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h1>Libros con precio superior a 10 € del autor 'Autor Nuevo'</h1>
                <table border="1">
                    <tr>
                        <th>Título</th>
                        <th>Autor</th>
                        <th>Precio</th>
                    </tr>
                    <!-- Seleccionamos solo los libros cuyo precio sea mayor a 10 y el autor sea 'Autor Nuevo' -->
                    <xsl:for-each select="libreria/libro[precio > 10 and autor='Autor Nuevo']">
                        <xsl:sort select="precio" data-type="number" order="ascending"/>
                        <tr>
                            <td><xsl:value-of select="titulo"/></td>
                            <td><xsl:value-of select="autor"/></td>
                            <td><xsl:value-of select="precio"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
