using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Billing_InPatientBilling : BasePage
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
        String VisitDate = "";
        String DoctorId = "";
        String DoctorCost = "";
        String RoomId = "";
        String RoomCost = "";
        String AllocationDate = "";

        GridViewRow row = GridView1.SelectedRow;
      
        VisitId = row.Cells[1].Text;
        PatientId = row.Cells[2].Text;
        FirstName = row.Cells[3].Text;
        LastName = row.Cells[4].Text;
        VisitDate = row.Cells[5].Text;
        DoctorId = row.Cells[6].Text;
        DoctorCost = row.Cells[7].Text;
        RoomId = row.Cells[8].Text;
        RoomCost = row.Cells[9].Text;
        AllocationDate = row.Cells[10].Text;
       
        txtVisitId.Text = VisitId;
        txtPatientId.Text = PatientId;
        txtFirstName.Text = FirstName;
        txtLastName.Text = LastName;
        txtDoctorId.Text = DoctorId;
        txtDoctorCost.Text = DoctorCost;
        txtVisitDate.Text = VisitDate;
        txtRoomId.Text = RoomId;
        txtRoomCost.Text = RoomCost;
        txtAllocationDate.Text = AllocationDate;

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
        String VisitDate = txtVisitDate.Text;
        String RoomId = txtRoomId.Text;
        float RoomCost = float.Parse(txtRoomCost.Text);
        String AllocationDate = txtAllocationDate.Text;
        float Days = float.Parse(txtDays.Text);
        float Additional = float.Parse(txtAdditional.Text);
        float Total = (RoomCost * Days) + DoctorCost + Additional;

        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "Insert Into tblInPatientBilling (VisitId,PatientId,FirstName,LastName,DoctorId,DoctorCost,VisitDate,RoomId,RoomCost,AllocationDate,Days,Total) VALUES (@VisitId,@PatientId,@FirstName,@LastName,@DoctorId,@DoctorCost,@VisitDate,@RoomId,@RoomCost,@AllocationDate,@Days,@Total)";
        cmd.Parameters.AddWithValue("VisitId", VisitId);
        cmd.Parameters.AddWithValue("PatientId", PatientId);
        cmd.Parameters.AddWithValue("FirstName", FirstName);
        cmd.Parameters.AddWithValue("LastName", LastName);
        cmd.Parameters.AddWithValue("DoctorId", DoctorId);
        cmd.Parameters.AddWithValue("DoctorCost", DoctorCost);
        cmd.Parameters.AddWithValue("VisitDate", VisitDate);
        cmd.Parameters.AddWithValue("RoomId", RoomId);
        cmd.Parameters.AddWithValue("RoomCost", RoomCost);
        cmd.Parameters.AddWithValue("AllocationDate", AllocationDate);
        cmd.Parameters.AddWithValue("Days", Days);
        cmd.Parameters.AddWithValue("Total", Total);

        try
        {
            cmd.Connection = con;
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Label1.Text = "Update Successful";
            Label2.Text = Total.ToString();
        }
        catch (Exception)
        {
            Label1.Text = "Something Went Wrong";
            
        }

    }
}