using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Demo_View : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        String PatientId = "";
        String FirstName = "";
        String LastName = "";
        GridViewRow row = GridView1.SelectedRow;

        PatientId = row.Cells[1].Text;
        FirstName = row.Cells[2].Text;
        LastName = row.Cells[3].Text;

        Label1.Text = PatientId;
        Label2.Text = FirstName;
        Label3.Text = LastName;

    }
}