<%@ Page Title="View Receptionists on Report Viewer" Language="C#" MasterPageFile="~/Masterpages/Frontend.master" AutoEventWireup="true" CodeFile="ReceptionistRBview.aspx.cs" Inherits="Staff_ReceptionistRBview" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <rsweb:ReportViewer ID="ReportViewer1" runat="server" Height="500px" Width="1000px">
        <LocalReport ReportPath="Staff/ReceptionistRB.rdl">
            <DataSources>
                <rsweb:ReportDataSource DataSourceId="SqlDataSource1" Name="DataSet1" />
            </DataSources>
        </LocalReport>
    </rsweb:ReportViewer>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:MFMSconnectionstring %>' SelectCommand="SELECT [ReceptionistId], [FirstName], [LastName], [PhoneNumber], [Sex], [RegistrationDate], [Email], [Address] FROM [tblReceptionists]"></asp:SqlDataSource>
</asp:Content>

