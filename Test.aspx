<%@ Page Language="C#" AutoEventWireup="true" Debug="true" CodeFile="Test.aspx.cs" Culture="auto" UICulture="auto"  Inherits="Test" %>

<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
		<link rel="shortcut icon" href="../favicon.ico"/>
</head>
<body>
    <form id="form1" runat="server">
        <asp:LoginView ID="LoginView1" runat="server">
        </asp:LoginView>
        <asp:LoginStatus ID="LoginStatus1" runat="server" />
        <asp:LoginName ID="LoginName1" runat="server" />
    </form>
</body>
</html>
