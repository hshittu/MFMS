﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using iTextSharp.text;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;
using iTextSharp.tool.xml;

public partial class Billing_Default : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (txtPatientType.SelectedItem.Value == "InPatient")
        {
            GridView1.Visible = true;
            PrintButton.Visible = true;

            GridView2.Visible = false;
            PrintButton1.Visible = false;

        }
        else if (txtPatientType.SelectedItem.Value=="OutPatient")
        {
            GridView2.Visible = true;
            PrintButton1.Visible = true;

            GridView1.Visible = false;
            PrintButton.Visible = false;
        }
    }
    protected void btnWordExport_Click(object sender, EventArgs e)
    {
        Word_Export();
    }
    protected void btnPDFExport_Click(object sender, EventArgs e)
    {
        PDF_Export();
    }
    private void Word_Export()
    {
        Response.Clear();
        Response.Buffer = true;
        Response.AddHeader("content-disposition",
          "attachment;filename=GridViewExport.doc");
        Response.Charset = "";
        Response.ContentType = "application/vnd.ms-word ";
        StringWriter sw = new StringWriter();
        HtmlTextWriter hw = new HtmlTextWriter(sw);
        GridView1.AllowPaging = false;
        GridView1.DataBind();
        GridView1.RenderControl(hw);
        Response.Output.Write(sw.ToString());
        Response.Flush();
        Response.End();
    }
    private void PDF_Export()
    {
        using (StringWriter sw = new StringWriter())
        {
            using (HtmlTextWriter hw = new HtmlTextWriter(sw))
            {


                GridView1.RenderControl(hw);
                StringReader sr = new StringReader(sw.ToString());
                Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 10f, 0f);
                PdfWriter writer = PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
                pdfDoc.Open();
                iTextSharp.tool.xml.XMLWorkerHelper.GetInstance().ParseXHtml(writer, pdfDoc, sr);
                pdfDoc.Close();
                Response.ContentType = "application/pdf";
                Response.AddHeader("content-disposition", "attachment;filename=GridViewExport.pdf");
                Response.Cache.SetCacheability(HttpCacheability.NoCache);
                Response.Write(pdfDoc);
                Response.End();
            }
        }
    }
    public override void VerifyRenderingInServerForm(Control control)
    {
        /* Verifies that the control is rendered */
    }
}