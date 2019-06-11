using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Controls_CreateAppointment : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        txtDate.Text = System.DateTime.Now.ToString();
    }
    protected void SaveButton_Click(object sender, EventArgs e)
    {
       SqlConnection con = new SqlConnection();
       con.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["MFMSconnectionstring"].ConnectionString;
       String VisitId = txtVisitId.Text;
       String Date = txtDate.Text;
       String DoctorAssigned = txtDoctorAssigned.SelectedValue.ToString();

       SqlCommand cmd = new SqlCommand();
       cmd.CommandText = "INSERT INTO tblAppointments(VisitId,Date,DoctorAssigned) VALUES (@VisitId,@Date,@DoctorAssigned)";
       cmd.Parameters.AddWithValue("@VisitId", VisitId);
       cmd.Parameters.AddWithValue("@Date", Date);
       cmd.Parameters.AddWithValue("@DoctorAssigned", DoctorAssigned);

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
           Label1.Visible = true;
           Label1.Text = "Something went wrong";
          
       }


    }
}