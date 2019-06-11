using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Visits_EditVisit : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        String VisitId = "";
        String FirstName = "";
        String LastName = "";
        String PatientId = "";
        String Symptoms = "";
        String VitalSigns = "";
        String VisitDate = "";
        String Weight = "";
        String BloodPressure = "";

        GridViewRow row = GridView1.SelectedRow;

        VisitId = row.Cells[1].Text;
        FirstName = row.Cells[2].Text;
        LastName = row.Cells[3].Text;
        PatientId = row.Cells[4].Text;
        Symptoms = row.Cells[5].Text;
        VitalSigns = row.Cells[6].Text;
        VisitDate = row.Cells[7].Text;
        Weight = row.Cells[8].Text;
        BloodPressure = row.Cells[9].Text;

        txtVisitId.Text = VisitId;
        txtFirstName.Text = FirstName;
        txtLastName.Text = LastName;
        txtPatientId.Text = PatientId;
        txtSymptoms.Text = Symptoms;
        txtVitalSigns.Text = VitalSigns;
        txtVisitDate.Text = VisitDate;
        txtWeight.Text = Weight;
        txtBloodPressure.Text = BloodPressure;

    }
    protected void UpdateButton_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["MFMSconnectionstring"].ConnectionString;

        String VisitId = txtVisitId.Text;
        String Symptoms = txtSymptoms.Text;
        String VitalSigns = txtVitalSigns.Text;
        String Weight = txtWeight.Text;
        String BloodPressure = txtBloodPressure.Text;

        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "Update tblVisits set [VitalSigns]='" + @VitalSigns + "',[Symptoms]='" + @Symptoms + "',[Weight]='" + @Weight + "',[BloodPressure]='" + @BloodPressure + "' where [VisitId]='" + @VisitId + "'";
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