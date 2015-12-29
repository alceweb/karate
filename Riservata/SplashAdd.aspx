<%@ Page Title="Aggiungi Splash" Language="C#" MasterPageFile="~/Riservata/MasterPage.master" AutoEventWireup="true" CodeFile="SplashAdd.aspx.cs" Inherits="Riservata_SplashAdd" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Admin" Runat="Server">
    <h2><%= Title %></h2>
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1" InsertItemPosition="LastItem">
        <AlternatingItemTemplate>
            <tr style="background-color:#c1c1c6">
                <td>
                    <asp:Button ID="DeleteButton" runat="server" ForeColor="White" BackColor="red" OnClientClick="return confirm ('Stai cancellando un avviso splash! Continure?')" CommandName="Delete" Text="Elimina" />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" ForeColor="White" BackColor="Green"  Text="Modifica" />
                </td>
                <td>
                    <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                </td>
                <td>
                    <asp:Label ID="DataInizioLabel" runat="server" Font-Bold="true" Text='<%# Eval("DataInizio", "{0:dd-MMM-yyyy}") %>' />
                </td>
                <td>
                    <asp:Label ID="DataFineLabel" runat="server" Font-Bold="true" Text='<%# Eval("DataFine", "{0:dd-MMM-yyyy}") %>' />
                </td>
                <td>
                    <asp:Label ID="TestoLabel" runat="server" Text='<%# Eval("Testo") %>' />
                </td>
            </tr>
        </AlternatingItemTemplate>
        <ItemTemplate>
            <tr style="background-color:#dcdce0">
                <td>
                    <asp:Button ID="DeleteButton" runat="server" ForeColor="White" BackColor="red" OnClientClick="return confirm ('Stai cancellando un avviso splash! Continure?')" CommandName="Delete" Text="Elimina" />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" ForeColor="White" BackColor="Green"  Text="Modifica" />
                </td>
                <td>
                    <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                </td>
                <td>
                    <asp:Label ID="DataInizioLabel" runat="server" Font-Bold="true" Text='<%# Eval("DataInizio", "{0:dd-MMM-yyyy}") %>' />
                </td>
                <td>
                    <asp:Label ID="DataFineLabel" runat="server" Font-Bold="true" Text='<%# Eval("DataFine", "{0:dd-MMM-yyyy}") %>' />
                </td>
                <td>
                    <asp:Label ID="TestoLabel" runat="server" Text='<%# Eval("Testo") %>' />
                </td>
            </tr>
        </ItemTemplate>
        <EditItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" ForeColor="White" BackColor="green"  Text="Aggiorna" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" ForeColor="White" BackColor="red"  Text="Annulla" />
                </td>
                <td>
                    <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                </td>
                <td>
                    <asp:TextBox ID="DataInizioTextBox" runat="server" onclick="Calendar.show(this, '%d/%m/%Y', false)" onblur="Calendar.hide()"  Text='<%# Bind("DataInizio", "{0:dd-MMM-yyyy}") %>' />
                </td>
                <td>
                    <asp:TextBox ID="DataFineTextBox" runat="server" onclick="Calendar.show(this, '%d/%m/%Y', false)" onblur="Calendar.hide()"  Text='<%# Bind("DataFine", "{0:dd-MMM-yyyy}") %>' />
                </td>
                <td>
                        <CKEditor:CKEditorControl ID="CKEditor1" Text='<%# Bind("Testo") %>' BasePath="~/ckeditor" runat="server" UIColor="Gray" Language="it" EnterMode="BR"></CKEditor:CKEditorControl>
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
            <tr style="background-color:#FF0000">
                <td colspan="5">

                </td>
            </tr>
            <tr >
                <td>
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" ForeColor="red"  Text="Inserisci" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" ForeColor="green"  Text="Cancella" />
                </td>
                <td>&nbsp;</td>
                <td>
                    <asp:TextBox ID="DataInizioTextBox" runat="server" onclick="Calendar.show(this, '%d/%m/%Y', false)" onblur="Calendar.hide()" Text='<%# Bind("DataInizio") %>' />
                </td>
                <td>
                    <asp:TextBox ID="DataFineTextBox" runat="server" onclick="Calendar.show(this, '%d/%m/%Y', false)" onblur="Calendar.hide()" Text='<%# Bind("DataFine") %>' />
                </td>
            </tr>
            <tr >
                    <td></td>
                    <td></td>
                <td colspan="3">
                        <CKEditor:CKEditorControl ID="CKEditor1" Text='<%# Bind("Testo") %>' BasePath="~/ckeditor" runat="server" UIColor="Gray" Language="it" EnterMode="BR"></CKEditor:CKEditorControl>
                </td>
                    <td></td>
                </tr>
            <tr style="background-color:#FF0000">
                <td colspan="5">

                </td>
            </tr>
        </InsertItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                            <tr runat="server" style="">
                                <th runat="server"></th>
                                <th runat="server">Id</th>
                                <th runat="server">DataInizio</th>
                                <th runat="server">DataFine</th>
                                <th runat="server"></th>
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnString %>" DeleteCommand="DELETE FROM [Splash] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Splash] ([DataInizio], [DataFine], [Testo]) VALUES (@DataInizio, @DataFine, @Testo)" SelectCommand="SELECT * FROM [Splash]" UpdateCommand="UPDATE [Splash] SET [DataInizio] = @DataInizio, [DataFine] = @DataFine, [Testo] = @Testo WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter DbType="Date" Name="DataInizio" />
            <asp:Parameter DbType="Date" Name="DataFine" />
            <asp:Parameter Name="Testo" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter DbType="Date" Name="DataInizio" />
            <asp:Parameter DbType="Date" Name="DataFine" />
            <asp:Parameter Name="Testo" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

