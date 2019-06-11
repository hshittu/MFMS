using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Controls_DoctorRegistration : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        txtDate.Text = System.DateTime.Now.ToString();
    }
    protected void SaveButton_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["MFMSconnectionstring"].ConnectionString;
        String FirstName = txtFirstName.Text;
        String LastName = txtLastName.Text;
        String PhoneNumber = txtPhoneNumber.Text;
        String EmergencyNo = txtEmergencyNo.Text;
        String Sex = txtSex.SelectedItem.ToString();
        String DoctorCost = txtDoctorCost.Text;
        String RegistrationDate = txtDate.Text;
        String Email = txtEmail.Text;
        String Address = txtAddress.Text;
        String ConsultationDays = txtConsultationDays.Text;

        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "insert into tblDoctors (FirstName,LastName,PhoneNumber,EmergencyNumber,Sex,DoctorCost,RegistrationDate,Email,Address,ConsultationDays) VALUES (@FirstName,@LastName,@PhoneNumber,@EmergencyNumber,@Sex,@DoctorCost,@RegistrationDate,@Email,@Address,@ConsultationDays)";
        cmd.Parameters.AddWithValue("@FirstName", FirstName);
        cmd.Parameters.AddWithValue("@LastName", LastName);
        cmd.Parameters.AddWithValue("@PhoneNumber", PhoneNumber);
        cmd.Parameters.AddWithValue("@EmergencyNumber", EmergencyNo);
        cmd.Parameters.AddWithValue("@Sex", Sex);
        cmd.Parameters.AddWithValue("@DoctorCost", DoctorCost);
        cmd.Parameters.AddWithValue("@RegistrationDate", RegistrationDate);
        cmd.Parameters.AddWithValue("@Email", Email);
        cmd.Parameters.AddWithValue("@Address", Address);
        cmd.Parameters.AddWithValue("@ConsultationDays", ConsultationDays);
        try
        {
            cmd.Connection = con;
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("../Default.aspx");
        }
        catch (Exception)
        {
            Label1.Text = "Something went wrong";
            Label1.Visible = true;
            
        }
    }
}