<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html> 
<body>
  <h2>Aspectos de campeones</h2>

    <ol>
        <xsl:for-each select="Juego/campeones/campeon">
      <li><xsl:value-of select="nombre"/>  -->      <xsl:value-of select="aspectos"/></li>  
          </xsl:for-each>
    </ol>
    
    <br></br>
    
    <h2>Lista de Objetos ordenados alfabeticamente</h2>
    <ul>
            <xsl:for-each select="Juego/objetos/objeto">
        <xsl:sort case-order="Aa-Zz"/>
    <li><xsl:value-of select="nombreo"/></li>
          </xsl:for-each>
          </ul>
          
          <h2>Tabla de Campeones</h2>
   <table border="1">
    <tr bgcolor="#9acd32">
      <th style="text-align:left">Nombre</th>
      <th style="text-align:left">Clase</th>

      
    </tr>
    <xsl:for-each select="Juego/campeones/campeon">
    <tr>
      <td><xsl:value-of select="nombre"/></td>
      <td><xsl:value-of select="@tipo"/></td>
    </tr>
    </xsl:for-each>
  </table>
  
  <br></br>
  
           <h2>Tabla de Objetos</h2>
   <table border="1">
    <tr bgcolor="#9acd32">
      <th style="text-align:left">Nombre</th>
      <th style="text-align:left">Precio</th>
      <th style="text-align:left">Tipo</th>
      <th style="text-align:left">Valor</th>
      <th style="text-align:left">Receta</th>
    </tr>
    <xsl:for-each select="Juego/objetos/objeto">
    <tr>
      <td><xsl:value-of select="nombreo"/></td>
              <xsl:choose>
              <xsl:when test="precio&gt;2300">
      <td bgcolor="#ff3333"><xsl:value-of select="precio"/></td>
        </xsl:when>
  <xsl:otherwise>
               <xsl:choose>
              <xsl:when test="precio&lt;1500">
      <td bgcolor="#4dff4d"><xsl:value-of select="precio"/></td>
        </xsl:when>
  <xsl:otherwise>
        <td bgcolor="#ff751a"><xsl:value-of select="precio"/></td>
    </xsl:otherwise>
  </xsl:choose>
    </xsl:otherwise>
  </xsl:choose>
        <td><xsl:value-of select="@tipo"/></td>
            <td><xsl:value-of select="valor"/></td>
            <td><xsl:value-of select="receta"/></td>
    </tr>
    </xsl:for-each>
  </table>
  
  
  
  <br></br>
  
      <h2>Caracteristicas especiales de objetos </h2>
    <ul>
            <xsl:for-each select="Juego/objetos/objeto">
        <xsl:sort case-order="Aa-Zz"/>
    <li><xsl:value-of select="nombreo"/>
                  <xsl:choose>
              <xsl:when test="@tipo='ad'">-->  Velocidad: 
     <xsl:value-of select="velocidad"/>
        </xsl:when>
  <xsl:otherwise>
               <xsl:choose>
              <xsl:when test="@tipo='ph'">-->  Daño magico
      <xsl:value-of select="valor"/>
        </xsl:when>
  <xsl:otherwise>
        <xsl:choose>
                    <xsl:when test="@tipo='as'">-->  critico
        <xsl:value-of select="critico"/>%
        </xsl:when>
        <xsl:otherwise>
        
                --> Precio  <xsl:value-of select="precio"/>
        </xsl:otherwise>
        </xsl:choose>
    </xsl:otherwise>
  </xsl:choose>
    </xsl:otherwise>
  </xsl:choose>

    </li>
          </xsl:for-each>
          </ul>
  

</body>
</html>
</xsl:template>
</xsl:stylesheet>
