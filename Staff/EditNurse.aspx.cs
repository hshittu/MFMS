using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Staff_EditNurse : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        String NurseId = "";
        String FirstName = "";
        String LastName = "";
        String Age = "";
        String Sex = "";
        String Address = "";
        String Email = "";
        String PhoneNumber = "";

        GridViewRow row = GridView1.SelectedRow;
        NurseId = row.Cells[1].Text;
        FirstName = row.Cells[2].Text;
        LastName = row.Cells[3].Text;
        Age = row.Cells[4].Text;
        Sex = row.Cells[5].Text;
        Address = row.Cells[6].Text;
        Email = row.Cells[7].Text;
        PhoneNumber = row.Cells[8].Text;

        txtNurseId.Text = NurseId;
        txtFirstName.Text = FirstName;
        txtLastName.Text = LastName;
        txtAge.Text = Age;
        txtSex.Text = Sex;
        txtAddress.Text = Address;
        txtEmail.Text = Email;
        txtPhoneNumber.Text = PhoneNumber;
    }
    protected void txtUpdateButton_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["MFMSconnectionstring"].ConnectionString;
        String NurseId = txtNurseId.Text;
        String FirstName = txtFirstName.Text;
        String LastName = txtLastName.Text;
        String Age = txtAge.Text;
        String Sex = txtSex.Text;
        String Address = txtAddress.Text;
        String Email = txtEmail.Text;
        String PhoneNumber = txtPhoneNumber.Text;

        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "Update tblNurses set [FirstName]='" + @FirstName + "',[LastName]='" + @LastName + "',[Age]='" + @Age + "',[Sex]='" + @Sex + "',[Address]='" + @Address + "',[Email]='" + @Email + "',[PhoneNumber]='" + @PhoneNumber + "' where [NurseId]='"+@NurseId+"'";
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