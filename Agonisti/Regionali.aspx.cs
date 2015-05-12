using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Agonisti_Regionali : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void btnKata_Click(object sender, EventArgs e)
    {
        pnlKata.Visible = true;
        pnlKumite.Visible = false;
    }
    protected void btnkumite_Click(object sender, EventArgs e)
    {
        pnlKata.Visible = false;
        pnlKumite.Visible = true;
    }
}