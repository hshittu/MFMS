using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Staff_EditReceptionist : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        String ReceptionistId = "";
        String FirstName = "";
        String LastName = "";
        String PhoneNumber = "";
        String Sex = "";
        String Email = "";
        String Address = "";

        GridViewRow row = GridView1.SelectedRow;
        ReceptionistId = row.Cells[1].Text;
        FirstName = row.Cells[2].Text;
        LastName = row.Cells[3].Text;
        PhoneNumber = row.Cells[4].Text;
        Sex = row.Cells[5].Text;
        Email = row.Cells[6].Text;
        Address = row.Cells[7].Text;

        txtReceptionistId.Text = ReceptionistId;
        txtFirstName.Text = FirstName;
        txtLastName.Text = LastName;
        txtPhoneNumber.Text = PhoneNumber;
        txtSex.Text = Sex;
        txtEmail.Text = Email;
        txtAddress.Text = Address;

    }
    protected void UpdateButton_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["MFMSconnectionstring"].ConnectionString;
        
        String ReceptionistId = txtReceptionistId.Text;
        String FirstName = txtFirstName.Text;
        String LastName = txtLastName.Text;
        String PhoneNumber = txtPhoneNumber.Text;
        String Sex = txtSex.Text;
        String Email = txtEmail.Text;
        String Address = txtAddress.Text;

        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "Update tblReceptionists set [FirstName]='" + @FirstName + "',[LastName]='" + @LastName + "',[PhoneNumber]='" + @PhoneNumber + "',[Sex]='" + @Sex + "',[Email]='" + @Email + "',[Address]='"+@Address+"' where [ReceptionistId]='"+@ReceptionistId+"'";
        try
        {
            cmd.Connection = con;
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Label1.Text = "Update Successful";
        }
        catch (Exception)
        {
            Label1.Text = "Something went wrong";
            
        }
    }
}