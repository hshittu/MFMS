<%@ Page Title="View Pharmacists on Report Viewer" Language="C#" MasterPageFile="~/Masterpages/Frontend.master" AutoEventWireup="true" CodeFile="PharmacistRBview.aspx.cs" Inherits="Staff_PharmacistRBview" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <rsweb:ReportViewer ID="ReportViewer1" runat="server" Width="1000px" Height="600px">
        <LocalReport ReportPath="Staff/PharmacistRB.rdl">
            <DataSources>
                <rsweb:ReportDataSource DataSourceId="SqlDataSource1" Name="DataSet1" />
            </DataSources>
        </LocalReport>
    </rsweb:ReportViewer>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MFMSconnectionstring %>" SelectCommand="SELECT [PharmacistId], [FirstName], [LastName], [PhoneNumber], [Sex], [RegistrationDate], [Email], [Address] FROM [tblPharmacists]"></asp:SqlDataSource>
</asp:Content>

