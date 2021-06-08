<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
<html>
        <body>
            <h1>Table of content</h1>
            <table border="5" cellpadding="5">
                <tr>
                    <th>Όνομα προγράμματος</th>
                    <th>Τιμή για νέο πελάτη</th>
                    <th>Τιμή για παλαιό πελάτη</th>
                    <th>Τιμή για εταιρεία</th>
                </tr>
                <xsl:for-each select="carrier_service/typical_service/programs">
                    <tr>
                        <td>
                            <xsl:value-of select="title"></xsl:value-of>
                        </td>

                        <td>
                            <xsl:choose>
                                <xsl:when test="((prices[@category='new_client']='') or (not(prices[@category='new_client'])))">-</xsl:when>
                                <xsl:otherwise><xsl:value-of select="prices[@category='new_client']"></xsl:value-of></xsl:otherwise>
                            </xsl:choose>
                        </td>

                        <td>
                            <xsl:choose>
                                <xsl:when test="((prices[@category='old_client']='') or (not(prices[@category='old_client'])))">-</xsl:when>
                                <xsl:otherwise><xsl:value-of select="prices[@category='old_client']"></xsl:value-of></xsl:otherwise>
                            </xsl:choose>
                        </td>

                        <td>
                            <xsl:choose>
                                <xsl:when test="((prices[@category='company']='') or (not(prices[@category='company'])))">-</xsl:when>
                                <xsl:otherwise><xsl:value-of select="prices[@category='company']"></xsl:value-of></xsl:otherwise>
                            </xsl:choose>
                        </td>
                    </tr>
                </xsl:for-each>
            </table>
        </body>
</html>
</xsl:template>
</xsl:stylesheet>