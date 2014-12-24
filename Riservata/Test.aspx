<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Test.aspx.cs" Inherits="Riservata_Test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
                        <script src="Scripts/jquery-1.4.1.min.js" type="text/javascript"></script>
                        <script src="Scripts/jquery.dynDateTime.min.js" type="text/javascript"></script>
                        <script src="Scripts/calendar-en.min.js" type="text/javascript"></script>
            <link href="../Content/calendar-blue.css" rel="stylesheet" />
                        <link href="../Content/calendar-blue.css" rel="stylesheet" type="text/css" />
                        <script type="text/javascript">
                            $(document).ready(function () {
                                $(".Calender").dynDateTime({
                                    showsTime: false,
                                    ifFormat: "%d/%m/%Y %H:%M",
                                    daFormat: "%l;%M %p, %e %m",
                                    align: "BR",
                                    electric: false,
                                    singleClick: true,
                                    displayArea: ".siblings('.dtcDisplayArea')",
                                    button: ".next()"
                                });
                            });
                        </script>
        <asp:TextBox Class="Calender" ID="TextBox1" runat="server"></asp:TextBox>
    </div>
    </form>
</body>
</html>
