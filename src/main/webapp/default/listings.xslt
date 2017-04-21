<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<head>
				<title>
					Sample Directory Listing For <xsl:apply-templates select="listing" />
				</title>
				<style>
					h1{color : white;background-color : #0086b2;}
					h3{color : white;background-color : #0086b2;}
					body{font-family : sans-serif,Arial,Tahoma;
					color : black;background-color : white;}
					b{color : white;background-color : #0086b2;}
					a{color : black;} HR{color : #0086b2;}
				</style>
			</head>
			<body>
				<h1>
					Sample Directory Listing For
					<xsl:apply-templates select="listing" />
				</h1>
				<hr size="1" />
				<table cellspacing="0" width="100%" cellpadding="5" align="center">
					<tr>
						<th align="left">Filename</th>
						<th align="center">Size</th>
						<th align="right">Last Modified</th>
					</tr>
					<xsl:apply-templates select="listing/entries" />
				</table>
				<xsl:apply-templates select="listing/readme" />
				<hr size="1" />
				<h3>Apache Tomcat/7.0</h3>
			</body>
		</html>
	</xsl:template>

	<xsl:template match="listing">
		<xsl:value-of select="@directory" />
	</xsl:template>

	<xsl:template match="entries">
		<xsl:apply-templates select="entry" />
	</xsl:template>

	<xsl:template match="readme">
		<hr size="1" />
		<pre>
			<xsl:apply-templates />
		</pre>
	</xsl:template>

	<xsl:template match="entry">
		<tr>
			<td align="left">
				<xsl:variable name="urlPath" select="@urlPath" />
				<a href="{$urlPath}">
					<tt>
						<xsl:apply-templates />
					</tt>
				</a>
			</td>
			<td align="right">
				<tt>
					<xsl:value-of select="@size" />
				</tt>
			</td>
			<td align="right">
				<tt>
					<xsl:value-of select="@date" />
				</tt>
			</td>
		</tr>
	</xsl:template>
</xsl:stylesheet>