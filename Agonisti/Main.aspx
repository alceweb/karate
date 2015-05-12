<%@ Page Title="Pagina riservata agonisti" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Main.aspx.cs" Inherits="Protetta_Main" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" Runat="Server">
    <h1><%: Title %></h1><hr />
    <div class="naviAgo" >
        <ul>
            <li >
    <a href="Filmati.aspx" runat="server">Allenamento di sabato 14 febbraio 2015</a>

            </li>
            <li>
        <a href="Regionali.aspx" runat="server">Iscrizioni regionali 2015</a>

            </li>
        </ul>
    </div>
</asp:Content>

