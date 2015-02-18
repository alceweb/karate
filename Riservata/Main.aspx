<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Main.aspx.cs" Inherits="Riservata_Main" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" Runat="Server">
    <asp:Panel ID="PanelAgonista" runat="server">Ciao,<asp:LoginName ID="LoginName1" runat="server" />, sei loggato come agonista</asp:Panel>
    <asp:Panel ID="PanelAdmin" runat="server">Ciao,<asp:LoginName ID="LoginName2" runat="server" />, sei loggato come amministratore</asp:Panel>
    <asp:LoginStatus ID="LoginStatus1" runat="server"  LogoutPageUrl="~/Default.aspx" />
</asp:Content>

