using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Staff_DeleteDoctor : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        String DoctorId = "";
        String FirstName = "";
        String LastName = "";

        GridViewRow row = GridView1.SelectedRow;

        DoctorId = row.Cells[1].Text;
        FirstName = row.Cells[2].Text;
        LastName = row.Cells[3].Text;

        txtDoctorId.Text = DoctorId;
        txtFirstName.Text = FirstName;
        txtLastName.Text = LastName;
    }
    protected void DeleteButton_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["MFMSconnectionstring"].ConnectionString;

        String DoctorId = txtDoctorId.Text;

        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "DELETE FROM tblDoctors WHERE DoctorId = '"+@DoctorId+"'";
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
    protected void txtClearButton_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["MFMSconnectionstring"].ConnectionString;

        String DoctorId = txtDoctorId.Text;

        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "DELETE FROM tblAppointments where DoctorAssigned='"+@DoctorId+"'";

        try
        {
            cmd.Connection = con;
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Label1.Text = "Clearance Successful";
        }
        catch (Exception)
        {

            Label1.Text = "Something went wrong";
        }
    }
}