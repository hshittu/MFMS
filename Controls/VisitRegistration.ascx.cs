using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Controls_VisitRegistration : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        txtVisitDate.Text = System.DateTime.Now.ToString();

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        String PatientId = "";
        String FirstName = "";
        String LastName = "";
        
        GridViewRow row = GridView1.SelectedRow;
        PatientId = row.Cells[1].Text;
        FirstName = row.Cells[2].Text;
        LastName = row.Cells[3].Text;
        txtPatientId.Text = PatientId;
        txtFirstName.Text = FirstName;
        txtLastName.Text = LastName;
        
    }
    
    protected void SaveButton_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["MFMSconnectionstring"].ConnectionString;
        string FirstName = txtFirstName.Text;
        string LastName = txtLastName.Text;
        string PatientId = txtPatientId.Text;
        string VitalSigns = txtVitalSigns.Text;
        string Symptoms = txtSymptoms.Text;
        string VisitDate = txtVisitDate.Text;
        string Weight = txtWeight.Text;
        string BloodPressure = txtBloodPressure.Text;

        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "INSERT INTO tblVisits(FirstName,LastName,PatientId,VitalSigns,Symptoms,VisitDate,Weight,BloodPressure) VALUES(@FirstName,@LastName,@PatientId,@VitalSigns,@Symptoms,@VisitDate,@Weight,@BloodPressure)";
        cmd.Parameters.AddWithValue("@FirstName", FirstName);
        cmd.Parameters.AddWithValue("@LastName", LastName);
        cmd.Parameters.AddWithValue("@PatientId", PatientId);
        cmd.Parameters.AddWithValue("@VitalSigns", VitalSigns);
        cmd.Parameters.AddWithValue("@Symptoms", Symptoms);
        cmd.Parameters.AddWithValue("@VisitDate", VisitDate);
        cmd.Parameters.AddWithValue("@Weight", Weight);
        cmd.Parameters.AddWithValue("@BloodPressure", BloodPressure);

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
            Label1.Visible=true;
            
        }

    }
   
}