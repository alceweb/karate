<%@ Page Title="Il nostro palmares" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Palmares.aspx.cs" Inherits="Palmares" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnString %>" SelectCommand="SELECT DISTINCT [Cognome] FROM [Palmares] ORDER BY [Cognome]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnString %>" SelectCommand="SELECT DISTINCT [Nome] FROM [Palmares] WHERE ([Cognome] = @Cognome) ORDER BY [Nome]">
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
                                                <asp:LinkButton CssClass="FloatLeft" ForeColor="White" OnClick="LinkButton1_Click" ID="LinkButton1" runat="server">▲ </asp:LinkButton>
                                                <asp:LinkButton CssClass="FloatLeft" ForeColor="White" ID="LinkButton2" OnClick="LinkButton2_Click" runat="server"> ▼ </asp:LinkButton>
                                                DataGara
                                            </th>
                                            <th runat="server">
                                                <asp:LinkButton CssClass="FloatLeft" ForeColor="White" OnClick="LinkButton3_Click" ID="LinkButton3" runat="server">▲ </asp:LinkButton>
                                                <asp:LinkButton CssClass="FloatLeft" ForeColor="White" OnClick="LinkButton4_Click" ID="LinkButton4" runat="server"> ▼ </asp:LinkButton>
                                                LuogoGara
                                            </th>
                                            <th runat="server">
                                                <asp:LinkButton CssClass="FloatLeft" ForeColor="White" OnClick="LinkButton5_Click" ID="LinkButton5" runat="server">▲ </asp:LinkButton>
                                                <asp:LinkButton CssClass="FloatLeft" ForeColor="White" OnClick="LinkButton6_Click" ID="LinkButton6" runat="server"> ▼ </asp:LinkButton>
                                                Gara
                                            </th>
                                            <th runat="server">
                                                <asp:LinkButton CssClass="FloatLeft" ForeColor="White" OnClick="LinkButton7_Click" ID="LinkButton7" runat="server">▲ </asp:LinkButton>
                                                <asp:LinkButton CssClass="FloatLeft" ForeColor="White" OnClick="LinkButton8_Click" ID="LinkButton8" runat="server"> ▼ </asp:LinkButton>
                                                Classifica
                                            </th>
                                            <th runat="server">
                                                <asp:LinkButton CssClass="FloatLeft" ForeColor="White" OnClick="LinkButton9_Click" ID="LinkButton9" runat="server">▲ </asp:LinkButton>
                                                <asp:LinkButton CssClass="FloatLeft" ForeColor="White" OnClick="LinkButton10_Click" ID="LinkButton10" runat="server"> ▼ </asp:LinkButton>
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
                    SelectCommand="SELECT DISTINCT [Cognome], [Nome], [DataGara], [LuogoGara], [Gara], [Classifica], [Specialità] FROM [Palmares] WHERE (([Cognome] = @Cognome) AND ([Nome] = @Nome)) ORDER BY [DataGara]">
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

