<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Evento.aspx.cs" Inherits="Evento" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="Scripts/jquery-2.1.1.min.js"></script>
    <script src="Scripts/jquery.colorbox.js"></script>
    <link href="Content/colorbox.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" Runat="Server">
    <div class="div2">
    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="Id">
        <ItemTemplate>
            <div >
            <h3><asp:Label ID="TitoloLabel" runat="server" Text='<%# Eval("Titolo") %>' /></h3>
            <asp:Label ID="DataLabel" runat="server" Text='<%# Eval("Data", "{0:dd MMM yyyy}") %>' /><br />
                <asp:Label ID="DescrizioneLabel" runat="server" Text='<%# Eval("Descrizione") %>'></asp:Label>
            </div>
        </ItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnString %>" SelectCommand="SELECT * FROM [Eventi] WHERE ([Id] = @Id)">
        <SelectParameters>
            <asp:QueryStringParameter Name="Id" QueryStringField="Id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    </div><hr />
    <div id="main">
                <div class="wrap">
                    <section id="exemple" class="clearfix">
                        <div id="try"></div>
                        <script type="text/javascript">
                            $(document).ready(function () {
                                //Examples of how to assign the Colorbox event to elements
                                $(".group1").colorbox({ maxHeight: '100%', rel: 'group1', transition: 'fade' });
                            });
                        </script>
                        <asp:Repeater ID="lista" runat="server">
                            <HeaderTemplate>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <span class="galla">
                                <a class="group1" href="<%# (Container.DataItem as string).Substring(Server.MapPath("./").Length).Replace("\\", "/") %>">
                                    <img style="border: thin solid #9C9C9C; margin: 8px;" src="<%# (Container.DataItem as string).Substring(Server.MapPath("./").Length).Replace("\\", "/") %>" />
                                </a>

                                </span>

                            </ItemTemplate>
                            <FooterTemplate></FooterTemplate>
                        </asp:Repeater>
                        <asp:Repeater ID="lista1" runat="server">
                            <HeaderTemplate>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <span class="galla">
                                <a class="group1" href="<%# (Container.DataItem as string).Substring(Server.MapPath("./").Length).Replace("\\", "/") %>">
                                </a>

                                </span>

                            </ItemTemplate>
                            <FooterTemplate></FooterTemplate>
                        </asp:Repeater>
                    </section>
                </div>
            </div>
</asp:Content>

