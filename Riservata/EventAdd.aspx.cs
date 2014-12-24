using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Riservata_EventAdd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        Label data = FormView1.Row.FindControl("LabelData") as Label;
        Calendar cale = FormView1.Row.FindControl("Calendar1") as Calendar;
        data.Text = cale.SelectedDate.ToLongDateString();
        cale.Visible = false;
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Calendar cale = FormView1.Row.FindControl("Calendar1") as Calendar;
        cale.Visible = true;
    }
}