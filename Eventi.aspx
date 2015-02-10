<%@ Page Title="Vita della palestra" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Eventi.aspx.cs" Inherits="Eventi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" Runat="Server">
    <h1><%: Title %></h1><hr />
    <div class="div4">
    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
        <ItemSeparatorTemplate></ItemSeparatorTemplate>
        <ItemTemplate>
        <div>
            <a href='<%# "~/Evento.aspx?id=" + Eval("Id") %>' runat="server"><asp:Image ID="Image1" ImageUrl='<%# "~/Immagini/Eventi/" + Eval("Id") + "/" + Eval("Id") + ".jpg" %>' runat="server" /></a>
            <asp:Label ID="DataLabel" Font-Bold="true" runat="server" Text='<%# Eval("Data", "{0:dd MMM yyyy}" )%>'></asp:Label><br />
            <h2><asp:Label ID="TitoloLabel" runat="server" Text='<%# Eval("Titolo") %>'></asp:Label></h2>
        </div><hr />
        </ItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnString %>" SelectCommand="SELECT * FROM [Eventi] WHERE ([Galleria] = @Galleria) ORDER BY [Data] DESC">
        <SelectParameters>
            <asp:Parameter DefaultValue="true" Name="Galleria" Type="Boolean" />
        </SelectParameters>
    </asp:SqlDataSource>
    </div>
</asp:Content>

