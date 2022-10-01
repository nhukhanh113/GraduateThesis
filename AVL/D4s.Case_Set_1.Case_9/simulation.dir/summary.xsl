<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<!-- ==========================================================================
     General Start Point
============================================================================ -->

<xsl:template match="/">
   <xsl:apply-templates select="summary"/>
</xsl:template>


<!-- ==========================================================================
     Template for Head Lines
============================================================================ -->

<xsl:template match="summary">
   <xsl:for-each select="element">
      <xsl:call-template name="TPL_element"/>
   </xsl:for-each>
</xsl:template>

<!-- ==========================================================================
     Template for Elements 
============================================================================ -->
<xsl:template name="TPL_element">
   <xsl:variable name="isReferenced">
	<xsl:call-template name="TPL_is_element_referenced">
	   <xsl:with-param name="name" select="@name" />
	   <xsl:with-param name="ord"  select="@ord" />
	</xsl:call-template>
   </xsl:variable>
   <xsl:if test="contains($isReferenced, 'yes')=false()">
      <xsl:call-template name="TPL_Write_Element">
	   <xsl:with-param name="name" select="@name" />
	   <xsl:with-param name="ord"  select="@ord" />
	</xsl:call-template>      
   </xsl:if>
</xsl:template>

<!-- ==========================================================================
     Template for checking if an elements is referenced by other elements
============================================================================ -->
<xsl:template name="TPL_is_element_referenced">
<xsl:param name="name"/>
<xsl:param name="ord"/>
<xsl:for-each select="/summary/element">
	<xsl:choose>
	      	<xsl:when test="@name=$name and @ord=$ord">
	      	</xsl:when>
      		<xsl:otherwise>
			<xsl:for-each select="element_ref">
				<xsl:if test="@name=$name and @ord=$ord">
					<result>yes</result>
				</xsl:if>
			</xsl:for-each>
      		</xsl:otherwise>
   	</xsl:choose> 
</xsl:for-each>
</xsl:template>

<!-- ==========================================================================
     Template for getting the short name of elements
============================================================================ -->

<xsl:template name="TPL_Get_Shot_Name">
<xsl:param name="name"/>
   <result><xsl:value-of select="@shortname"/></result>
</xsl:template>

<!-- ==========================================================================
     Template for writing of elements
============================================================================ -->

<xsl:template name="TPL_Write_Element">
<xsl:param name="name"/>
<xsl:param name="ord"/>
      <xsl:call-template name="TPL_Write_Element_Header">
         <xsl:with-param name="name" select="$name" />
         <xsl:with-param name="ord"  select="$ord" />
      </xsl:call-template>
      <table>      
      <xsl:call-template name="TPL_Write_Element_Data">
         <xsl:with-param name="name" select="$name" />
         <xsl:with-param name="ord"  select="$ord" />
         <xsl:with-param name="path" select="''"/>
      </xsl:call-template>      
      </table>      
</xsl:template>

<!-- ==========================================================================
     Template for writing of element header
============================================================================ -->
<xsl:template name="TPL_Write_Element_Header">
<xsl:param name="name"/>
<xsl:param name="ord"/>
   <xsl:variable name="short">
	<xsl:call-template name="TPL_Get_Shot_Name">
	   <xsl:with-param name="name" select="@name" />
	</xsl:call-template>
   </xsl:variable>
  <xsl:choose>
     <xsl:when test="string-length($ord)!=0">
      <h1>
      <xsl:value-of select="$short"/><xsl:value-of select="$ord"/>:<xsl:value-of select="$name"/>_<xsl:value-of select="$ord"/>
      </h1>
     </xsl:when>
     <xsl:otherwise>
      <h1>
      <xsl:value-of select="$short"/><xsl:value-of select="$ord"/>:<xsl:value-of select="$name"/>
      </h1>
     </xsl:otherwise>
  </xsl:choose>
</xsl:template>


<!-- ==========================================================================
     Template for checking of multiple used position strings inside references
============================================================================ -->
<xsl:template name="TPL_is_multiple_position_reference">
<xsl:param name="pos"/>

    <xsl:for-each select="../*">
    
        <xsl:if test="local-name(.)='element_ref' and @name!='PIPE_END'">

	     <xsl:variable name="pos_value">
                  <xsl:variable name="var_pos_dat" select="@position"/>			
                  <xsl:choose>
                     <xsl:when test="string-length($var_pos_dat)!=0"> <xsl:value-of select="@position"/> </xsl:when>
                     <xsl:otherwise></xsl:otherwise>
                  </xsl:choose>
	    </xsl:variable>
            <!-- pos_value contains now the "position"-string or an empty string-->
            
            <xsl:if test="$pos=$pos_value">
                <result>+</result>
            </xsl:if>
        
        </xsl:if>
    </xsl:for-each>
</xsl:template>


<!-- ==========================================================================
     Template for checking of multiple used position strings inside references
============================================================================ -->
<xsl:template name="TPL_multiple_position_reference_path_description">
<xsl:param name="name_child"/>
<xsl:param name="ord_child"/>

	<xsl:for-each select="/summary/element">
	   <xsl:if test="@name=$name_child and @ord=$ord_child">
	      <xsl:for-each select="element_ref">
	          <xsl:if test="@name='PIPE_END'">
	              <xsl:variable name="pe_ord"><xsl:value-of select="@ord"/></xsl:variable>
	              <xsl:for-each select="/summary/element">
	                 <xsl:if test="@name='PIPE_END' and @ord=$pe_ord">
	                     <xsl:for-each select="element_att">
	                         <xsl:if test="@name='PIPE'">
	                             <result>PIPE<xsl:value-of select="@ord"/></result>
	                         </xsl:if>
	                     </xsl:for-each>
	                  </xsl:if>
	              </xsl:for-each>
	          </xsl:if>
	      </xsl:for-each>
	   </xsl:if>
	</xsl:for-each>

</xsl:template>


<!-- ==========================================================================
     Template for writing of element data
============================================================================ -->
<xsl:template name="TPL_Write_Element_Data">
<xsl:param name="name"/>
<xsl:param name="ord"/>
<xsl:param name="path"/>
   <xsl:for-each select="*">
	   <xsl:if test="local-name(.)='dvalue'">
	      <xsl:call-template name="TPL_WRITE_DVALUE">
                 <xsl:with-param name="path" select="$path"/>
	      </xsl:call-template>
	   </xsl:if>
	   <xsl:if test="local-name(.)='ivalue'">
	      <xsl:call-template name="TPL_WRITE_IVALUE">
                 <xsl:with-param name="path" select="$path"/>
	      </xsl:call-template>
	   </xsl:if>
	   <xsl:if test="local-name(.)='svalue'">
	      <xsl:call-template name="TPL_WRITE_SVALUE">
                 <xsl:with-param name="path" select="$path"/>
	      </xsl:call-template>
	   </xsl:if>

	   <xsl:if test="local-name(.)='element_ref'">

	       <xsl:variable name="pos_child_value">
                  <xsl:variable name="var_pos_dat" select="@position"/>			
                  <xsl:choose>
                     <xsl:when test="string-length($var_pos_dat)!=0"> <xsl:value-of select="@position"/> </xsl:when>
                     <xsl:otherwise></xsl:otherwise>
                  </xsl:choose>
	      </xsl:variable>
              <!-- pos_child_value contains now the position string or an empty string-->

              <xsl:variable name="isMultiplePositionReference">
                  <xsl:choose>
                     <xsl:when test="string-length($pos_child_value)!=0">
	                 <xsl:call-template name="TPL_is_multiple_position_reference">
	                     <xsl:with-param name="pos" select="$pos_child_value" />
	                 </xsl:call-template>
                     </xsl:when>
                     <xsl:otherwise></xsl:otherwise>
                  </xsl:choose>
              </xsl:variable>
              <!-- isMultiplePositionReference contains now string which indicates if a position is used multiple times -->

              <xsl:variable name="multiplePositionReferencePathDescription">
                  <xsl:choose>
                     <xsl:when test="string-length($isMultiplePositionReference)>1">
	                 <xsl:call-template name="TPL_multiple_position_reference_path_description">
	                     <xsl:with-param name="name_child"  select="@name" />
	                     <xsl:with-param name="ord_child"   select="@ord" />
	                 </xsl:call-template>
                     </xsl:when>
                     <xsl:otherwise></xsl:otherwise>
                  </xsl:choose>
              </xsl:variable>

	      <xsl:call-template name="TPL_WRITE_ELEMENT_REF">
                 <xsl:with-param name="path" select="$path"/>
	         <xsl:with-param name="name_parent" select="$name" />
	         <xsl:with-param name="ord_parent"  select="$ord" />
	         <xsl:with-param name="name_child"  select="@name" />
	         <xsl:with-param name="ord_child"   select="@ord" />
	         <xsl:with-param name="pos_child">
                    <xsl:variable name="var_pos" select="@position"/>			
                    <xsl:choose>
                       <xsl:when test="string-length($isMultiplePositionReference)>1"> <xsl:value-of select="@position"/>_<xsl:value-of select="$multiplePositionReferencePathDescription"/> </xsl:when>
                       <xsl:when test="string-length($var_pos)!=0"> <xsl:value-of select="@position"/> </xsl:when>
                       <xsl:otherwise></xsl:otherwise>
                    </xsl:choose>
	         </xsl:with-param>
	      </xsl:call-template>      

	   </xsl:if>

   </xsl:for-each>
</xsl:template>


<!-- ==========================================================================
     Template for writing of dvalue
============================================================================ -->
<xsl:template name="TPL_WRITE_DVALUE">
<xsl:param name="path"/>
   <tr>
   <td>
   <xsl:value-of select="@name"/><xsl:value-of select="$path"/>
   </td>
   <td>
   [<xsl:value-of select="@unit"/>]
   </td>
   <td>
   <xsl:value-of select="."/>
   </td>
   </tr>
</xsl:template>

<!-- ==========================================================================
     Template for writing of ivalue
============================================================================ -->
<xsl:template name="TPL_WRITE_IVALUE">
<xsl:param name="path"/>
   <tr>
   <td>
   <xsl:value-of select="@name"/><xsl:value-of select="$path"/>
   </td>
   <td>
   </td>
   <td>
   <xsl:value-of select="."/>
   </td>
   </tr>
</xsl:template>

<!-- ==========================================================================
     Template for writing of svalue
============================================================================ -->
<xsl:template name="TPL_WRITE_SVALUE">
<xsl:param name="path"/>
   <tr>
   <td>
   <xsl:value-of select="@name"/><xsl:value-of select="$path"/>
   </td>
   <td>
   </td>
   <td>
   <xsl:value-of select="."/>
   </td>
   </tr>
</xsl:template>

<!-- ==========================================================================
     Template for Getting attached Pipe Number of a pipe end
============================================================================ -->
<xsl:template name="TPL_Get_Pipe_Attached">
   <xsl:for-each select="element_att">
      <xsl:if test="@name='PIPE'">PIPE_<xsl:value-of select="@ord"/></xsl:if>
   </xsl:for-each>
</xsl:template>

<!-- ==========================================================================
     Template for writing of svalue
============================================================================ -->
<xsl:template name="TPL_WRITE_ELEMENT_REF">
<xsl:param name="path"/>
<xsl:param name="name_parent"/>
<xsl:param name="ord_parent"/>
<xsl:param name="name_child"/>
<xsl:param name="ord_child"/>
<xsl:param name="pos_child" select="''"/>
	<xsl:for-each select="/summary/element">
	   <xsl:if test="@name=$name_child and @ord=$ord_child">
		<xsl:variable name="new_path">
			<xsl:choose>			
				<xsl:when test="$pos_child='' and $name_child='PIPE_END'">
					<xsl:value-of select="$path"/>@<xsl:call-template name="TPL_Get_Pipe_Attached"></xsl:call-template>
				</xsl:when>
				<xsl:when test="$pos_child=''">
					<xsl:value-of select="$path"/>@<xsl:call-template name="TPL_Get_Shot_Name"><xsl:with-param name="name" select="$name_child" /></xsl:call-template><xsl:value-of select="$ord_child"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:value-of select="$path"/>@<xsl:value-of select="$pos_child"/>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:variable>
		<xsl:call-template name="TPL_Write_Element_Data">
                        <xsl:with-param name="path" select="$new_path"/>
			<xsl:with-param name="name" select="@name" />
			<xsl:with-param name="ord"  select="@ord" />
		</xsl:call-template>      
	   </xsl:if>
	</xsl:for-each>
</xsl:template>

<!-- ==========================================================================
     END OF STYLE SHEET
============================================================================ -->
</xsl:stylesheet>
