using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class Staff_DeleteReceptionist : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow row = GridView1.SelectedRow;

        String ReceptionistId = row.Cells[1].Text;
        String FirstName = row.Cells[2].Text;
        String LastName = row.Cells[3].Text;

        txtReceptionistId.Text = ReceptionistId;
        txtFirstName.Text = FirstName;
        txtLastName.Text = LastName;

    }
    protected void DeleteButton_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["MFMSconnectionstring"].ConnectionString;

        String ReceptionistId = txtReceptionistId.Text;

        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "DELETE FROM tblReceptionists where ReceptionistId='"+@ReceptionistId+"'";

        try
        {
            cmd.Connection = con;
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Label1.Text = "Deletion Successful";

        }
        catch (Exception)
        {

            Label1.Text = "Something went wrong";
        }
    }
}