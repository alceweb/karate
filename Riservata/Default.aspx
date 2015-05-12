<%@ Page Title="" Language="C#" MasterPageFile="~/Riservata/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Riservata_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Admin" Runat="Server">
<div class="FloatLeft" >
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1">
        <EmptyDataTemplate>
            <span>Non è stato restituito alcun dato.</span>
        </EmptyDataTemplate>
        <ItemTemplate>
            <span style="">
                <asp:LinkButton ID="LinkButton1" runat="server" CommandName="select">
            <asp:Label ID="CognomeLabel" runat="server" Text='<%# Eval("Cognome") %>' />
            <asp:Label ID="NomeLabel" runat="server" Text='<%# " " + Eval("Nome") %>' />

                </asp:LinkButton><br /></span></ItemTemplate><LayoutTemplate>
            <div id="itemPlaceholderContainer" runat="server" style="">
                <span runat="server" id="itemPlaceholder" />
            </div><hr />
            <div style="">
                <asp:DataPager ID="DataPager1" runat="server">
                    <Fields>
                        <asp:NextPreviousPagerField ButtonType="Link" ShowFirstPageButton="True" ShowLastPageButton="True" />
                    </Fields>
                </asp:DataPager>
            </div>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <div style="background-color: #000000; color: #FFFFFF">
                <asp:LinkButton ID="LinkButton1" ForeColor="white" runat="server" CommandName="select">
            <asp:Label ID="CognomeLabel" runat="server" Text='<%# Eval("Cognome") %>' />
            <asp:Label ID="NomeLabel" runat="server" Text='<%# Eval("Nome") %>' />

                </asp:LinkButton><br /></div></SelectedItemTemplate></asp:ListView><asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnString %>" SelectCommand="SELECT * FROM [Anag$] ORDER BY [Cognome], [Nome]"></asp:SqlDataSource>
</div>
    <div>
        <asp:ListView ID="ListView2" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource2" InsertItemPosition="FirstItem">
            <AlternatingItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Elimina" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Modifica" />

                    </td>
                    <td>
                        <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />

                    </td>
                    <td>
                        <asp:Label ID="IdAllievoLabel" runat="server" Text='<%# Eval("IdAllievo") %>' /></td>
                    <td>
                        <asp:Label ID="DataGaraLabel" runat="server" Text='<%# Eval("DataGara") %>' /></td>
                    <td>
                        <asp:Label ID="LuogoGaraLabel" runat="server" Text='<%# Eval("LuogoGara") %>' /></td>
                    <td>
                        <asp:Label ID="GaraLabel" runat="server" Text='<%# Eval("Gara") %>' /></td>
                    <td>
                        <asp:Label ID="ClassificaLabel" runat="server" Text='<%# Eval("Classifica") %>' /></td>
                    <td>
                        <asp:Label ID="SpecialitàLabel" runat="server" Text='<%# Eval("Specialità") %>' /></td>
                    <td>
                        <asp:Label ID="NTesseraFIKTALabel" runat="server" Text='<%# Eval("NTesseraFIKTA") %>' /></td>
                </tr>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Aggiorna" /><asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Annulla" /></td>
                    <td>
                        <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' /></td>
                    <td>
                        <asp:TextBox ID="IdAllievoTextBox" runat="server" Text='<%# Bind("IdAllievo") %>' /></td>
                    <td>
                        <asp:TextBox ID="DataGaraTextBox" runat="server" Text='<%# Bind("DataGara") %>' /></td>
                    <td>
                        <asp:TextBox ID="LuogoGaraTextBox" runat="server" Text='<%# Bind("LuogoGara") %>' /></td>
                    <td>
                        <asp:TextBox ID="GaraTextBox" runat="server" Text='<%# Bind("Gara") %>' /></td>
                    <td>
                        <asp:TextBox ID="ClassificaTextBox" runat="server" Text='<%# Bind("Classifica") %>' /></td>
                    <td>
                        <asp:TextBox ID="SpecialitàTextBox" runat="server" Text='<%# Bind("Specialità") %>' /></td>
                    <td>
                        <asp:TextBox ID="NTesseraFIKTATextBox" runat="server" Text='<%# Bind("NTesseraFIKTA") %>' /></td>
                </tr>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table id="Table1" runat="server" style="">
                    <tr>
                        <td>Non è stato restituito alcun dato.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Inserisci" /><asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancella" /></td>
                    <td>
                        <asp:TextBox ID="IdTextBox" runat="server" Text='<%# Bind("Id") %>' /></td>
                    <td>
                        <asp:TextBox ID="IdAllievoTextBox" runat="server" Text='<%# Bind("IdAllievo") %>' /></td>
                    <td>
                        <asp:TextBox ID="DataGaraTextBox" runat="server" Text='<%# Bind("DataGara") %>' /></td>
                    <td>
                        <asp:TextBox ID="LuogoGaraTextBox" runat="server" Text='<%# Bind("LuogoGara") %>' /></td>
                    <td>
                        <asp:TextBox ID="GaraTextBox" runat="server" Text='<%# Bind("Gara") %>' /></td>
                    <td>
                        <asp:TextBox ID="ClassificaTextBox" runat="server" Text='<%# Bind("Classifica") %>' /></td>
                    <td>
                        <asp:TextBox ID="SpecialitàTextBox" runat="server" Text='<%# Bind("Specialità") %>' /></td>
                    <td>
                        <asp:TextBox ID="NTesseraFIKTATextBox" runat="server" Text='<%# Bind("NTesseraFIKTA") %>' /></td>
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Elimina" /><asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Modifica" /></td>
                    <td>
                        <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' /></td>
                    <td>
                        <asp:Label ID="IdAllievoLabel" runat="server" Text='<%# Eval("IdAllievo") %>' /></td>
                    <td>
                        <asp:Label ID="DataGaraLabel" runat="server" Text='<%# Eval("DataGara") %>' /></td>
                    <td>
                        <asp:Label ID="LuogoGaraLabel" runat="server" Text='<%# Eval("LuogoGara") %>' /></td>
                    <td>
                        <asp:Label ID="GaraLabel" runat="server" Text='<%# Eval("Gara") %>' /></td>
                    <td>
                        <asp:Label ID="ClassificaLabel" runat="server" Text='<%# Eval("Classifica") %>' /></td>
                    <td>
                        <asp:Label ID="SpecialitàLabel" runat="server" Text='<%# Eval("Specialità") %>' /></td>
                    <td>
                        <asp:Label ID="NTesseraFIKTALabel" runat="server" Text='<%# Eval("NTesseraFIKTA") %>' /></td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table id="Table2" runat="server">
                    <tr id="Tr1" runat="server">
                        <td id="Td1" runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                <tr id="Tr2" runat="server" style="">
                                    <th id="Th1" runat="server"></th>
                                    <th id="Th2" runat="server">Id</th>
                                    <th id="Th3" runat="server">IdAllievo</th>
                                    <th id="Th4" runat="server">DataGara</th>
                                    <th id="Th5" runat="server">LuogoGara</th>
                                    <th id="Th6" runat="server">Gara</th>
                                    <th id="Th7" runat="server">Classifica</th>
                                    <th id="Th8" runat="server">Specialità</th>
                                    <th id="Th9" runat="server">NTesseraFIKTA</th>
                                </tr>
                                <tr id="itemPlaceholder" runat="server"></tr>
                            </table>
                        </td>
                    </tr>
                    <tr id="Tr3" runat="server">
                        <td id="Td2" runat="server" style="">
                            <asp:DataPager ID="DataPager1" runat="server">
                                <Fields>
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                </Fields>
                            </asp:DataPager>
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
        </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnString %>" DeleteCommand="DELETE FROM [Palmares] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Palmares] ([Id], [IdAllievo], [DataGara], [LuogoGara], [Gara], [Classifica], [Specialità], [NTesseraFIKTA]) VALUES (@Id, @IdAllievo, @DataGara, @LuogoGara, @Gara, @Classifica, @Specialità, @NTesseraFIKTA)" SelectCommand="SELECT * FROM [Palmares] WHERE ([IdAllievo] = @IdAllievo)" UpdateCommand="UPDATE [Palmares] SET [IdAllievo] = @IdAllievo, [DataGara] = @DataGara, [LuogoGara] = @LuogoGara, [Gara] = @Gara, [Classifica] = @Classifica, [Specialità] = @Specialità, [NTesseraFIKTA] = @NTesseraFIKTA WHERE [Id] = @Id"><DeleteParameters><asp:Parameter Name="Id" Type="Int32" /></DeleteParameters><InsertParameters><asp:Parameter Name="Id" Type="Int32" /><asp:Parameter Name="IdAllievo" Type="Int32" /><asp:Parameter Name="DataGara" Type="DateTime" /><asp:Parameter Name="LuogoGara" Type="String" /><asp:Parameter Name="Gara" Type="String" /><asp:Parameter Name="Classifica" Type="String" /><asp:Parameter Name="Specialità" Type="String" /><asp:Parameter Name="NTesseraFIKTA" Type="String" /></InsertParameters><SelectParameters><asp:ControlParameter ControlID="ListView1" Name="IdAllievo" PropertyName="SelectedValue" Type="Int32" /></SelectParameters><UpdateParameters><asp:Parameter Name="IdAllievo" Type="Int32" /><asp:Parameter Name="DataGara" Type="DateTime" /><asp:Parameter Name="LuogoGara" Type="String" /><asp:Parameter Name="Gara" Type="String" /><asp:Parameter Name="Classifica" Type="String" /><asp:Parameter Name="Specialità" Type="String" /><asp:Parameter Name="NTesseraFIKTA" Type="String" /><asp:Parameter Name="Id" Type="Int32" /></UpdateParameters></asp:SqlDataSource></div>

</asp:Content>

