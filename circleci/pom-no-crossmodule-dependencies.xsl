<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:pom="http://maven.apache.org/POM/4.0.0">
  <xsl:template match="@*|node()">
    <xsl:copy>
      <xsl:apply-templates select="@*|node()"/>
    </xsl:copy>  
  </xsl:template>

  <xsl:template match="pom:dependency[pom:groupId = 'io.zipkin.java']" />
  <xsl:template match="pom:dependency[pom:groupId = '${project.groupId}']" />
</xsl:stylesheet>
