<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Content/colorbox.css" rel="stylesheet" />
    <script src="Scripts/jquery-2.1.1.min.js"></script>
    <script src="Scripts/jquery.colorbox.js"></script>
    <style type="text/css">
        .auto-style1 {
            width: 1024px;
            height: 577px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" Runat="Server">
    <div style="width:90%;margin:auto; text-align:center">
        <h3>
            06 dicembre 2014 <br />
            46° COPPA SHOTOKAN 2014
        </h3>
        <p>...e compleanno di Almish!</p>
        <h3>Cek primo classificato nel kata master e nel kumite individuale</h3>
        <p>credo sia la prima volta in 46 anni della Coppa Shotokan che un atleta vince sia il kata che il kumite</p>
    <script type="text/javascript">
        $(document).ready(function () {
            //Examples of how to assign the Colorbox event to elements
            $(".group1").colorbox({ maxHeight: '100%', rel: 'group1', transition: 'fade' });
        });
		</script>
        <span class="aGroup" >
            <a class="group1 aGroup" href="Immagini/CoppaShotokan.jpg">
            <img src="Immagini/CoppaShotokan_p.jpg" /></a><br />
        <a class="group1 aGroup" href="Immagini/CoppaShotokan2014/WP_20141215_003.jpg"><img height="150" alt="" src="Immagini/CoppaShotokan2014/WP_20141215_003.jpg" /></a>
        <a class="group1 aGroup" href="Immagini/CoppaShotokan2014/WP_20141215_005.jpg"><img height="150" alt="" src="Immagini/CoppaShotokan2014/WP_20141215_005.jpg" /></a>

        </span>
                <asp:Repeater ID="lista" runat="server">
                    <HeaderTemplate>
                        <div class="galla">
                        </div>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <a class="group1" href="<%# (Container.DataItem as string).Substring(Server.MapPath("./").Length).Replace("\\", "/") %>">
                        </a>
                    </ItemTemplate>
                    <FooterTemplate></ul></FooterTemplate>
                </asp:Repeater>

    </div>

</asp:Content>

