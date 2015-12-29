<%@ Page Title="Il nostro palmares" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Palmares.aspx.cs" Inherits="Palmares" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Content/font-awesome.css" rel="stylesheet" />
    <link href="Content/icons.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" Runat="Server">
            <h1><%: Title %></h1><hr/>
    <table style="margin:auto">
        <tr>
            <th>
                <asp:Label ID="Label1" runat="server" Text="Cognome"></asp:Label>&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Cognome" DataValueField="Cognome"></asp:DropDownList>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server" Text="Nome"></asp:Label>&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Nome" DataValueField="Nome"></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnString %>" 
                    SelectCommand="SELECT DISTINCT [Cognome] FROM [Palmares] ORDER BY [Cognome]">
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnString %>" 
                    SelectCommand="SELECT DISTINCT [Nome] FROM [Palmares] WHERE ([Cognome] = @Cognome) ORDER BY [Nome]">
                <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="Cognome" PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </th>
        </tr>
        <tr>
            <td>
                <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource3">
                    <AlternatingItemTemplate>
                        <tr style="background-color: #B0CBD2">
                            <td>
                                <asp:Label ID="DataGaraLabel" runat="server" Text='<%# Eval("DataGara", "{0:dd MMM yyyy}") %>' />
                            </td>
                            <td>
                                <asp:Label ID="LuogoGaraLabel" runat="server" Text='<%# Eval("LuogoGara") %>' />
                            </td>
                            <td>
                                <asp:Label ID="GaraLabel" runat="server" Text='<%# Eval("Gara") %>' />
                            </td>
                            <td style="text-align: center">
                                <asp:Label ID="ClassificaLabel" runat="server" Text='<%# Eval("Classifica") %>' />
                            </td>
                            <td>
                                <asp:Label ID="SpecialitàLabel" runat="server" Text='<%# Eval("Specialità") %>' />
                            </td>
                        </tr>
                    </AlternatingItemTemplate>
                    <ItemTemplate>
                        <tr style="">
                            <td>
                                <asp:Label ID="DataGaraLabel" runat="server" Text='<%# Eval("DataGara", "{0:dd MMM yyyy}") %>' />
                            </td>
                            <td>
                                <asp:Label ID="LuogoGaraLabel" runat="server" Text='<%# Eval("LuogoGara") %>' />
                            </td>
                            <td>
                                <asp:Label ID="GaraLabel" runat="server" Text='<%# Eval("Gara") %>' />
                            </td>
                            <td style="text-align: center">
                                <asp:Label ID="ClassificaLabel" runat="server" Text='<%# Eval("Classifica") %>' />
                            </td>
                            <td>
                                <asp:Label ID="SpecialitàLabel" runat="server" Text='<%# Eval("Specialità") %>' />
                            </td>
                        </tr>
                    </ItemTemplate>
                    <EmptyDataTemplate>
                        <table runat="server" style="">
                            <tr>
                                <td>Non è stato restituito alcun dato.</td>
                            </tr>
                        </table>
                    </EmptyDataTemplate>
                    <LayoutTemplate>
                        <table runat="server">
                            <tr runat="server">
                                <td runat="server">
                                    <table class="tbl1"  id="itemPlaceholderContainer" runat="server" border="0" style="">
                                        <tr runat="server" style="">
                                            <th runat="server">
                                                  Data  
                                            </th>
                                            <th runat="server">
                                                 Luogo 
                                            </th>
                                            <th runat="server">
                                                 Gara 
                                            </th>
                                            <th runat="server">
                                                 Classifica 
                                            </th>
                                            <th runat="server">
                                                 Specialità 
                                            </th>
                                        </tr>
                                        <tr id="itemPlaceholder" runat="server">
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr runat="server">
                                <td runat="server" style=""></td>
                            </tr>
                        </table>
                    </LayoutTemplate>
                </asp:ListView>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server"
                    ConnectionString="<%$ ConnectionStrings:ConnString %>"
                    SelectCommand="SELECT [Anag$].[Cognome], [Anag$].[Nome], [DataGara], [LuogoGara], [Gara], [Classifica], [Specialità] FROM [Palmares] inner join [Anag$] on [IdAllievo] = [Anag$].[Id] WHERE (([Anag$].[Cognome] = @Cognome) AND ([Anag$].[Nome] = @Nome)) ORDER BY [DataGara] DESC">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="Cognome" PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="DropDownList2" Name="Nome" PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>

            </td>
        </tr>
    </table>
    <p>

    </p>
</asp:Content>

