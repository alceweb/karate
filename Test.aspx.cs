using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AjaxControlToolkit;
using System.Net.Mail;

public partial class Test : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.Page.Controls.Add(SqlDataSource1);
        SqlDataSource1.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnString"].ConnectionString;
        SqlDataSource1.SelectCommand = "select distinct count(Id) as Numero, Pagina from StaPage group by Pagina order by Numero desc";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string pagina = Page.Title.ToString();
        string data = "1-1-2015";
        SqlDataSource1.InsertCommand = "insert into StaPage ([Pagina], [Data]) values ('" + pagina + "', '1-1-2015')";
        SqlDataSource1.Insert();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {

    }
    protected void Button4_Click(object sender, EventArgs e)
    {

    }
}