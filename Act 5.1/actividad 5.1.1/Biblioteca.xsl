<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <!-- Cambiar el título a "Mi biblioteca Personal"-->
                <h1>Mi biblioteca Personal</h1>
                <table>
                    <!-- Cambiar el color de la tabla color original #887788-->
                    <tr bgcolor="#00ffff">
                        <!-- Añadir Título para el ISBN-->
                        <th>ISBN</th>
                        <th>Titulo</th>
                        <th>Autor</th>
                        <!-- Añadir Título para el precio-->
                        <th>Precio</th>
                    </tr>
                    <xsl:for-each select="libreria/libro">
                        <tr>
                            <!-- Añadir columna para mostrar el ISBN-->
                            <td><xsl:value-of select="isbn"/></td>
                            <td><xsl:value-of select="titulo"/></td>
                            <td><xsl:value-of select="autor"/></td>
                            <!-- Añadir una columna para el precio-->
                            <td><xsl:value-of select="precio"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
