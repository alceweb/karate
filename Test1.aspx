<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Test1.aspx.cs" Inherits="Test1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<%--<link href="Content/normalize.css" rel="stylesheet" />--%>
<%--<link href="Content/demo.css" rel="stylesheet" />--%>
<link href="Content/icons.css" rel="stylesheet" />
<link href="Content/component.css" rel="stylesheet" />
<script src="Scripts/modernizr.custom.js"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" Runat="Server">
<a runat="server" href="http://f1d3i.s87.it/documenti/customforms/3/subemail_it.html">Iscriviti</a>
    <asp:Button ID="Button1" OnClientClick="window.open(http://f1d3i.s87.it/documenti/customforms/3/subemail_it.html)" style="background:#fff;font-weight:bold;font-size:18px;text-align:center;vertical-align:middle;cursor:pointer;display:inline-block;padding:10px 16px; line-height: 22px; font-family: sans-serif; box-shadow: none; border-radius:6px;border:1px solid #ccc;box-shadow:none" runat="server" Text="Button" />

</asp:Content>

