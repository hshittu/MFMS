using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Demo_Search : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void SearchButton_Click(object sender, EventArgs e)
    {
        String FirstName = txtFirstName.Text;
        String LastName = txtLastName.Text;
    }
}