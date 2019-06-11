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

public partial class Appointments_CreateAppointment : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        txtDate.Text = System.DateTime.Now.ToString();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        String VisitId = "";
        String FirstName = "";
        String LastName = "";
        String VitalSigns = "";
        String Weight = "";
        String BloodPressure = "";

        GridViewRow row = GridView1.SelectedRow;
        VisitId = row.Cells[1].Text;
        FirstName = row.Cells[2].Text;
        LastName = row.Cells[3].Text;
        VitalSigns = row.Cells[4].Text;
        Weight = row.Cells[7].Text;
        BloodPressure = row.Cells[8].Text;
        txtVisitId.Text = VisitId;
        txtFirstName.Text = FirstName;
        txtLastName.Text = LastName;
        txtVitalSigns.Text = VitalSigns;
        txtWeight.Text = Weight;
        txtBloodPressure.Text = BloodPressure;
    }
    protected void SaveButton_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["MFMSconnectionstring"].ConnectionString;
        String VisitId = txtVisitId.Text;
        String Date = txtDate.Text;
        String FirstName = txtFirstName.Text;
        String LastName = txtLastName.Text;
        String VitalSigns = txtVitalSigns.Text;
        String Weight = txtWeight.Text;
        String BloodPressure = txtBloodPressure.Text;
        String AppointDate = txtAppointDate.Text;
        String DoctorAssigned = txtDoctorAssigned.SelectedValue.ToString();

        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "INSERT INTO tblAppointments(VisitId,FirstName,LastName,VitalSigns,Weight,BloodPressure,Date,AppointDate,DoctorAssigned) VALUES (@VisitId,@FirstName,@LastName,@VitalSigns,@Weight,@BloodPressure,@Date,@AppointDate,@DoctorAssigned)";
        cmd.Parameters.AddWithValue("@VisitId", VisitId);
        cmd.Parameters.AddWithValue("@FirstName", FirstName);
        cmd.Parameters.AddWithValue("@LastName", LastName);
        cmd.Parameters.AddWithValue("@VitalSigns", VitalSigns);
        cmd.Parameters.AddWithValue("@Weight", Weight);
        cmd.Parameters.AddWithValue("@BloodPressure", BloodPressure);
        cmd.Parameters.AddWithValue("@Date", Date);
        cmd.Parameters.AddWithValue("@AppointDate", AppointDate);
        cmd.Parameters.AddWithValue("@DoctorAssigned", DoctorAssigned);

        try
        {
            cmd.Connection = con;
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            //Response.Redirect("../Default.aspx");
            Label1.Visible = true;
            Label1.Text = "Saved Successfully";
        }
        catch (Exception)
        {
            Label1.Visible = true;
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
        String VisitId = txtVisitId.Text;
        String DoctorId = txtDoctorAssigned.Text;
        String AppointDate = txtAppointDate.Text;
        var Email = "";


        string queryString = "select Email from tblDoctors where [DoctorId]='" + @DoctorId + "';";
        using (SqlConnection connection = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["MFMSconnectionstring"].ConnectionString))
        using (SqlCommand command = new SqlCommand(queryString, connection))
        {
            connection.Open();
            using (SqlDataReader reader = command.ExecuteReader())
            {
                // Call Read before accessing data. 
                reader.Read();
                Email = reader.GetString(0);

                // Call Close when done reading.
                reader.Close();
            }
        }
        try
        {
            MailMessage MyMessage = new MailMessage();
            MyMessage.Subject = "Welcome To MFMS";
            MyMessage.Body = "Hello Doctor, A Patient Named '" + @FirstName + "' '" + @LastName + "' with Visit Id '"+@VisitId+"' has booked an appointment with you at '"+@AppointDate+"'. This appointment has been Registered with Visit ID of '" + @VisitId + "'";
            MyMessage.From = new MailAddress("mfmsmail@yahoo.com", "MFMS Admin");
            MyMessage.To.Add(new MailAddress(Email));
            SmtpClient MySmtpClient = new SmtpClient();
            MySmtpClient.Send(MyMessage);
            Label2.Visible = true;
            Label2.Text = "Notifications Sent";
        }
        catch (Exception)
        {
            Label2.Visible = true;
            Label2.Text = "Notifications not sent";
        }


    }
    protected void RetryButton_Click(object sender, EventArgs e)
    {
        Email_Send();
    }
}