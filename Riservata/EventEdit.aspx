<%@ Page Title="Modifica evento" Debug="false" Language="C#" MasterPageFile="~/Riservata/MasterPage.master" Culture="auto" UICulture="auto"  AutoEventWireup="true" CodeFile="EventEdit.aspx.cs" Inherits="Riservata_EventEdit" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Admin" Runat="Server">
    <h2><%= Title %></h2>
    <div class="FloatLeft tbl1">
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1">
        <AlternatingItemTemplate>
            <tr style="background-color: #CFCFCF">
                <td>
                    <asp:LinkButton ID="LinkButton1" CssClass="icon icon-pen" CommandName="Select" runat="server"></asp:LinkButton>
                </td>
                <td>
                    <asp:Label ID="DataLabel" runat="server" Text='<%# Eval("Data", "{0:ddd dd MMM yyyy}") %>' />
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
                    <asp:Label ID="DataLabel" runat="server" Text='<%# Eval("Data", "{0:ddd dd MMM yyyy}") %>' />
                </td>
                <td>
                    <asp:Label ID="TitoloLabel" runat="server" Text='<%# Eval("Titolo") %>' />
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
                        <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                            <tr runat="server" style="">
                                <th runat="server"></th>
                                <th runat="server">Data</th>
                                <th runat="server">Titolo</th>
                            </tr>
                            <tr id="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style="">
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
                    <asp:Label ID="DataLabel" runat="server" Text='<%# Eval("Data", "{0:ddd dd MMM yyyy}") %>' />
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
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource2" DefaultMode="Edit">
        <EditItemTemplate>
            <table class="tbl1">
                <tr>
                    <td>Data:
                    </td>
                    <td>
                        <asp:TextBox ID="DataTextBox" Text='<%# Bind("Data") %>' runat="server" onclick="Calendar.show(this, '%d/%m/%Y', true)" onblur="Calendar.hide()" ></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Titolo:

                    </td>
                    <td>
                        <asp:TextBox ID="TitoloTextBox" runat="server" Text='<%# Bind("Titolo") %>' />
                    </td>
                </tr>
                <tr>
                    <td>Descrizione:
                    </td>
                    <td>
                        <CKEditor:CKEditorControl ID="CKEditor1" Text='<%# Bind("Descrizione") %>' BasePath="~/ckeditor" runat="server" UIColor="Gray" Language="it" EnterMode="BR"></CKEditor:CKEditorControl>
                    </td>
                </tr>
                <tr>
                    <td>Pubblica:
                    </td>
                    <td>
                        <asp:CheckBox ID="PubblicaCheckBox" runat="server" Checked='<%# Bind("Pubblica") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <hr />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Update" Text="Inserisci" />
                    </td>
                    <td style="text-align: center">
                        <hr />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Annulla" />
                        <span style="float:right"><asp:LinkButton ID="CancelButton" CausesValidation="True"  ForeColor="red" runat="server" OnClientClick='return confirm("Stai cancellando Font-Underline record CONTINUARE?")' CommandName="Delete" Text="Elimina"></asp:LinkButton></span>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align:center">
                    </td>
                </tr>
            </table>
        </EditItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnString %>" 
        SelectCommand="SELECT * FROM [Eventi] WHERE ([Id] = @Id)" 
        DeleteCommand="DELETE FROM [Eventi] WHERE [Id] = @Id" 
        InsertCommand="INSERT INTO [Eventi] ([Data], [Titolo], [Descrizione], [Pubblica], [Approfondimento]) VALUES (@Data, @Titolo, @Descrizione, @Pubblica, @Approfondimento)" 
        UpdateCommand="UPDATE [Eventi] SET [Data] = @Data, [Titolo] = @Titolo, [Descrizione] = @Descrizione, [Pubblica] = @Pubblica, [Approfondimento] = @Approfondimento WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter DbType="Date" Name="Data" />
            <asp:Parameter Name="Titolo" Type="String" />
            <asp:Parameter Name="Descrizione" Type="String" />
            <asp:Parameter Name="Pubblica" Type="Boolean" />
            <asp:Parameter Name="Approfondimento" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="ListView1" Name="Id" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter DbType="Date" Name="Data" />
            <asp:Parameter Name="Titolo" Type="String" />
            <asp:Parameter Name="Descrizione" Type="String" />
            <asp:Parameter Name="Pubblica" Type="Boolean" />
            <asp:Parameter Name="Approfondimento" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br /><br />
</asp:Content>

