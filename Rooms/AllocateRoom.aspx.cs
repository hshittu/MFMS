using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Rooms_AllocateRoom : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        txtAllocationDate.Text = System.DateTime.Now.ToString();
    }
    protected void SaveButton_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["MFMSconnectionstring"].ConnectionString;
        //String PatientId = txtPatientId.Text;
        int PatientId = Int32.Parse(txtPatientId.Text);
        String FirstName = txtFirstName.Text;
        String RoomId = txtRoomId.Text;
        String AllocationDate = txtAllocationDate.Text;

        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "UPDATE tblPatients SET [Room] = '" + @RoomId + "',[AllocationDate] = '" + @AllocationDate + "' where [PatientId]='" + @PatientId + "'";
        cmd.Parameters.AddWithValue("@Room", RoomId);
        try
        {
            cmd.Connection = con;
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("../Rooms/AllocateRoom.aspx");
        }
        catch (Exception)
        {
            Label1.Text = "Something went wrong";

        }
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
    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {
        String RoomId = "";
        GridViewRow row = GridView2.SelectedRow;
        RoomId = row.Cells[1].Text;
        txtRoomId.Text = RoomId;
    }
}