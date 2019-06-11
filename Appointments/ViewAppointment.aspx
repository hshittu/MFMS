<%@ Page Title="View Appointments" Language="C#" MasterPageFile="~/Masterpages/Frontend.master" AutoEventWireup="true" CodeFile="ViewAppointment.aspx.cs" Inherits="Appointments_ViewAppointment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <asp:DropDownList ID="txtDoctorAssigned" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="FirstName" DataValueField="DoctorId">
    </asp:DropDownList>
    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource2" CellPadding="4" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="AppointmentId" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellSpacing="2" ForeColor="Black">
        <Columns>
            <asp:BoundField DataField="AppointmentId" HeaderText="AppointmentId" InsertVisible="False" ReadOnly="True" SortExpression="AppointmentId" />
            <asp:BoundField DataField="VisitId" HeaderText="VisitId" SortExpression="VisitId" />
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
            <asp:BoundField DataField="VitalSigns" HeaderText="VitalSigns" SortExpression="VitalSigns" />
            <asp:BoundField DataField="Weight" HeaderText="Weight" SortExpression="Weight" />
            <asp:BoundField DataField="BloodPressure" HeaderText="BloodPressure" SortExpression="BloodPressure" />
            <asp:BoundField DataField="AppointDate" HeaderText="AppointDate" SortExpression="AppointDate" />
            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
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
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MFMSconnectionstring %>" SelectCommand="SELECT [AppointmentId], [VisitId], [FirstName], [LastName], [VitalSigns], [Weight], [BloodPressure], [AppointDate], [Date] FROM [tblAppointments] WHERE ([DoctorAssigned] = @DoctorAssigned)">
        <SelectParameters>
            <asp:ControlParameter ControlID="txtDoctorAssigned" Name="DoctorAssigned" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MFMSconnectionstring %>" SelectCommand="SELECT [DoctorId], [FirstName] FROM [tblDoctors]"></asp:SqlDataSource>
</asp:Content>

