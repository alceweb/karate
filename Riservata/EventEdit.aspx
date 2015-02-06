<%@ Page Title="Modifica evento" Debug="false" Language="C#" MasterPageFile="~/Riservata/MasterPage.master" Culture="auto" UICulture="auto"  AutoEventWireup="true" CodeFile="EventEdit.aspx.cs" Inherits="Riservata_EventEdit" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Admin" Runat="Server">
    <h2><%= Title %></h2>
    <div class="div3">
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="Id" SelectedIndex="0" DataSourceID="SqlDataSource1" >
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
            <asp:Label ID="TitoloLabelx" runat="server" ForeColor="White" Text='<%# Eval("Titolo") %>' />
            </div>
        </SelectedItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnString %>" 
        SelectCommand="SELECT * FROM [Eventi] ORDER BY [Data] DESC">
    </asp:SqlDataSource>
    </div>
    <div class="div3">
    <asp:ListView ID="ListView2" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource2" DefaultMode="Edit">
        <ItemTemplate>
            <asp:Image ID="Image1" CssClass="div3 img" ImageUrl='<%# "~/Immagini/Eventi/" + Eval("Id") + "/" + Eval("ID") + ".jpg" %>' runat="server" />
             <asp:Label ID="DataLabel" Text='<%# Eval("Data", "{0:dd MMM yyyy}") %>' runat="server" ></asp:Label><br />
            <asp:Label ID="TitoloLabel" runat="server" Text='<%# Eval("Titolo") %>'></asp:Label><br />
            <asp:Button ID="Button1" runat="server" CommandName="Edit" Text="Modifica" />
        </ItemTemplate>
        <EditItemTemplate>
            <table class="tbl1">
                <tr>
                    <td>Data:
                    </td>
                    <td>
                        <asp:TextBox ID="DataTextBox" Text='<%# Bind("Data") %>' runat="server" onclick="Calendar.show(this, '%d/%m/%Y', false)" onblur="Calendar.hide()" ></asp:TextBox>
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </td>
                    <td rowspan="2">
                        <asp:Image ID="Image1" Height="100px" ImageUrl='<%# "~/Immagini/Eventi/" + Eval("Id") + "/" + Eval("ID") + ".jpg" %>' runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>Titolo:

                    </td>
                    <td>
                        <asp:TextBox ID="TitoloTextBox" runat="server" Text='<%# Bind("Titolo") %>' />
                        <asp:Button ID="ButtonUpLoad" OnClick="ButtonUpLoad_Click" runat="server" Text="Carica immagine" />
                         <asp:Label ID="LblUploadOk" runat="server"></asp:Label>
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
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Update" Text="Aggiorna" />
                    </td>
                    <td style="text-align: center">
                        <hr />
                        <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Annulla" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align:center">
                    </td>
                </tr>
            </table>
        </EditItemTemplate>
    </asp:ListView>
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

    </div>
    <br /><br />
</asp:Content>

