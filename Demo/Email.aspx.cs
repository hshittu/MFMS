using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

public partial class Demo_Email : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        MailMessage myMessage = new MailMessage();
        myMessage.Subject = "Test Message";
        myMessage.Body = "Hello world, from Planet Wrox";
        myMessage.From = new MailAddress("Shittu_ayodeji@yahoo.com", "Shittu Ayodeji");
        myMessage.To.Add(new MailAddress("Goodkiiiid@Gmail.com", "hello there"));
        SmtpClient mySmtpClient = new SmtpClient();
        mySmtpClient.Send(myMessage);
    }
}