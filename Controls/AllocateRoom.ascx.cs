using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Controls_AllocateRoom : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void SaveButton_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["MFMSconnectionstring"].ConnectionString;
        int PatientId = Int32.Parse(txtPatientId.Text);
        String RoomType = txtRoomType.SelectedValue.ToString();
        String RoomNo = txtRoomNo.SelectedValue.ToString() ;

        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "UPDATE tblPatients SET [Room] = '"+@RoomNo+"' where [PatientId]='"+@PatientId+"'";
        cmd.Parameters.AddWithValue("@Room", RoomNo);
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
            
        }
    }
}