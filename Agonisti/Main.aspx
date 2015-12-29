<%@ Page Title="Pagina riservata agonisti e allievi" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Main.aspx.cs" Inherits="Protetta_Main" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" Runat="Server">
    <h1><%: Title %></h1><hr />
    <div class="naviAgo" >
        <ul>
            <li>
                <a href="TabellaGare.aspx" runat="server">Tabella gare 2016</a>
            </li>
            <li>
                <a href="23-11-15.aspx" runat="server">Allenamento 23 novembre 2015</a>
            </li>
            <li >
                <a href="Filmati.aspx" runat="server">Agonisti sabato 14 febbraio 2015</a>

            </li>
            <li >
                <a href="13-12-14.aspx" runat="server">Agonisti sabato 13 dicembre 2014</a>

            </li>
            <li >
                <a href="20-05-12.aspx" runat="server">Italiani 2012</a>

            </li>
<%--            <li>
                <a href="Regionali.aspx" runat="server">Iscrizioni regionali 2015</a>

            </li>--%>
        </ul>
    </div>
</asp:Content>

