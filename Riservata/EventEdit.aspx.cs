using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.IO;

public partial class Riservata_EventEdit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ButtonUpLoad_Click(object sender, EventArgs e)
    {
        Label LblUploadOk = ListView2.EditItem.FindControl("LblUploadOk") as Label;
        FileUpload FileUpload1 = ListView2.EditItem.FindControl("FileUpload1") as FileUpload;
        //Recupero l'ID per la parte iniziale del nome file
        string n = ListView1.SelectedValue.ToString();
        //Imposto la cartella di destinazione
        String path = Server.MapPath("~/Immagini/Eventi/" + n + "/");
        if (!Directory.Exists(path))
        {
            Directory.CreateDirectory(path);
        }
        if (FileUpload1.HasFile)
        { 
            //Recupero l'estensione del file
            string Estensione = System.IO.Path.GetExtension(FileUpload1.PostedFile.FileName).Substring(1);
            //Imposto il nuovo path completo del file
            string savePath = path + n +  "." + Estensione;
            FileUpload1.SaveAs(savePath);
            // Avvisa dell'avvenuto upload.
            LblUploadOk.ForeColor = Color.Green;
            LblUploadOk.Text = "Immagine caricata corretamente.";
        }
        else
        {
            // Avvisa del mancato upload.
            LblUploadOk.ForeColor = Color.Red ;
            LblUploadOk.Visible = true;
            LblUploadOk.Text = "Non hai scelto il file!!!.";
        }
    }
}