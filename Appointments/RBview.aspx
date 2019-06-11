<%@ Page Title="Report Viewer View" Language="C#" MasterPageFile="~/Masterpages/Frontend.master" AutoEventWireup="true" CodeFile="RBview.aspx.cs" Inherits="Appointments_RBview" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <rsweb:ReportViewer ID="ReportViewer1" runat="server" Height="500px" Width="1000px">
        <LocalReport ReportPath="Appointments/Untitled.rdl">
            <DataSources>
                <rsweb:ReportDataSource DataSourceId="SqlDataSource1" Name="DataSet1" />
            </DataSources>
        </LocalReport>
    </rsweb:ReportViewer>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MFMSconnectionstring %>" SelectCommand="SELECT [AppointmentId], [VisitId], [FirstName], [LastName], [VitalSigns], [BloodPressure], [Weight], [Date], [AppointDate], [DoctorAssigned] FROM [tblAppointments]"></asp:SqlDataSource>
</asp:Content>

