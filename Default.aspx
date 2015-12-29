<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" Culture="auto" UICulture="auto" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Content/colorbox.css" rel="stylesheet" />
    <script src="Scripts/jquery-2.1.1.min.js"></script>
    <script src="Scripts/jquery.colorbox.js"></script>
    </asp:Content>
<asp:Content ID="ContentSpash" ContentPlaceHolderID="Spash" runat="server">
    <asp:Panel ID="Panel1" runat="server" Visible="true">
            <asp:ListView ID="ListView2" runat="server" DataSourceID="SqlDataSource2" DataKeyNames="Id">
                <EmptyDataTemplate>
                    <span></span>
                </EmptyDataTemplate>
                <ItemTemplate>
                    <div class="Splash">
                        <img src="Immagini/ScrittaTrasparenteG.png" />
                    <asp:Label ID="TestoLabel" runat="server" Text='<%# Eval("Testo") %>' />
                    <br />
                    <br /></span>
                        <div >

                        </div>
                    </div>
                </ItemTemplate>
                <LayoutTemplate>
                    <div id="itemPlaceholderContainer" class="ContenteSplash" runat="server" style="">
                        <div runat="server" id="itemPlaceholder"/>
                    <div class="SplashFooter">
                        <asp:LinkButton ID="Button1" OnClick="Button1_Click" runat="server" Text="Entra" CssClass="SplashButton" BorderStyle="None" BorderWidth="0"></asp:LinkButton><br /><br />
                    </div>
                    </div>
                </LayoutTemplate>
            </asp:ListView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnString %>" SelectCommand="SELECT * FROM [Splash] where (DataInizio <= { fn NOW() }) AND (DataFine >= { fn NOW() })">
            </asp:SqlDataSource>
    </asp:Panel>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" Runat="Server">
    <div class="div1">
    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="Id">
        <ItemTemplate>
            <div >
            <h3 ><asp:Label ID="TitoloLabel" runat="server" Text='<%# Eval("Titolo") %>' /></h3>
            <asp:Label ID="DataLabel" runat="server" Text='<%# Eval("Data", "{0:dd MMM yyyy}") %>' /><br /><br />
                <span ><a runat="server" href='<%# "Evento.aspx?Id=" + Eval("Id")  %>'>
                    <asp:Image ID="Image1" ImageUrl='<%# "~/Immagini/Eventi/" + Eval("Id") + "/" + Eval("Id") + ".jpg" %>' runat="server" />
                       </a><br /></span>
            </div>
        </ItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnString %>" SelectCommand='SELECT * FROM [Eventi] WHERE ([Pubblica] = 1) ORDER BY [Data] DESC'/>
    </div>
</asp:Content>

