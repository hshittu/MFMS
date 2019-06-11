using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Controls_AddRoom : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        txtDate.Text = System.DateTime.Now.ToString();
    }
    protected void SaveButton_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["MFMSconnectionstring"].ConnectionString;
        String RoomType = txtRoomType.SelectedItem.ToString();
        String RoomGrade = txtRoomGrade.SelectedItem.ToString();
        String RoomCost = txtRoomCost.Text;
        String Date = txtDate.Text;

        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "INSERT INTO tblRooms(RoomType,RoomGrade,RoomCost,Date) VALUES (@RoomType,@RoomGrade,@RoomCost,@Date)";
        cmd.Parameters.AddWithValue("@RoomType", RoomType);
        cmd.Parameters.AddWithValue("@RoomGrade", RoomGrade);
        cmd.Parameters.AddWithValue("@RoomCost", RoomCost);
        cmd.Parameters.AddWithValue("@Date", Date);

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

            Label2.Text = "Something went wrong";
            Label2.Visible = true;
        }
    }
}