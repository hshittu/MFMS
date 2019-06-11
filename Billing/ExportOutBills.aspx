<%@ Page Title="Export OutPatient Bills" Language="C#" EnableEventValidation="false" MasterPageFile="~/Masterpages/Frontend.master" AutoEventWireup="true" CodeFile="ExportOutBills.aspx.cs" Inherits="Billing_ExportOutBills" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" DataKeyNames="BillingId" DataSourceID="SqlDataSource1" CellSpacing="2" ForeColor="Black">
        <Columns>
            <asp:BoundField DataField="BillingId" HeaderText="BillingId" InsertVisible="False" ReadOnly="True" SortExpression="BillingId" />
            <asp:BoundField DataField="VisitId" HeaderText="VisitId" SortExpression="VisitId" />
            <asp:BoundField DataField="PatientId" HeaderText="PatientId" SortExpression="PatientId" />
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
            <asp:BoundField DataField="DoctorId" HeaderText="DoctorId" SortExpression="DoctorId" />
            <asp:BoundField DataField="DoctorCost" HeaderText="DoctorCost" SortExpression="DoctorCost" />
            <asp:BoundField DataField="Additional" HeaderText="Additional" SortExpression="Additional" />
            <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <RowStyle BackColor="White" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
    <asp:Button ID="btnWordExport" runat="server" OnClick="btnWordExport_Click" Text="Export to Word" />
    <asp:Button ID="btnPDFExport" runat="server" OnClick="btnPDFExport_Click" Text="Export to PDF" />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MFMSconnectionstring %>" SelectCommand="SELECT [BillingId], [VisitId], [PatientId], [FirstName], [LastName], [DoctorId], [DoctorCost], [Additional], [Total] FROM [tblOutPatientBilling]"></asp:SqlDataSource>
</asp:Content>

