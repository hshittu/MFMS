using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.IO;

public partial class Controls_PatientRegistrationForm : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        txtAdmissionDate.Text = System.DateTime.Now.ToString();
    }
    protected void SaveButton_Click(object sender, EventArgs e)
    {
        


            SqlConnection con = new SqlConnection();
            con.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["MFMSconnectionstring"].ConnectionString;
            String FirstName = txtFirstName.Text;
            String LastName = txtLastName.Text;
            String Email = txtEmailAddress.Text;
            String PhoneNumber = txtPhoneNumber.Text;
            String PatientType = txtPatientType.SelectedItem.ToString();
            String BloodGroup = txtBloodGroup.SelectedItem.ToString();
            String Genotype = txtGenotype.SelectedItem.ToString();
            String PatientAge = txtPatientAge.Text;
            String PatientAddress = txtPatientAddress.Text;
            String Sex = txtSex.SelectedItem.ToString();
            String AdmissionDate = txtAdmissionDate.Text;
            String Comment = txtComment.Text;
           
        //String Path = Server.MapPath("Images/");
        //FileUpload1.SaveAs(Path + FileUpload1.FileName);
        //String Name = "~/Images/" + FileUpload1.FileName;

            String FileName = Path.GetFileName(FileUpload1.PostedFile.FileName);
            FileUpload1.SaveAs(Server.MapPath("PatientImages/" + FileName));

 
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = " INSERT INTO tblPatients (FirstName,LastName,Email,ImagePath,PhoneNumber,PatientType,BloodGroup,Genotype,PatientAge,PatientAddress,sex,AdmissionDate,Comment) VALUES (@FirstName, @LastName,@Email,@ImagePath,@PhoneNumber,@PatientType,@BloodGroup,@Genotype,@PatientAge,@PatientAddress,@Sex,@AdmissionDate,@Comment)";

            cmd.Parameters.AddWithValue("@FirstName", FirstName);
            cmd.Parameters.AddWithValue("@LastName", LastName);
            cmd.Parameters.AddWithValue("@Email", Email);
            cmd.Parameters.AddWithValue("@ImagePath", "PatientImages/" + FileName);
            cmd.Parameters.AddWithValue("@PhoneNumber", PhoneNumber);
            cmd.Parameters.AddWithValue("@PatientType", PatientType);
            cmd.Parameters.AddWithValue("@BloodGroup", BloodGroup);
            cmd.Parameters.AddWithValue("@Genotype", Genotype);
            cmd.Parameters.AddWithValue("@PatientAge", PatientAge);
            cmd.Parameters.AddWithValue("@PatientAddress", PatientAddress);
            cmd.Parameters.AddWithValue("@Sex", Sex);
            cmd.Parameters.AddWithValue("@AdmissionDate", AdmissionDate);
            cmd.Parameters.AddWithValue("@Comment", Comment);

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
