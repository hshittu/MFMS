using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Appointments_EditAppointment : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        String AppointmentId = "";
        String VisitId = "";
        String FirstName = "";
        String LastName = "";
        String VitalSigns = "";
        String Weight = "";
        String BloodPressure = "";
        String Date = "";
        String AppointDate = "";

        GridViewRow row = GridView1.SelectedRow;

        AppointmentId = row.Cells[1].Text;
        VisitId = row.Cells[2].Text;
        FirstName = row.Cells[3].Text;
        LastName = row.Cells[4].Text;
        VitalSigns = row.Cells[5].Text;
        Weight = row.Cells[6].Text;
        BloodPressure = row.Cells[7].Text;
        Date = row.Cells[8].Text;
        AppointDate = row.Cells[9].Text;

        txtAppointmentId.Text = AppointmentId;
        txtVisitId.Text = VisitId;
        txtFirstName.Text = FirstName;
        txtLastName.Text = LastName;
        txtVitalSigns.Text = VitalSigns;
        txtWeight.Text = Weight;
        txtBloodPressure.Text = BloodPressure;
        txtDate.Text = Date;
        txtAppointDate.Text = AppointDate;
    }
    protected void UpdateButton_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["MFMSconnectionstring"].ConnectionString;
        String AppointmentId = txtAppointmentId.Text;
        String AppointDate = txtAppointDate.Text;
        String DoctorAssigned = txtDoctorAssigned.SelectedValue.ToString();

        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "Update tblAppointments set [AppointDate]='" + @AppointDate + "',[DoctorAssigned]='" + @DoctorAssigned + "' where [AppointmentId]='" + @AppointmentId + "'";
        try
        {
            cmd.Connection = con;
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Label1.Visible = true;
            Label1.Text = "Update Successful";
        }
        catch (Exception)
        {
            Label1.Visible = true;
            Label1.Text = "Something went Wrong";
            
        }
    }
}