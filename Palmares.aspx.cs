using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Palmares : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        SqlDataSource3.SelectCommand = "SELECT DISTINCT * FROM [Palmares] WHERE (([Cognome] = @Cognome) AND ([Nome] = @Nome)) ORDER BY [DataGara], [Gara], [Specialità]";
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        SqlDataSource3.SelectCommand = "SELECT DISTINCT * FROM [Palmares] WHERE (([Cognome] = @Cognome) AND ([Nome] = @Nome)) ORDER BY [DataGara] DESC, [Gara], [Specialità]";
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        SqlDataSource3.SelectCommand = "SELECT DISTINCT * FROM [Palmares] WHERE (([Cognome] = @Cognome) AND ([Nome] = @Nome)) ORDER BY [LuogoGara], [DataGara], [Specialità]";
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        SqlDataSource3.SelectCommand = "SELECT DISTINCT * FROM [Palmares] WHERE (([Cognome] = @Cognome) AND ([Nome] = @Nome)) ORDER BY [LuogoGara] DESC, [DataGara] Desc, [Specialità]";
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        SqlDataSource3.SelectCommand = "SELECT DISTINCT * FROM [Palmares] WHERE (([Cognome] = @Cognome) AND ([Nome] = @Nome)) ORDER BY [Gara], [DataGara] Desc, [Specialità]";
    }
    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        SqlDataSource3.SelectCommand = "SELECT DISTINCT * FROM [Palmares] WHERE (([Cognome] = @Cognome) AND ([Nome] = @Nome)) ORDER BY [Gara] DESC, [DataGara] Desc, [Specialità]";
    }
    protected void LinkButton7_Click(object sender, EventArgs e)
    {
        SqlDataSource3.SelectCommand = "SELECT DISTINCT * FROM [Palmares] WHERE (([Cognome] = @Cognome) AND ([Nome] = @Nome)) ORDER BY [Classifica], [DataGara] Desc, [Specialità]";
    }
    protected void LinkButton8_Click(object sender, EventArgs e)
    {
        SqlDataSource3.SelectCommand = "SELECT DISTINCT * FROM [Palmares] WHERE (([Cognome] = @Cognome) AND ([Nome] = @Nome)) ORDER BY [Classifica] DESC";
    }
    protected void LinkButton9_Click(object sender, EventArgs e)
    {
        SqlDataSource3.SelectCommand = "SELECT DISTINCT * FROM [Palmares] WHERE (([Cognome] = @Cognome) AND ([Nome] = @Nome)) ORDER BY [Specialità]";
    }
    protected void LinkButton10_Click(object sender, EventArgs e)
    {
        SqlDataSource3.SelectCommand = "SELECT DISTINCT * FROM [Palmares] WHERE (([Cognome] = @Cognome) AND ([Nome] = @Nome)) ORDER BY [Specialità] DESC";
    }
}