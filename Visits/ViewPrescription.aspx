<%@ Page Title="View Prescription" Language="C#" MasterPageFile="~/Masterpages/Frontend.master" AutoEventWireup="true" CodeFile="ViewPrescription.aspx.cs" Inherits="Visits_ViewPrescription" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" DataKeyNames="PrescriptionId" DataSourceID="SqlDataSource1" CellSpacing="2" ForeColor="Black">
        <Columns>
            <asp:BoundField DataField="PrescriptionId" HeaderText="PrescriptionId" InsertVisible="False" ReadOnly="True" SortExpression="PrescriptionId" />
            <asp:BoundField DataField="VisitId" HeaderText="VisitId" SortExpression="VisitId" />
            <asp:BoundField DataField="VitalSigns" HeaderText="VitalSigns" SortExpression="VitalSigns" />
            <asp:BoundField DataField="Symptoms" HeaderText="Symptoms" SortExpression="Symptoms" />
            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
            <asp:BoundField DataField="Prescription" HeaderText="Prescription" SortExpression="Prescription" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MFMSconnectionstring %>" SelectCommand="SELECT [PrescriptionId], [VisitId], [VitalSigns], [Symptoms], [Date], [Prescription] FROM [tblVisitPrescription]"></asp:SqlDataSource>
</asp:Content>

