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
                        <xsl:sort select="price" />
                        <tr>
                            <td><xsl:value-of select="@country" /></td>
                            <td><xsl:value-of select="title" /></td>
                            <td><xsl:value-of select="artist" /></td>
                            <td><xsl:value-of select="price" /></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>