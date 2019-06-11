<%@ Page Title=" Edit Appointments" Language="C#" MasterPageFile="~/Masterpages/Frontend.master" AutoEventWireup="true" CodeFile="EditAppointment.aspx.cs" Inherits="Appointments_EditAppointment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" DataKeyNames="AppointmentId" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CellSpacing="2" ForeColor="Black">
    <Columns>
        <asp:CommandField ShowSelectButton="True" />
        <asp:BoundField DataField="AppointmentId" HeaderText="AppointmentId" InsertVisible="False" ReadOnly="True" SortExpression="AppointmentId" />
        <asp:BoundField DataField="VisitId" HeaderText="VisitId" SortExpression="VisitId" />
        <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
        <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
        <asp:BoundField DataField="VitalSigns" HeaderText="VitalSigns" SortExpression="VitalSigns" />
        <asp:BoundField DataField="Weight" HeaderText="Weight" SortExpression="Weight" />
        <asp:BoundField DataField="BloodPressure" HeaderText="BloodPressure" SortExpression="BloodPressure" />
        <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
        <asp:BoundField DataField="AppointDate" HeaderText="AppointDate" SortExpression="AppointDate" />
        <asp:BoundField DataField="DoctorAssigned" HeaderText="DoctorAssigned" SortExpression="DoctorAssigned" />
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
<table class="auto-style1">
    <tr>
        <td colspan="2"><p>Reschedule Created Appointments</p></td>
    </tr>
    <tr>
        <td>Appointment Id</td>
        <td>
            <asp:TextBox ID="txtAppointmentId" runat="server" ReadOnly="True"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>Visit Id</td>
        <td>
            <asp:TextBox ID="txtVisitId" runat="server" ReadOnly="True"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>First Name</td>
        <td>
            <asp:TextBox ID="txtFirstName" runat="server" ReadOnly="True"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>Last Name</td>
        <td>
            <asp:TextBox ID="txtLastName" runat="server" ReadOnly="True"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>Vital Signs</td>
        <td>
            <asp:TextBox ID="txtVitalSigns" runat="server" ReadOnly="True" TextMode="MultiLine"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>Weight</td>
        <td>
            <asp:TextBox ID="txtWeight" runat="server" ReadOnly="True"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>Blood Pressure</td>
        <td>
            <asp:TextBox ID="txtBloodPressure" runat="server" ReadOnly="True"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>Date</td>
        <td>
            <asp:TextBox ID="txtDate" runat="server" ReadOnly="True"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>Appointment Date</td>
        <td>
            <asp:TextBox ID="txtAppointDate" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>Doctor Assigned</td>
        <td>
            <asp:DropDownList ID="txtDoctorAssigned" runat="server" DataSourceID="SqlDataSource2" DataTextField="FirstName" DataValueField="DoctorId">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MFMSconnectionstring %>" SelectCommand="SELECT [DoctorId], [FirstName] FROM [tblDoctors]"></asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </td>
        <td>
            <asp:Button ID="UpdateButton" runat="server" OnClick="UpdateButton_Click" Text="Update" />
        </td>
    </tr>
</table>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MFMSconnectionstring %>" SelectCommand="SELECT [AppointmentId], [VisitId], [FirstName], [LastName], [VitalSigns], [Weight], [BloodPressure], [Date], [AppointDate], [DoctorAssigned] FROM [tblAppointments]"></asp:SqlDataSource>
</asp:Content>

