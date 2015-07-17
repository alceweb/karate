<%@ Page Title="Newsletter allievi" Language="C#" MasterPageFile="~/Riservata/MasterPage.master" AutoEventWireup="true" CodeFile="NesletterAllievi.aspx.cs" Inherits="Riservata_NesletterAllievi" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Admin" Runat="Server">
    <h2><%= Title %></h2>
<div class="div1" >
       <CKEditor:CKEditorControl ID="NLEditor" BasePath="~/ckeditor" runat="server" UIColor="Gray" Language="it" EnterMode="BR" >A tutti gli allievi di Shotokenshukai Caravaggio</CKEditor:CKEditorControl><hr />
            <asp:Button ID="InviaButton" ForeColor="White" BackColor="green" OnClick="InviaButton_Click" runat="server" Text="Invia" />
        <asp:Button ID="Button2" ForeColor="White" BackColor="red" CommandName="Cancel" runat="server" Text="Annulla" />
</div>
</asp:Content>

