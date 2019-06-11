using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
public partial class Patients_PatientPhotoUpload : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void UploadButton_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["MFMSconnectionstring"].ConnectionString;

        if (FileUpload1.PostedFile != null)
        {
            String PatientId = txtPatientId.Text;
        String FileName = Path.GetFileName(FileUpload1.PostedFile.FileName);
        FileUpload1.SaveAs(Server.MapPath("PatientImages/" + FileName));
        ImagePreview.ImageUrl = "PatientImages/" + FileUpload1.FileName;
        String ImagePath = "PatientImages/" + FileName;

        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "UPDATE tblPatients set [ImagePath] = '"+@ImagePath+"' where [PatientId]='" + @PatientId + "'";
            cmd.Parameters.AddWithValue("@ImagePath",ImagePath);
            try
            {
                cmd.Connection = con;
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Label1.Text = "Üpload Successful";

            }
            catch (Exception)
            {
                Label1.Text = "Something went wrong";
                
            }
        }
        
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        String PatientId = "";
        GridViewRow row = GridView1.SelectedRow;
        PatientId = row.Cells[1].Text;
        txtPatientId.Text = PatientId;
    }
}