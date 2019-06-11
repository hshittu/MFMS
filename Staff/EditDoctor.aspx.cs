using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Staff_EditDoctor : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        String DoctorId = "";
        String FirstName = "";
        String LastName = "";
        String PhoneNumber = "";
        String EmergencyNumber = "";
        String Sex = "";
        String DoctorCost = "";
        String Email = "";
        String Address = "";
        String ConsultationDays = "";

        GridViewRow row = GridView1.SelectedRow;
        DoctorId = row.Cells[1].Text;
        FirstName = row.Cells[2].Text;
        LastName = row.Cells[3].Text;
        PhoneNumber = row.Cells[4].Text;
        EmergencyNumber = row.Cells[5].Text;
        Sex = row.Cells[6].Text;
        DoctorCost = row.Cells[7].Text;
        Email = row.Cells[8].Text;
        Address = row.Cells[9].Text;
        ConsultationDays = row.Cells[10].Text;

        txtDoctorId.Text = DoctorId;
        txtFirstName.Text = FirstName;
        txtLastName.Text = LastName;
        txtPhoneNumber.Text = PhoneNumber;
        txtEmergencyNumber.Text = EmergencyNumber;
        txtSex.Text = Sex;
        txtDoctorCost.Text = DoctorCost;
        txtEmail.Text = Email;
        txtAddress.Text = Address;
        txtConsultationDays.Text = ConsultationDays;

    }
    protected void UpdateButton_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["MFMSconnectionstring"].ConnectionString;
        String DoctorId = txtDoctorId.Text;
        String FirstName = txtFirstName.Text;
        String LastName = txtLastName.Text;
        String PhoneNumber = txtPhoneNumber.Text;
        String EmergencyNumber = txtEmergencyNumber.Text;
        String Sex = txtSex.Text;
        String DoctorCost = txtDoctorCost.Text;
        String Email = txtEmail.Text;
        String Address = txtAddress.Text;
        String ConsultationDays = txtConsultationDays.Text;

        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "Update tblDoctors set [FirstName]='" + @FirstName + "',[LastName]='" + @LastName + "',[PhoneNumber]='" + @PhoneNumber + "',[EmergencyNumber]='" + @EmergencyNumber + "',[Sex]='" + @Sex + "',[DoctorCost]='" + @DoctorCost + "',[Email]='" + @Email + "',[Address]='" + @Address + "',[ConsultationDays]='" + @ConsultationDays + "' where [DoctorId]='"+@DoctorId+"'";
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