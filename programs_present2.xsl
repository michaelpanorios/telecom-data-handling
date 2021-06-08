<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">

<html>
    <body>
        <h1>Table of filtered programs</h1>
        <table border="5" cellpadding="5">
            <tr>
                <th>Ονόματα προγραμμάτων κινητής τηλεφωνίας</th>
                <th>Τιμή δευτερεύουσας κατηγορίας</th>
            </tr>
            <xsl:for-each select="carrier_service/typical_service/programs[title[@category_name='mobile']]">
                <xsl:sort select="title"></xsl:sort>
                <tr>
                    <td>
                        <xsl:value-of select="title"></xsl:value-of>
                    </td>
                    <td>
                        <xsl:value-of select="mobile/@choice_mobile"></xsl:value-of>
                    </td>
                </tr>
            </xsl:for-each>

        </table>
    </body>
</html>

</xsl:template>
</xsl:stylesheet>