using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class Riservata_EventGalleria : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void ListView1_SelectedIndexChanging(object sender, ListViewSelectEventArgs e)
    {
        LblUploadOk.Visible = false;
        LblUploadOk.Text = "";
    }
    protected void ListView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        LblUploadOk.Visible = false;
        LblUploadOk.Text = "";
        string n = ListView1.SelectedValue.ToString();
        string cartella = "~/Immagini/Eventi/" + n + "/";
        String path = Server.MapPath(cartella);
        if (Directory.Exists(path))
        {
            string[] immagini = System.IO.Directory.GetFiles(Server.MapPath(cartella), n + "_*.*");
            lista.DataSource = immagini;
            lista.DataBind();
            string[] immagini2 = System.IO.Directory.GetFiles(Server.MapPath(cartella), n + "-*.*");
            lista2.DataSource = immagini2;
            lista2.DataBind();
        }
        else
        {
            Directory.CreateDirectory(path);
            string[] immagini = System.IO.Directory.GetFiles(Server.MapPath(cartella), "_*.*");
            lista.DataSource = immagini;
            lista.DataBind();
            string[] immagini2 = System.IO.Directory.GetFiles(Server.MapPath(cartella), n + "-*.*");
            lista2.DataSource = immagini2;
            lista2.DataBind();
        }
    }
    protected void btnDownload_Click(object sender, EventArgs e)
    {
        //Recupero l'ID per la parte iniziale del nome file
        string n = ListView1.SelectedValue.ToString();
        //Imposto la cartella di destinazione
        String path = Server.MapPath("~/Immagini/Eventi/" + n + "/");
        if (!Directory.Exists(path))
        {
            Directory.CreateDirectory(path);
        }
            //FUNZIONA SOLO CON FRAMEWORK 4.5
        //if (FileUpload1.HasFiles)
        //{
        //    foreach (var file in FileUpload1.PostedFiles)
        //    {
        //        file.SaveAs(path + System.IO.Path.GetFileName(n + "_" + file.FileName));
        //        Response.Write(System.IO.Path.GetFileName(n + "_" + file.FileName));
        //    }
        //    // Avvisa dell'avvenuto upload.
        //    LblUploadOk.Visible = true;
        //    LblUploadOk.ForeColor = System.Drawing.Color.Red;
        //    LblUploadOk.Text = "Immagini caricate corretamente.<br/>Saranno visibili quando rientrerai nell'ID!<br/><br/>";
        //}
            if (FileUpload1.HasFile)
            {
                var file = FileUpload1.PostedFile;
                file.SaveAs(path + System.IO.Path.GetFileName(n + "_" + file.FileName));
                Response.Write(System.IO.Path.GetFileName(n + "_" + file.FileName));
            }
        else
        {
            // Avvisa del mancato upload.
            LblUploadOk.Visible = true;
            LblUploadOk.Text = "Non hai scelto l'immagine per la galleria.";
        }
    }
    protected void btnDownload2_Click(object sender, EventArgs e)
    {
        //Recupero l'ID per la parte iniziale del nome file
        string n = ListView1.SelectedValue.ToString();
        //Imposto la cartella di destinazione
        String path = Server.MapPath("~/Immagini/Eventi/" + n + "/");
        if (!Directory.Exists(path))
        {
            Directory.CreateDirectory(path);
        }
            //FUNZIONA SOLO CON FRAMEWORK 4.5
        //if (FileUpload2.HasFile)
        //{
        //    foreach (var file in FileUpload2.PostedFiles)
        //    {
        //        file.SaveAs(path + System.IO.Path.GetFileName(n + "-" + file.FileName));
        //        Response.Write(System.IO.Path.GetFileName(n + "-" + file.FileName));
        //    }
        //    // Avvisa dell'avvenuto upload.
        //    LblUploadOk2.Visible = true;
        //    LblUploadOk2.ForeColor = System.Drawing.Color.Red;
        //    LblUploadOk2.Text = "Immagini caricate corretamente.<br/>Saranno visibili quando rientrerai nell'ID!<br/><br/>";
        //}
        if (FileUpload2.HasFile)
        {
            var file = FileUpload2.PostedFile;
            file.SaveAs(path + System.IO.Path.GetFileName(n + "-" + file.FileName));
            Response.Write(System.IO.Path.GetFileName(n + "-" + file.FileName));
        }
        else
        {
            // Avvisa del mancato upload.
            LblUploadOk2.Visible = true;
            LblUploadOk2.Text = "Non hai scelto l'immagine per la galleria.";
        }
    }
}