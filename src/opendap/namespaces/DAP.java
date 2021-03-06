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
package opendap.namespaces;

import org.jdom.Namespace;

/**
 * Created by IntelliJ IDEA.
 * User: ndp
 * Date: Jan 12, 2009
 * Time: 12:49:24 PM
 * To change this template use File | Settings | File Templates.
 */
public class DAP {
    public static final String    DAPv32_NAMESPACE_STRING = "http://xml.opendap.org/ns/DAP/3.2#";
    public static final Namespace DAPv32_NS = Namespace.getNamespace("dap",DAPv32_NAMESPACE_STRING);
    public static final String    DAPv32_SCHEMA_LOCATION= "http://xml.opendap.org/dap/dap3.2.xsd";
    
    public static final String    DAPv40_NAMESPACE_STRING = "http://xml.opendap.org/ns/DAP/4.0#";
    public static final Namespace DAPv40_NS = Namespace.getNamespace("dap",DAPv40_NAMESPACE_STRING);
    public static final String    DAPv40_SCHEMA_LOCATION= "http://xml.opendap.org/dap/dap4.0.xsd";


}
