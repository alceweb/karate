<%@ Page Language="C#" AutoEventWireup="true" Debug="true" CodeFile="Test.aspx.cs" Culture="auto" UICulture="auto"  Inherits="Test" %>
<%@ Register
    Assembly="AjaxControlToolkit"
    Namespace="AjaxControlToolkit"
    TagPrefix="ajaxToolkit" %>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0"/> 
		<meta name="description" content="Multi-Level Push Menu: Off-screen navigation with multiple levels" />
		<meta name="keywords" content="multi-level, menu, navigation, off-canvas, off-screen, mobile, levels, nested, transform" />
		<meta name="author" content="Codrops" />
		<link rel="shortcut icon" href="../favicon.ico"/>

<link href="Content/normalize.css" rel="stylesheet" />
<link href="Content/demo.css" rel="stylesheet" />
<link href="Content/icons.css" rel="stylesheet" />
<link href="Content/component.css" rel="stylesheet" />
<script src="Scripts/modernizr.custom.js"></script>

</head>
<body>
    <form id="form1" runat="server">
        <ajaxToolkit:ToolkitScriptManager runat="server" id="ScriptManager2"></ajaxToolkit:ToolkitScriptManager>
       <div>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
           <ajaxToolkit:CalendarExtender ID="CalendarExtender1" TargetControlID="TextBox1" runat="server"></ajaxToolkit:CalendarExtender>
        </div>
    </form>
</body>
</html>
