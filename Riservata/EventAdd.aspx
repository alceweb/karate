<%@ Page Title="Aggiungi evento" Language="C#" MasterPageFile="~/Riservata/MasterPage.master" AutoEventWireup="true" CodeFile="EventAdd.aspx.cs" Inherits="Riservata_EventAdd" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Admin" Runat="Server">
    <h2><%= Title %></h2>
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1" DefaultMode="Insert">
        <InsertItemTemplate>
            <table class="tbl1">
                <tr>
                    <td>

                    </td>
                    <td>
                        <asp:TextBox ID="DataTextBox" Text='<%# Bind("Data") %>' runat="server" onclick="Calendar.show(this, '%d/%m/%Y', true)" onblur="Calendar.hide()" ></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
            Titolo:

                    </td>
                    <td>
            <asp:TextBox ID="TitoloTextBox" runat="server" Text='<%# Bind("Titolo") %>' />

                    </td>
                </tr>
                <tr>
                    <td>
            Descrizione:

                    </td>
                    <td>
 	               <CKEditor:CKEditorControl ID="CKEditor1" Text='<%# Bind("Descrizione") %>' BasePath="~/ckeditor" runat="server" UIColor="Gray" Language="it" EnterMode="BR"></CKEditor:CKEditorControl>

                    </td>
                </tr>
                <tr>
                    <td>
            Pubblica:

                    </td>
                    <td>
            <asp:CheckBox ID="PubblicaCheckBox" runat="server" Checked='<%# Bind("Pubblica") %>' />

                    </td>
                </tr>
                <tr  >
                    <td style="text-align: center"><hr />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Inserisci" />

                    </td>
                    <td style="text-align: center" ><hr />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Annulla" />

                    </td>
                </tr>
            </table>
        </InsertItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnString %>" 
        DeleteCommand="DELETE FROM [Eventi] WHERE [Id] = @Id" 
        InsertCommand="INSERT INTO [Eventi] ([Data], [Titolo], [Descrizione], [Pubblica]) VALUES (@Data, @Titolo, @Descrizione, @Pubblica)" 
        SelectCommand="SELECT * FROM [Eventi]" 
        UpdateCommand="UPDATE [Eventi] SET [Data] = @Data, [Titolo] = @Titolo, [Descrizione] = @Descrizione, [Pubblica] = @Pubblica WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter DbType="Date" Name="Data" />
            <asp:Parameter Name="Titolo" Type="String" />
            <asp:Parameter Name="Descrizione" Type="String" />
            <asp:Parameter Name="Pubblica" Type="Boolean" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter DbType="Date" Name="Data" />
            <asp:Parameter Name="Titolo" Type="String" />
            <asp:Parameter Name="Descrizione" Type="String" />
            <asp:Parameter Name="Pubblica" Type="Boolean" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </asp:Content>

