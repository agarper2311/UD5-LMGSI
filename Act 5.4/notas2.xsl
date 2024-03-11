<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="html" encoding="ISO-8859-1" indent="yes"/>

<xsl:template match="/notas">
    <html>
        <head>
            <title>Notas de Alumnos</title>
            <style type="text/css">
                body { font-family: Arial, sans-serif; }
                h1 { color: #333; }
                .tabla-contenidos { text-align: center; }
                table { border-collapse: collapse; width: 100%; }
                th, td { border: 1px solid #ddd; padding: 8px; }
                th { background-color: #f2f2f2; }
            </style>
        </head>
        <body>
            <div class="tabla-contenidos">
                <h2>Tabla de Contenidos</h2>
                <ul>
                    <xsl:for-each select="alumno">
                        <li><a href="#{matricula}"><xsl:value-of select="nombre"/> <xsl:value-of select="apellidos"/></a></li>
                    </xsl:for-each>
                </ul>
            </div>
            <table>
                <tr>
                    <th>Nombre</th>
                    <th>Apellidos</th>
                    <th>Matricula</th>
                    <th>Convocatoria</th>
                    <th>Cuestionarios</th>
                    <th>Tareas</th>
                    <th>Examen</th>
                    <th>Final</th>
                </tr>
                <xsl:for-each select="alumno">
                    <tr>
                        <td><xsl:value-of select="nombre"/></td>
                        <td><xsl:value-of select="apellidos"/></td>
                        <td><xsl:value-of select="matricula"/></td>
                        <td><xsl:value-of select="@convocatoria"/></td>
                        <td><xsl:value-of select="cuestionarios"/></td>
                        <td><xsl:value-of select="tareas"/></td>
                        <td><xsl:value-of select="examen"/></td>
                        <td><xsl:value-of select="final"/></td>
                    </tr>
                </xsl:for-each>
            </table>
        </body>
    </html>
</xsl:template>
</xsl:stylesheet>