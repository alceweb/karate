<%@ Page Title="Galleria fotografica" Language="C#" MasterPageFile="~/Riservata/MasterPage.master" AutoEventWireup="true" CodeFile="EventGalleria.aspx.cs" Inherits="Riservata_EventGalleria" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Admin" Runat="Server">
    <h2><%: Title %></h2>
    <div class="FloatLeft tbl1">
    <asp:ListView ID="ListView1" runat="server" OnSelectedIndexChanged="ListView1_SelectedIndexChanged" OnSelectedIndexChanging="ListView1_SelectedIndexChanging" DataKeyNames="Id" DataSourceID="SqlDataSource1" SelectedIndex="-1">
        <AlternatingItemTemplate>
            <tr style="background-color: #CFCFCF">
                <td>
                    <asp:LinkButton ID="LinkButton1" CssClass="icon icon-pen" CommandName="Select" runat="server"></asp:LinkButton>
                </td>
                <td>
                    <asp:Label ID="DataLabel" runat="server" Text='<%# Eval("Data", "{0:ddd MMM yyyy}") %>' />
                </td>
                <td>
                    <asp:Label ID="TitoloLabel" runat="server" Text='<%# Eval("Titolo") %>' />
                </td>
            </tr>
        </AlternatingItemTemplate>
        <ItemTemplate>
            <tr style="">
                <td>
                    <asp:LinkButton ID="LinkButton1" CssClass="icon icon-pen" CommandName="Select" runat="server"></asp:LinkButton>
                </td>
                <td>
                    <asp:Label ID="DataLabel" runat="server" Text='<%# Eval("Data", "{0:ddd MMM yyyy}") %>' />
                </td>
                <td>
                    <asp:Label ID="TitoloLabel" runat="server" Text='<%# Eval("Titolo") %>' />
                </td>
            </tr>
        </ItemTemplate>
        <EmptyDataTemplate>
            <table id="Table1" runat="server" style="">
                <tr>
                    <td>Non è stato restituito alcun dato.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <LayoutTemplate>
            <table id="Table2" runat="server">
                <tr id="Tr1" runat="server">
                    <td id="Td1" runat="server">
                        <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                            <tr id="Tr2" runat="server" style="">
                                <th id="Th1" runat="server"></th>
                                <th id="Th2" runat="server">Data</th>
                                <th id="Th3" runat="server">Titolo</th>
                            </tr>
                            <tr id="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr id="Tr3" runat="server">
                    <td id="Td2" runat="server" style="">
                        <asp:DataPager PageSize="10" ID="DataPager1" runat="server">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                            </Fields>
                        </asp:DataPager>
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <tr style="background-color: #000000; color: #FFFFFF">
                <td>
                    <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                </td>
                <td>
                    <asp:Label ID="DataLabel" runat="server" Text='<%# Eval("Data") %>' />
                </td>
                <td>
                    <asp:Label ID="TitoloLabel" runat="server" Text='<%# Eval("Titolo") %>' />
                </td>
            </tr>
        </SelectedItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnString %>" 
        SelectCommand="SELECT * FROM [Eventi] ORDER BY [Data] DESC">
    </asp:SqlDataSource>
    </div>
    <div class="FloatLeft tbl1">
        <h3>Inserisci un nuovo file: <asp:FileUpload ID="FileUpload1" AllowMultiple="true" runat="server" />
        <asp:Button ID="btnDownload" OnClick="btnDownload_Click" runat="server" Text="Download" /></h3>
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
</asp:Content>

