using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Rooms_EditRoom : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        String RoomId = "";
        String RoomCost = "";

        GridViewRow row = GridView1.SelectedRow;
        RoomId = row.Cells[1].Text;
        RoomCost= row.Cells[4].Text;
        txtRoomId.Text = RoomId;
        txtRoomCost.Text = RoomCost;

    }
    protected void UpdateButton_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["MFMSconnectionstring"].ConnectionString;
        String RoomId = txtRoomId.Text;
        String RoomType = txtRoomType.SelectedItem.ToString();
        String RoomGrade = txtRoomGrade.SelectedItem.ToString();
        String RoomCost = txtRoomCost.Text;
        String RoomSexType = txtRoomSexType.SelectedItem.ToString();

        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "Update tblRooms set [RoomType]='" + @RoomType + "',[RoomGrade]='" + @RoomGrade + "',[RoomCost]='"+@RoomCost+"',[RoomSexType]='"+@RoomSexType+"' where [RoomId]='"+@RoomId+"'";

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