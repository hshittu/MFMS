using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Visits_VisitPrescription : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        txtDate.Text = System.DateTime.Now.ToString();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        String VisitId = "";
        String VitalSigns = "";
        String Symptoms = "";

        GridViewRow row = GridView1.SelectedRow;
        VisitId = row.Cells[1].Text;
        VitalSigns = row.Cells[5].Text;
        Symptoms = row.Cells[6].Text;
        txtVisitId.Text = VisitId;
        txtVitalSigns.Text = VitalSigns;
        txtSymptoms.Text = Symptoms;
    }
    protected void SaveButton_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["MFMSconnectionstring"].ConnectionString;
        String VisitId = txtVisitId.Text;
        String VitalSigns = txtVitalSigns.Text;
        String Symptoms = txtSymptoms.Text;
        String Date = txtDate.Text;
        String Prescription = txtPrescription.Text;

        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "Insert into tblVisitPrescription (VisitId,VitalSigns,Symptoms,Date,Prescription) VALUES (@VisitId,@VitalSigns,@Symptoms,@Date,@Prescription)";
        cmd.Parameters.AddWithValue("@VisitId", VisitId);
        cmd.Parameters.AddWithValue("@VitalSigns", VitalSigns);
        cmd.Parameters.AddWithValue("@Symptoms", Symptoms);
        cmd.Parameters.AddWithValue("@Date", Date);
        cmd.Parameters.AddWithValue("@Prescription", Prescription);

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