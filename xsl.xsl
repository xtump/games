<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="text"/>
	<xsl:template match="/">
		[
		<xsl:for-each select="games/game">
			<xsl:sort select="email" order="descending"/>
			{
			"email": "<xsl:value-of select="user/email"/>",
			"server": "<xsl:value-of select="user/server"/>",
                        "hra": "<xsl:value-of select="title"/>",                        
			"id": "<xsl:value-of select="user/@id"/>"
			
			}<xsl:if test="position() != last()">,</xsl:if>
		</xsl:for-each>
		] 
	</xsl:template>

</xsl:stylesheet>