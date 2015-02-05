<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Test1.aspx.cs" Inherits="Test1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<%--<link href="Content/normalize.css" rel="stylesheet" />--%>
<%--<link href="Content/demo.css" rel="stylesheet" />--%>
<link href="Content/icons.css" rel="stylesheet" />
<link href="Content/component.css" rel="stylesheet" />
<script src="Scripts/modernizr.custom.js"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" Runat="Server">
    <asp:ListView ID="lista" runat="server" >
                            <ItemTemplate>
                                <span class="galla">
                                <a class="group1" href="<%# (Container.DataItem as string).Substring(Server.MapPath("./").Length).Replace("\\", "/") %>">
                                    <img style="border: thin solid #9C9C9C; margin: 8px;" src="<%# (Container.DataItem as string).Substring(Server.MapPath("./").Length).Replace("\\", "/") %>" />
                                </a>

                                </span>

                            </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                            <tr runat="server" style="">
                            </tr>
                            <tr id="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style="">
                        <asp:DataPager ID="DataPager1" runat="server" PageSize="10">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="False" ShowLastPageButton="False" ShowNextPageButton="False" ShowPreviousPageButton="False" Visible="False" />
                            </Fields>
                        </asp:DataPager>
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnString %>" SelectCommand="SELECT * FROM [Eventi]"></asp:SqlDataSource>
</asp:Content>

