<%@ Page Title="All Doctors Report View" Language="C#" MasterPageFile="~/Masterpages/Frontend.master" AutoEventWireup="true" CodeFile="DoctorRBview.aspx.cs" Inherits="Staff_DoctorRBview" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <rsweb:ReportViewer ID="ReportViewer1" runat="server" Height="500px" Width="1000px">
        <LocalReport ReportPath="Staff/DoctorRB.rdl">
             <DataSources>
                <rsweb:ReportDataSource DataSourceId="SqlDataSource1" Name="DataSet1" />
            </DataSources>
        </LocalReport>
    </rsweb:ReportViewer>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:MFMSconnectionstring %>' SelectCommand="SELECT [DoctorId], [FirstName], [LastName], [PhoneNumber], [EmergencyNumber], [Sex], [DoctorCost], [RegistrationDate], [Email], [Address], [ConsultationDays] FROM [tblDoctors]"></asp:SqlDataSource>
</asp:Content>

