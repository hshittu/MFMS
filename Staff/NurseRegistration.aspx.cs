using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;
using System.IO;

public partial class Staff_NurseRegistration : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        txtRegistrationDate.Text = System.DateTime.Now.ToString();
    }
    protected void SaveButton_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["MFMSconnectionstring"].ConnectionString;
        String FirstName = txtFirstName.Text;
        String LastName = txtLastName.Text;
        String Age = txtAge.Text;
        String Sex = txtSex.SelectedItem.ToString();
        String RegistrationDate = txtRegistrationDate.Text;
        String Address = txtAddress.Text;
        String Email = txtEmail.Text;
        String PhoneNumber = txtPhoneNumber.Text;

        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "INSERT INTO tblNurses (FirstName,LastName,Age,Sex,RegistrationDate,Address,Email,PhoneNumber) VALUES (@FirstName,@LastName,@Age,@Sex,@RegistrationDate,@Address,@Email,@PhoneNumber)";
        cmd.Parameters.AddWithValue("@FirstName", FirstName);
        cmd.Parameters.AddWithValue("@LastName", LastName);
        cmd.Parameters.AddWithValue("@Age", Age);
        cmd.Parameters.AddWithValue("@Sex", Sex);
        cmd.Parameters.AddWithValue("@RegistrationDate", RegistrationDate);
        cmd.Parameters.AddWithValue("@Address", Address);
        cmd.Parameters.AddWithValue("@Email", Email);
        cmd.Parameters.AddWithValue("@PhoneNumber", PhoneNumber);

        try
        {
            cmd.Connection = con;
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            //Response.Redirect("../Default.aspx");
            Label1.Text = "Save Successfull";
        }
        catch (Exception)
        {

            Label1.Text = "Something went wrong";
            Label1.Visible = true;
        }
        Email_Send();
    }
    protected void RetryButton_Click(object sender, EventArgs e)
    {
        Email_Send();
    }
    private void Email_Send()
    {
        SqlConnection cnn = new SqlConnection();
        cnn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["MFMSconnectionstring"].ConnectionString;
        String FirstName = txtFirstName.Text;
        String LastName = txtLastName.Text;
        var Email = txtEmail.Text.ToString();
        int NurseId;


        string queryString = "select NurseId from tblNurses where [FirstName]='" + @FirstName + "' and [LastName]='" + @LastName + "';";
        using (SqlConnection connection = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["MFMSconnectionstring"].ConnectionString))
        using (SqlCommand command = new SqlCommand(queryString, connection))
        {
            connection.Open();
            using (SqlDataReader reader = command.ExecuteReader())
            {
                // Call Read before accessing data. 
                reader.Read();
                NurseId = reader.GetInt32(0);

                // Call Close when done reading.
                reader.Close();
            }
        }
        try
        {
            MailMessage MyMessage = new MailMessage();
            MyMessage.Subject = "Welcome To MFMS";
            MyMessage.Body = "Hello '" + @FirstName + "' '" + @LastName + "', You are welcome to Medical Facility Management System, You have been Registered as a new Nurse.We are Glad to have you on our team. Your ID is '" + @NurseId + "'";
            MyMessage.From = new MailAddress("mfmsmail@yahoo.com", "MFMS Admin");
            MyMessage.To.Add(new MailAddress(Email, FirstName));
            SmtpClient MySmtpClient = new SmtpClient();
            MySmtpClient.Send(MyMessage);
            Label2.Text = "Notifications Sent";
        }
        catch (Exception)
        {

            Label2.Text = "Notifications not sent";
        }


    }
}