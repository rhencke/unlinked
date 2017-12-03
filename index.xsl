<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns="http://www.w3.org/1999/xhtml"
	xmlns:i="http://yiff.io/unlinked/index"
	xmlns:a="http://yiff.io/unlinked/appearance">
	<xsl:strip-space elements="*"/>

	<xsl:template match="/i:page">
		<xsl:processing-instruction name="xml-stylesheet">type="text/css" href="normalize.css"</xsl:processing-instruction>
		<xsl:processing-instruction name="xml-stylesheet">type="text/css" href="style.css"</xsl:processing-instruction>
		<html>
			<head>
				<title>LinkedInk</title>
				<script src="/puer/js/reload.js"/>
			</head>
			<body>
				<header>
					<nav>
						<xsl:apply-templates mode="navbar"/>
					</nav>
				</header>
			</body>
		</html>
	</xsl:template>

	<xsl:template mode="navbar" match="i:section">
			<input type="radio" name="nav">
				<xsl:choose>
					<xsl:when test="position()=1">
						<xsl:attribute name="checked">checked</xsl:attribute>
					</xsl:when>
				</xsl:choose>
				<xsl:attribute name="id">
					<xsl:value-of select="generate-id()"/>
				</xsl:attribute>
			</input>
			<label>
				<xsl:attribute name="a:icon">
					<xsl:value-of select="@name"/>
				</xsl:attribute>
				<xsl:attribute name="for">
					<xsl:value-of select="generate-id()"/>
				</xsl:attribute>
				<xsl:value-of select="@name"/>
			</label>
	</xsl:template>

</xsl:stylesheet>
