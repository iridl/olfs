<?xml version="1.0" encoding="ISO-8859-1"?>
<!--
/////////////////////////////////////////////////////////////////////////////
// This file is part of the "OPeNDAP 4 Data Server (aka Hyrax)" project.
//
//
// Copyright (c) 2011 OPeNDAP, Inc.
// Author: Nathan David Potter  <ndp@opendap.org>
//
// This library is free software; you can redistribute it and/or
// modify it under the terms of the GNU Lesser General Public
// License as published by the Free Software Foundation; either
// version 2.1 of the License, or (at your option) any later version.
//
// This library is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
// Lesser General Public License for more details.
//
// You should have received a copy of the GNU Lesser General Public
// License along with this library; if not, write to the Free Software
// Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
//
// You can contact OPeNDAP, Inc. at PO Box 112, Saunderstown, RI. 02874-0112.
/////////////////////////////////////////////////////////////////////////////
-->
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:dap="http://xml.opendap.org/ns/DAP/3.2#"
        >

    <xsl:output method='xml' version='1.0' encoding='UTF-8' indent='yes'/>
    <xsl:key name="AttributeNames" match="dap:Attribute" use="@name" />
    <xsl:key name="embeddedNamespaces" match="dap:Attribute[starts-with(@name,'xmlns:')]" use="substring-after(@name,'xmlns:')" />
    <xsl:strip-space elements="*" />


    <xsl:template match="dap:Attribute">

        <xsl:choose>
            <xsl:when test="key('embeddedNamespaces',substring-before(@name,':'))">
                <xsl:element name="{@name}" namespace="{key('embeddedNamespaces',substring-before(@name,':'))/dap:value}">
                    <xsl:value-of select="dap:value"/>
                </xsl:element>
            </xsl:when>
            <xsl:otherwise>
                <xsl:copy >
                    <xsl:call-template name="textAndattributes" />
                    <xsl:apply-templates />
                </xsl:copy>
            </xsl:otherwise>
        </xsl:choose>
        
    </xsl:template>

    <xsl:template match="*">
        <xsl:copy >
            <xsl:call-template name="textAndattributes" />
            <xsl:apply-templates />
        </xsl:copy>        
    </xsl:template>


    <xsl:template  match="@*|text()" />

    <xsl:template name="textAndattributes" ><xsl:copy-of select="text()|@*" /></xsl:template>

</xsl:stylesheet>
