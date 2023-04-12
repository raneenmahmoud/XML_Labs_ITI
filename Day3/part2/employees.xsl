<?xml version="1.0"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
    <h2>My Employees</h2>
    <table border="1">
      <tr bgcolor="#569DAA">
        <th rowspan="2">Name</th>
        <th rowspan="2">Phone</th>
        <th colspan="5">Address</th>
        <th rowspan="2">Email</th>

      </tr>
      <tr bgcolor="#569DAA">
        <th>Country</th>
        <th>City</th>
        <th>Region</th>
        <th>Buliding Number</th>
        <th>Street</th>

      </tr>
      <xsl:for-each select="Employees/Employee">
        <tr>
          <td><xsl:value-of select="Name"/></td>
          <td><xsl:value-of select="Phones/Phone"/></td>
          <td><xsl:value-of select="Addresses/Address/Country"/></td>
          <td><xsl:value-of select="Addresses/Address/City"/></td>
          <td><xsl:value-of select="Addresses/Address/Region"/></td>
          <td><xsl:value-of select="Addresses/Address/BuildingNumber"/></td>
          <td><xsl:value-of select="Addresses/Address/Street"/></td>
          <td><xsl:value-of select="Email"/></td>

        </tr>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>