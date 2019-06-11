using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.SqlClient;


public partial class Patients_EditPatient : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {

        GridView1.HeaderRow.TableSection = TableRowSection.TableHeader;
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        String PatientId = "";
        String FirstName = "";
        String LastName = "";
        String Email = "";
        String PhoneNumber = "";
        String PatientAddress = "";
        String Comment = "";
        String Room = "";

        GridViewRow row = GridView1.SelectedRow;
        PatientId = row.Cells[1].Text;
        FirstName = row.Cells[2].Text;
        LastName = row.Cells[3].Text;
        Email = row.Cells[4].Text;
        PhoneNumber = row.Cells[5].Text;
        PatientAddress = row.Cells[7].Text;
        Comment = row.Cells[8].Text;
        Room = row.Cells[9].Text;
        txtPatientId.Text = PatientId;
        txtFirstName.Text = FirstName;
        txtLastName.Text = LastName;
        txtEmail.Text = Email;
        txtPhoneNumber.Text = PhoneNumber;
        txtPatientAddress.Text = PatientAddress;
        txtComment.Text = Comment;
        txtRoom.Text = Room;

    }
    protected void UpdateButton_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["MFMSconnectionstring"].ConnectionString;
        String PatientId = txtPatientId.Text;
        String FirstName = txtFirstName.Text;
        String LastName = txtLastName.Text;
        String Email = txtEmail.Text;
        String PhoneNumber = txtPhoneNumber.Text;
        String PatientType = txtPatientType.SelectedItem.ToString();
        String PatientAddress = txtPatientAddress.Text;
        String Comment = txtComment.Text;
        String Room = txtRoom.Text;

        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "update tblPatients set [FirstName]='" + @FirstName + "',[LastName]='" + @LastName + "',[Email]='" + @Email + "',[PhoneNumber]='" + @PhoneNumber + "',[PatientType]='" + @PatientType + "',[PatientAddress]='" + @PatientAddress + "',[Comment]='" + @Comment + "',[Room]='" + @Room + "' where [PatientId]='"+@PatientId+"'";
        cmd.Parameters.AddWithValue("@FirstName", FirstName);
        cmd.Parameters.AddWithValue("@LastName", LastName);
        cmd.Parameters.AddWithValue("@Email", Email);
        cmd.Parameters.AddWithValue("@PhoneNumber", PhoneNumber);
        cmd.Parameters.AddWithValue("@PatientType", PatientType);
        cmd.Parameters.AddWithValue("@PatientAddress", PatientAddress);
        cmd.Parameters.AddWithValue("@Comment", Comment);
        cmd.Parameters.AddWithValue("@Room", Room);

        try
        {
            cmd.Connection=con;
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("../Default.aspx");
        }
        catch (Exception)
        {
            Label1.Text = "Something went wrong";
            
        }

    }
   
}