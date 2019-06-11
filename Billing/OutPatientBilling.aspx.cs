using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Billing_OutPatientBilling : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        String VisitId = "";
        String PatientId = "";
        String FirstName = "";
        String LastName = "";
        String DoctorId = "";
        String DoctorCost = "";

        GridViewRow row = GridView1.SelectedRow;

        VisitId = row.Cells[1].Text;
        PatientId = row.Cells[2].Text;
        FirstName = row.Cells[3].Text;
        LastName = row.Cells[4].Text;
        DoctorId = row.Cells[5].Text;
        DoctorCost = row.Cells[6].Text;

        txtVisitId.Text = VisitId;
        txtPatientId.Text = PatientId;
        txtFirstName.Text = FirstName;
        txtLastName.Text = LastName;
        txtDoctorId.Text = DoctorId;
        txtDoctorCost.Text = DoctorCost;
    }
    protected void SaveButton_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["MFMSconnectionstring"].ConnectionString;
        String VisitId = txtVisitId.Text;
        String PatientId = txtPatientId.Text;
        String FirstName = txtFirstName.Text;
        String LastName = txtLastName.Text;
        String DoctorId = txtDoctorId.Text;
        float DoctorCost = float.Parse(txtDoctorCost.Text);
        float Additional = float.Parse(txtAdditional.Text);
        float Total = DoctorCost + Additional;

        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "Insert into tblOutPatientBilling (VisitId,PatientId,FirstName,LastName,DoctorId,DoctorCost,Additional,Total) VALUES (@VisitId,@PatientId,@FirstName,@LastName,@DoctorId,@DoctorCost,@Additional,@Total)";
        cmd.Parameters.AddWithValue("@VisitId", VisitId);
        cmd.Parameters.AddWithValue("@PatientId", PatientId);
        cmd.Parameters.AddWithValue("@FirstName", FirstName);
        cmd.Parameters.AddWithValue("@LastName", LastName);
        cmd.Parameters.AddWithValue("@DoctorId", DoctorId);
        cmd.Parameters.AddWithValue("@DoctorCost", DoctorCost);
        cmd.Parameters.AddWithValue("@Additional", Additional);
        cmd.Parameters.AddWithValue("@Total", Total);

        try
        {
            cmd.Connection = con;
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Label1.Visible = true;
            Label1.Text = "Update Successfull";
            Label2.Visible = true;
            Label2.Text = Total.ToString();
        }
        catch (Exception)
        {
            Label1.Visible = true;
            Label1.Text = "Something Went Wrong";
            
        }
    }
}