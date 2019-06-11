using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class Pharmacy_AddMedicine : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        txtDate.Text = System.DateTime.Now.ToString();
    }
    protected void AddButton_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["MFMSconnectionstring"].ConnectionString;
        String MedicineName = txtMedicineName.Text;
        String Quantity = txtQuantity.Text;
        String MedicineType = txtMedicineType.Text;
        String SideEffects = txtSideEffects.Text;
        String Price = txtPrice.Text;
        String Date = txtDate.Text;

        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "Insert into tblMedicine (MedicineName,Quantity,MedicineType,SideEffects,Price,Date) VALUES (@MedicineName,@Quantity,@MedicineType,@SideEffects,@Price,@Date)";
        cmd.Parameters.AddWithValue("@MedicineName", MedicineName);
        cmd.Parameters.AddWithValue("@Quantity", Quantity);
        cmd.Parameters.AddWithValue("@MedicineType", MedicineType);
        cmd.Parameters.AddWithValue("@SideEffects", SideEffects);
        cmd.Parameters.AddWithValue("@Price", Price);
        cmd.Parameters.AddWithValue("@Date", Date);
        try
        {
            cmd.Connection = con;
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Label1.Text = "Data Added Successfully";
            Response.Redirect("../Pharmacy/AddMedicine.aspx");
        }
        catch (Exception)
        {
            Label1.Text = "Something went wrong";
           
        }
    }
}