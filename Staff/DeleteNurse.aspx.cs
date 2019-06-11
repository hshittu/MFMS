using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class Staff_DeleteNurse : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        String NurseId = "";
        String FirstName = "";
        String LastName="";

        GridViewRow row =GridView1.SelectedRow;
        NurseId = row.Cells[1].Text;
        FirstName = row.Cells[2].Text;
        LastName = row.Cells[3].Text;
        txtNurseId.Text = NurseId;
        txtFirstName.Text = FirstName;
        txtLastName.Text = LastName;


    }
    protected void DeleteButton_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["MFMSconnectionstring"].ConnectionString;
        String NurseId = txtNurseId.Text;

        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "DELETE FROM tblNurses where NurseId='"+@NurseId+"'";
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