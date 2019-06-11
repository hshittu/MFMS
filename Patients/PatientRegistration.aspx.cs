using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Net.Mail;

public partial class Patients_PatientsRegistraton : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        txtAdmissionDate.Text = System.DateTime.Now.ToString();
    }
    protected void SaveButton_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["MFMSconnectionstring"].ConnectionString;
        String FirstName = txtFirstName.Text;
        String LastName = txtLastName.Text;
        String Email = txtEmailAddress.Text;
        String PhoneNumber = txtPhoneNumber.Text;
        String PatientType = txtPatientType.SelectedItem.ToString();
        String BloodGroup = txtBloodGroup.SelectedItem.ToString();
        String Genotype = txtGenotype.SelectedItem.ToString();
        String PatientAge = txtPatientAge.Text;
        String PatientAddress = txtPatientAddress.Text;
        String Sex = txtSex.SelectedItem.ToString();
        String AdmissionDate = txtAdmissionDate.Text;
        String Comment = txtComment.Text;

        //String Path = Server.MapPath("Images/");
        //FileUpload1.SaveAs(Path + FileUpload1.FileName);
        //String Name = "~/Images/" + FileUpload1.FileName;
        
            //String FileName = Path.GetFileName(FileUpload1.PostedFile.FileName);
            //FileUpload1.SaveAs(Server.MapPath("PatientImages/" + FileName));


            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "INSERT INTO tblPatients (FirstName,LastName,Email,PhoneNumber,PatientType,BloodGroup,Genotype,PatientAge,PatientAddress,sex,AdmissionDate,Comment) VALUES (@FirstName, @LastName,@Email,@PhoneNumber,@PatientType,@BloodGroup,@Genotype,@PatientAge,@PatientAddress,@Sex,@AdmissionDate,@Comment)";

            cmd.Parameters.AddWithValue("@FirstName", FirstName);
            cmd.Parameters.AddWithValue("@LastName", LastName);
            cmd.Parameters.AddWithValue("@Email", Email);
            //cmd.Parameters.AddWithValue("@ImagePath", "PatientImages/" + FileName);
            cmd.Parameters.AddWithValue("@PhoneNumber", PhoneNumber);
            cmd.Parameters.AddWithValue("@PatientType", PatientType);
            cmd.Parameters.AddWithValue("@BloodGroup", BloodGroup);
            cmd.Parameters.AddWithValue("@Genotype", Genotype);
            cmd.Parameters.AddWithValue("@PatientAge", PatientAge);
            cmd.Parameters.AddWithValue("@PatientAddress", PatientAddress);
            cmd.Parameters.AddWithValue("@Sex", Sex);
            cmd.Parameters.AddWithValue("@AdmissionDate", AdmissionDate);
            cmd.Parameters.AddWithValue("@Comment", Comment);

            try
            {
                cmd.Connection = con;
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Label1.Text="Save Successful";
            }
            catch (Exception)
            {
                Label1.Text = "Something went wrong";
            }

            Email_Send();
        }
    private void Email_Send()
    {
        SqlConnection cnn = new SqlConnection();
        cnn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["MFMSconnectionstring"].ConnectionString;
        String FirstName = txtFirstName.Text;
        String LastName = txtLastName.Text;
        var Email = txtEmailAddress.Text.ToString();
        int PatientId;


        string queryString = "select PatientId from tblPatients where [FirstName]='"+@FirstName+"' and [LastName]='"+@LastName+"';";
        using (SqlConnection connection = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["MFMSconnectionstring"].ConnectionString))
        using (SqlCommand command = new SqlCommand(queryString, connection))
        {
            connection.Open();
            using (SqlDataReader reader = command.ExecuteReader())
            {
                // Call Read before accessing data. 
                    reader.Read();
                    PatientId = reader.GetInt32(0);

                    // Call Close when done reading.
                    reader.Close();
            }
        }
        try
        {
            MailMessage MyMessage = new MailMessage();
            MyMessage.Subject = "Welcome To MFMS";
            MyMessage.Body = "Hello '" + @FirstName + "' '" + @LastName + "', You are welcome to Medical Facility Management System, You have been Registered as a new Patient. Your ID is '" + @PatientId + "'";
            MyMessage.From = new MailAddress("mfmsmail@yahoo.com", "MFMS Admin");
            MyMessage.To.Add(new MailAddress(Email, FirstName));
            SmtpClient MySmtpClient = new SmtpClient();
            MySmtpClient.Send(MyMessage); 
            Label2.Text = "Notifications Sent";
            txtFirstName.Text = String.Empty;
            Response.Redirect("../Patients/PatientRegistration.aspx");
        }
        catch (Exception)
        {

            Label2.Text = "Notifications not sent";
        }
           
        
    }

    protected void RetryButton_Click(object sender, EventArgs e)
    {
        Email_Send();
    }
}