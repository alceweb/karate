using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Evento : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        System.Threading.Thread.CurrentThread.CurrentCulture
            = new System.Globalization.CultureInfo("it-IT");
        System.Threading.Thread.CurrentThread.CurrentUICulture
             = new System.Globalization.CultureInfo("it-IT");
        string cartella = "~/Immagini/Eventi/" + Request.QueryString["Id"] + "/";
        string[] immagini = System.IO.Directory.GetFiles(Server.MapPath(cartella), Request.QueryString["Id"] + "_*.jpg");
        string[] immagini1 = System.IO.Directory.GetFiles(Server.MapPath(cartella), Request.QueryString["Id"] + "-*.jpg");
        lista.DataSource = immagini;
        lista.DataBind();
        lista1.DataSource = immagini1;
        lista1.DataBind();
    }
}