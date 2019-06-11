<%@ Page Title="View Data on Report Viewer" Language="C#" MasterPageFile="~/Masterpages/Frontend.master" AutoEventWireup="true" CodeFile="NurseRBview.aspx.cs" Inherits="Staff_NurseRBview" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <rsweb:ReportViewer ID="ReportViewer1" runat="server" Width="1000px">
        <LocalReport ReportPath="Staff/NurseRB.rdl">
            <DataSources>
                <rsweb:ReportDataSource DataSourceId="sqlDataSource1" Name="DataSet1" />
            </DataSources>
        </LocalReport>
    </rsweb:ReportViewer>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:MFMSconnectionstring %>' SelectCommand="SELECT [NurseId], [FirstName], [LastName], [Age], [Sex], [RegistrationDate], [Address], [Email], [PhoneNumber] FROM [tblNurses]"></asp:SqlDataSource>
</asp:Content>

