<%@ Page Title="Galleria fotografica" Language="C#" MasterPageFile="~/Riservata/MasterPage.master" AutoEventWireup="true" CodeFile="EventGalleria.aspx.cs" Inherits="Riservata_EventGalleria" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Admin" Runat="Server">
    <h2><%: Title %></h2>
    <div class="FloatLeft tbl1">
    <asp:ListView ID="ListView1" OnSelectedIndexChanged="ListView1_SelectedIndexChanged" EnablePersistedSelection="true" SelectedIndex="0" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1" >
        <ItemSeparatorTemplate></ItemSeparatorTemplate>
        <AlternatingItemTemplate>
            <div style="background-color:#e4e7e9">
            <asp:LinkButton ID="LinkButton1" Font-Underline="false" CssClass="icon icon-search" CommandName="Select" runat="server" ForeColor="#494947">
            <asp:Label ID="DataLabel" Font-Bold="true" Text='<%# Eval("Data", "{0:dd MMM yyyy}") + " - " %>' runat="server" ></asp:Label>
            <asp:Label ID="TitoloLabelx" runat="server" Text='<%# Eval("Titolo") %>' />
            </asp:LinkButton>
            </div>
        </AlternatingItemTemplate>
        <ItemTemplate>
            <div>
            <asp:LinkButton ID="LinkButton1" Font-Underline="false" CssClass="icon icon-search" CommandName="Select" runat="server" ForeColor="#494947">
            <asp:Label ID="DataLabel" Font-Bold="true" Text='<%# Eval("Data", "{0:dd MMM yyyy}") + " - " %>' runat="server" ></asp:Label>
            <asp:Label ID="TitoloLabelx" runat="server" Text='<%# Eval("Titolo") %>' />
            </asp:LinkButton>
            </div>
        </ItemTemplate>
        <SelectedItemTemplate>
            <div style="background-color:#000">
                <asp:Label ID="IdLabel" ForeColor="#628a81" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
            <asp:Label ID="DataLabel" Font-Bold="true" ForeColor="White" Text='<%# Eval("Data", "{0:dd MMM yyyy}") + " - " %>' runat="server" ></asp:Label>
            <asp:Label ID="TitoloLabel" runat="server" ForeColor="White" Text='<%# Eval("Titolo") %>' />
            </div>
        </SelectedItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnString %>" 
        SelectCommand="SELECT * FROM [Eventi] ORDER BY [Data] DESC">
    </asp:SqlDataSource>
    </div>
    <div class="FloatLeft tbl1">
        <h3>Immagini repeater: <asp:FileUpload ID="FileUpload1" AllowMultiple="True" runat="server" />
        <asp:Button ID="btnDownload" OnClick="btnDownload_Click" runat="server" Text="Download" /></h3>
        <asp:Label ID="Label2" runat="server" Text="Formato nome: Id_nomefile"></asp:Label>
        <asp:Label ID="LblUploadOk" CssClass="icon icon-key" Visible="false" runat="server"></asp:Label><hr />
        <asp:Repeater ID="lista" runat="server" EnableTheming="False">
            <HeaderTemplate>
                <div>
                </div>
            </HeaderTemplate>
            <ItemTemplate>
                <img style="margin: 5px; height: 60px; float: left" src='../<%# (Container.DataItem as string).Substring(Server.MapPath("~/").Length).Replace("\\", "/") %>' />
            </ItemTemplate>
            <FooterTemplate></ul></FooterTemplate>
        </asp:Repeater>
    </div>
    <div class="FloatLeft tbl1">
        <h3>Immagini galleria: <asp:FileUpload ID="FileUpload2" AllowMultiple="True" runat="server" />
        <asp:Button ID="btnDownload2" OnClick="btnDownload2_Click" runat="server" Text="Download" /></h3>
        <asp:Label ID="Label1" runat="server" Text="Formato nome: Id-nomefile"></asp:Label>
        <asp:Label ID="LblUploadOk2" CssClass="icon icon-key" Visible="false" runat="server"></asp:Label><hr />
        <asp:Repeater ID="lista2" runat="server" EnableTheming="False">
            <HeaderTemplate>
                <div>
                </div>
            </HeaderTemplate>
            <ItemTemplate>
                <img style="margin: 5px; height: 60px; float: left" src='../<%# (Container.DataItem as string).Substring(Server.MapPath("~/").Length).Replace("\\", "/") %>' />
            </ItemTemplate>
            <FooterTemplate></ul></FooterTemplate>
        </asp:Repeater>
    </div>
</asp:Content>

