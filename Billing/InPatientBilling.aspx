<%@ Page Title="Bill In-Patient" Language="C#" MasterPageFile="~/Masterpages/Frontend.master" AutoEventWireup="true" CodeFile="InPatientBilling.aspx.cs" Inherits="Billing_InPatientBilling" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="VisitId" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CellSpacing="2" ForeColor="Black">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="VisitId" HeaderText="VisitId" InsertVisible="False" ReadOnly="True" SortExpression="VisitId" />
            <asp:BoundField DataField="PatientId" HeaderText="PatientId" SortExpression="PatientId" />
             <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
             <asp:BoundField DataField="VisitDate" HeaderText="VisitDate" SortExpression="VisitDate" />
             <asp:BoundField DataField="DoctorAssigned" HeaderText="DoctorAssigned" SortExpression="DoctorAssigned" />
             <asp:BoundField DataField="DoctorCost" HeaderText="DoctorCost" SortExpression="DoctorCost" />
            <asp:BoundField DataField="Room" HeaderText="Room" SortExpression="Room" />
            <asp:BoundField DataField="RoomCost" HeaderText="RoomCost" SortExpression="RoomCost" />
            <asp:BoundField DataField="AllocationDate" HeaderText="AllocationDate" SortExpression="AllocationDate" />
            <asp:BoundField DataField="PatientType" HeaderText="PatientType" SortExpression="PatientType" />
          
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MFMSconnectionstring %>" SelectCommand="SELECT DISTINCT tblVisits.VisitId, tblVisits.PatientId, tblVisits.VisitDate, tblAppointments.DoctorAssigned, tblPatients.Room, tblRooms.RoomCost, tblPatients.FirstName, tblPatients.LastName, tblDoctors.DoctorCost, tblPatients.PatientType, tblPatients.AllocationDate FROM tblVisits INNER JOIN tblAppointments ON tblVisits.VisitId = tblAppointments.VisitId INNER JOIN tblDoctors ON tblAppointments.DoctorAssigned = tblDoctors.DoctorId INNER JOIN tblPatients ON tblVisits.PatientId = tblPatients.PatientId INNER JOIN tblRooms ON tblPatients.Room = tblRooms.RoomId WHERE (tblPatients.PatientType = 'InPatient')"></asp:SqlDataSource>
    <table class="auto-style1">
        <tr>
            <td colspan="2"><p>Save InPatient Bill</p></td>
        </tr>
        <tr>
            <td>Visit Id</td>
            <td>
                <asp:TextBox ID="txtVisitId" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Patient Id</td>
            <td>
                <asp:TextBox ID="txtPatientId" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Patient First Name</td>
            <td>
                <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Patient Last Name</td>
            <td>
                <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Doctor Id</td>
            <td>
                <asp:TextBox ID="txtDoctorId" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Doctor Cost</td>
            <td>
                <asp:TextBox ID="txtDoctorCost" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Visit Date</td>
            <td>
                <asp:TextBox ID="txtVisitDate" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Ward Id</td>
            <td>
                <asp:TextBox ID="txtRoomId" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Ward Cost</td>
            <td>
                <asp:TextBox ID="txtRoomCost" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Allocation Date</td>
            <td>
                <asp:TextBox ID="txtAllocationDate" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Days</td>
            <td>
                <asp:TextBox ID="txtDays" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Additional</td>
            <td>
                <asp:TextBox ID="txtAdditional" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Total:</td>
            <td>
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Button ID="SaveButton" runat="server" Text="Save" OnClick="SaveButton_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

