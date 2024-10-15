<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XML/Transform" version="1.0">
<xsl:template match='/'>
<html>
<head>
<style>
table{
    border-collapse:collapse;
	width:100%
}
th,tr{
	border:1px solid black;
}
th{
    background-color:grey;
}
</style>
</head>
<body>
<table>
<tr>
<th>name</th>
<th>Id</th>
<th>dept</th>
<th>address</th>
</tr>
<xsl:for-each select="company/employee">
<xsl:sort select="name" order="ascending"/>
<tr>
<td><xsl:value-of select="name"/></td>
<td><xsl:value-of select="id"/></td>
<td><xsl:value-of select="department"/></td>
<td><xsl:value-of select="address"/></td>
</tr>
</xsl:for-each>
</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>