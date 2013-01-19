<?xml version="1.0" encoding="UTF-8" ?>
<?oracle-xsl-mapper
  <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="WSDL">
      <schema location="../AutoresService.wsdl"/>
      <rootElement name="listarAutoresResponse" namespace="http://knight.com/estoque/services/AutoresService/v1"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="WSDL">
      <schema location="../AutoresService.wsdl"/>
      <rootElement name="listarAutoresResponse" namespace="http://knight.com/estoque/services/AutoresService/v1"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 11.1.1.6.0(build 111214.0600.1553) AT [MON JAN 07 00:49:23 BRST 2013]. -->
?>
<xsl:stylesheet version="1.0"
                xmlns:estoque="http://knight.com/estoque/domain/v1"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:tns="http://knight.com/estoque/services/AutoresService/v1"
                xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:med="http://schemas.oracle.com/mediator/xpath"
                xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath"
                xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions"
                xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:ns0="http://knight.com/usuarios/domain/v1"
                xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:ora="http://schemas.oracle.com/xpath/extension"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap"
                exclude-result-prefixes="xsi xsl estoque tns xsd ns0 soap wsdl xp20 bpws mhdr bpel oraext dvm hwf med ids bpm xdk xref ora socket ldap">
  <xsl:template match="/">
    <tns:listarAutoresResponse>
      <xsl:for-each select="/tns:listarAutoresResponse/autor">
        <autor>
          <xsl:if test="id">
            <id>
              <xsl:value-of select="id"/>
            </id>
          </xsl:if>
          <dataNascimento>
            <xsl:value-of select="dataNascimento"/>
          </dataNascimento>
          <nome>
            <xsl:value-of select="nome"/>
          </nome>
          <usuario>
            <id>
              <xsl:value-of select="usuario/id"/>
            </id>
            <nome>
              <xsl:value-of select="usuario/nome"/>
            </nome>
            <login>
              <xsl:value-of select="usuario/login"/>
            </login>
            <senha>
              <xsl:value-of select="usuario/senha"/>
            </senha>
          </usuario>
        </autor>
      </xsl:for-each>
    </tns:listarAutoresResponse>
  </xsl:template>
</xsl:stylesheet>
