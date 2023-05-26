<?xml version="1.0"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h2>A CD catalog</h2>
                <table border="1">
                    <tr>
                        <th>Country</th>
                        <th>Title</th>
                        <th>Artist</th>
                        <th>Price</th>
                    </tr>
                    <xsl:for-each select="catalog/cd">
                        <tr>
                            <td><xsl:value-of select="@country" /></td>
                            <td><xsl:value-of select="title" /></td>
                            <td><xsl:value-of select="artist" /></td>
                            <xsl:choose>
                                <xsl:when test="price &gt; 280">
                                    <td bgcolor="red"><xsl:value-of select="price" /></td>
                                </xsl:when>
                                <xsl:when test="price &gt; 180">
                                    <td bgcolor="orange"><xsl:value-of select="price" /></td>
                                </xsl:when>
                                <xsl:otherwise>
                                    <td><xsl:value-of select="price" /></td>
                                </xsl:otherwise>
                            </xsl:choose>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>