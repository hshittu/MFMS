<%@ Page Title="Bill OutPatients" Language="C#" MasterPageFile="~/Masterpages/Frontend.master" AutoEventWireup="true" CodeFile="OutPatientBilling.aspx.cs" Inherits="Billing_OutPatientBilling" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" DataKeyNames="VisitId" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CellSpacing="2" ForeColor="Black">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="VisitId" HeaderText="VisitId" InsertVisible="False" ReadOnly="True" SortExpression="VisitId" />
            <asp:BoundField DataField="PatientId" HeaderText="PatientId" SortExpression="PatientId" />
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
            <asp:BoundField DataField="DoctorAssigned" HeaderText="DoctorAssigned" SortExpression="DoctorAssigned" />
            <asp:BoundField DataField="DoctorCost" HeaderText="DoctorCost" SortExpression="DoctorCost" />
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
    <table class="auto-style1">
        <tr>
            <td colspan="2"><p>Save OutPatient Bill</p></td>
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
            <td>First Name</td>
            <td>
                <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Last Name</td>
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
            <td>Additional</td>
            <td>
                <asp:TextBox ID="txtAdditional" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Total</td>
            <td class="auto-style2">
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Button ID="SaveButton" runat="server" OnClick="SaveButton_Click" Text="Save" />
            </td>
        </tr>
    </table>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MFMSconnectionstring %>" SelectCommand="SELECT DISTINCT tblVisits.VisitId, tblVisits.PatientId, tblPatients.FirstName, tblPatients.LastName, tblAppointments.DoctorAssigned, tblDoctors.DoctorCost, tblPatients.PatientType FROM tblVisits INNER JOIN tblPatients ON tblVisits.PatientId = tblPatients.PatientId INNER JOIN tblAppointments ON tblVisits.VisitId = tblAppointments.VisitId INNER JOIN tblDoctors ON tblAppointments.DoctorAssigned = tblDoctors.DoctorId WHERE (tblPatients.PatientType = 'OutPatient')"></asp:SqlDataSource>
</asp:Content>

