<%@ Page Title="Aggiungi evento" Language="C#" MasterPageFile="~/Riservata/MasterPage.master" AutoEventWireup="true" CodeFile="EventAdd.aspx.cs" Inherits="Riservata_EventAdd" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Admin" Runat="Server">
    <h2><%= Title %></h2>
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1" DefaultMode="Insert">
        <InsertItemTemplate>
            <table class="tbl1">
                <tr>
                    <td>
            Data: <asp:LinkButton ID="LinkButton1" OnClick="LinkButton1_Click" CssClass="icon icon-calendar" runat="server"></asp:LinkButton>

                    </td>
                    <td>
                         <asp:Label ID="LabelData" runat="server" ></asp:Label>
                        <asp:Calendar ID="Calendar1" SelectedDate='<%# Bind("Data") %>' OnSelectionChanged="Calendar1_SelectionChanged" Visible="false" runat="server" SelectionMode="Day" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" Width="200px">
                            <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                            <NextPrevStyle VerticalAlign="Bottom" />
                            <OtherMonthDayStyle ForeColor="#808080" />
                            <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                            <SelectorStyle BackColor="#CCCCCC" />
                            <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                            <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                            <WeekendDayStyle BackColor="#FFFFCC" />
                        </asp:Calendar>

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

