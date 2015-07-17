<%@ Page Language="C#" AutoEventWireup="true" Debug="true" CodeFile="Test.aspx.cs" Culture="auto" UICulture="auto"  Inherits="Test" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Test</title>
		<link rel="shortcut icon" href="../favicon.ico"/>
</head>
<body>
    <form id="form1" runat="server">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
        <asp:Button ID="Button1" runat="server" Text="Default" OnClick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" Text="Palestra" OnClick="Button2_Click" />
        <asp:Button ID="Button3" runat="server" Text="Button" OnClick="Button3_Click" />
        <asp:Button ID="Button4" runat="server" Text="Button" OnClick="Button4_Click" />
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True"></asp:DropDownList>
    <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1" Palette="None" BackGradientStyle="Center" BackColor="204, 193, 186" BackImageTransparentColor="White" BackImageWrapMode="Scaled">
        <Series>
            <asp:Series Name="Series1" XValueMember='Pagina' YValueMembers="Numero" XAxisType="Primary" IsXValueIndexed="True" XValueType="Auto" IsValueShownAsLabel="False" YValuesPerPoint="1" BackImageWrapMode="Tile" Enabled="True" ShadowOffset="5">
            </asp:Series>
        </Series>
        <ChartAreas>
            <asp:ChartArea Name="ChartArea1" Area3DStyle-Enable3D="False" BackGradientStyle="Center" IsSameFontSizeForAllAxes="True" BackColor="#CCC1BA"></asp:ChartArea>
        </ChartAreas>
        <Titles>
            <asp:Title Name="Titolo" Text="Trend invio preghiere per mese">
            </asp:Title>
        </Titles>
    </asp:Chart>

        <asp:ListView ID="ListView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource2">
            <AlternatingItemTemplate>
                <tr style="">
                    <td>
                        <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                    </td>
                    <td>
                        <asp:Label ID="NumeroLabel" runat="server" Text='<%# Eval("Numero") %>' />
                    </td>
                    <td>
                        <asp:Label ID="PaginaLabel" runat="server" Text='<%# Eval("Pagina") %>' />
                    </td>
                    <td>
                        <asp:Label ID="DataLabel" runat="server" Text='<%# Eval("Data") %>' />
                    </td>
                </tr>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Aggiorna" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Annulla" />
                    </td>
                    <td>
                        <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="NumeroTextBox" runat="server" Text='<%# Bind("Numero") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="PaginaTextBox" runat="server" Text='<%# Bind("Pagina") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="DataTextBox" runat="server" Text='<%# Bind("Data") %>' />
                    </td>
                </tr>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="">
                    <tr>
                        <td>Non è stato restituito alcun dato.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Inserisci" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancella" />
                    </td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:TextBox ID="NumeroTextBox" runat="server" Text='<%# Bind("Numero") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="PaginaTextBox" runat="server" Text='<%# Bind("Pagina") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="DataTextBox" runat="server" Text='<%# Bind("Data") %>' />
                    </td>
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr style="">
                    <td>
                        <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                    </td>
                    <td>
                        <asp:Label ID="NumeroLabel" runat="server" Text='<%# Eval("Numero") %>' />
                    </td>
                    <td>
                        <asp:Label ID="PaginaLabel" runat="server" Text='<%# Eval("Pagina") %>' />
                    </td>
                    <td>
                        <asp:Label ID="DataLabel" runat="server" Text='<%# Eval("Data") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                <tr runat="server" style="">
                                    <th runat="server">Id</th>
                                    <th runat="server">Numero</th>
                                    <th runat="server">Pagina</th>
                                    <th runat="server">Data</th>
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
            <SelectedItemTemplate>
                <tr style="">
                    <td>
                        <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                    </td>
                    <td>
                        <asp:Label ID="NumeroLabel" runat="server" Text='<%# Eval("Numero") %>' />
                    </td>
                    <td>
                        <asp:Label ID="PaginaLabel" runat="server" Text='<%# Eval("Pagina") %>' />
                    </td>
                    <td>
                        <asp:Label ID="DataLabel" runat="server" Text='<%# Eval("Data") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnString %>" SelectCommand="SELECT * FROM [StaPage]"></asp:SqlDataSource>

    </form>
</body>
</html>
