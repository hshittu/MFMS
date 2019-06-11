using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Demo_Codebehind : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "The time now is now : " + DateTime.Now.ToString();
    }
}