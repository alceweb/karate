<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" Culture="auto" UICulture="auto" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Content/colorbox.css" rel="stylesheet" />
    <script src="Scripts/jquery-2.1.1.min.js"></script>
    <script src="Scripts/jquery.colorbox.js"></script>
    <style type="text/css">
        .auto-style1 {
            width: 1024px;
            height: 577px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" Runat="Server">
    <div class="div1">
    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="Id">
        <ItemTemplate>
            <div >
            <h3 ><asp:Label ID="TitoloLabel" runat="server" Text='<%# Eval("Titolo") %>' /></h3>
            <asp:Label ID="DataLabel" runat="server" Text='<%# Eval("Data", "{0:dd MMM yyyy}") %>' /><br />
                <span style="position:relative; margin-top:-200px" ><a runat="server" href='<%# "Evento.aspx?Id=" + Eval("Id")  %>'><asp:Image ID="Image1" ImageUrl='<%# "~/Immagini/Eventi/" + Eval("Id") + "/" + Eval("Id") + ".jpg" %>' runat="server" /></a><br /></span>
            </div>
        </ItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnString %>" SelectCommand='SELECT * FROM [Eventi] WHERE ([Pubblica] = 1) ORDER BY [Data] DESC'/>
    </div>
</asp:Content>

