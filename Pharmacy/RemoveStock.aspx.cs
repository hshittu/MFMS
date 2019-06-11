using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Pharmacy_RemoveStock : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
        String MedicineId = "";
        String MedicineName = "";
        String Quantity = "";
        GridViewRow row = GridView1.SelectedRow;
        MedicineId = row.Cells[1].Text;
        MedicineName = row.Cells[2].Text;
        Quantity = row.Cells[3].Text;
        txtMedicineId.Text = MedicineId;
        txtMedicineName.Text = MedicineName;
        txtQuantity.Text = Quantity;
    }
    protected void RemoveButton_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["MFMSconnectionstring"].ConnectionString;
        String MedicineId = txtMedicineId.Text;
        String MedicineName = txtMedicineName.Text;
        float Quantity = float.Parse(txtQuantity.Text);
        float Deduction = float.Parse(txtDeduction.Text);
        float NewQuantity = Quantity - Deduction;

        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "Update tblMedicine SET [Quantity] = '" + @NewQuantity + "' where [MedicineId]='" + @MedicineId + "'";
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