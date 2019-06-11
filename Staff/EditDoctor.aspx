<%@ Page Title="Edit Doctor" Language="C#" MasterPageFile="~/Masterpages/Frontend.master" AutoEventWireup="true" CodeFile="EditDoctor.aspx.cs" Inherits="Staff_EditDoctor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" Width="600px" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" DataKeyNames="DoctorId" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CellSpacing="2" ForeColor="Black">
    <Columns>
        <asp:CommandField ShowSelectButton="True" />
        <asp:BoundField DataField="DoctorId" HeaderText="DoctorId" InsertVisible="False" ReadOnly="True" SortExpression="DoctorId" />
        <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
        <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
        <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber" />
        <asp:BoundField DataField="EmergencyNumber" HeaderText="EmergencyNumber" SortExpression="EmergencyNumber" />
        <asp:BoundField DataField="Sex" HeaderText="Sex" SortExpression="Sex" />
        <asp:BoundField DataField="DoctorCost" HeaderText="DoctorCost" SortExpression="DoctorCost" />
        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
        <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
        <asp:BoundField DataField="ConsultationDays" HeaderText="ConsultationDays" SortExpression="ConsultationDays"/>
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
        <td colspan="2"><p>Edit Doctor</p></td>
    </tr>
    <tr>
        <td>Doctor Id</td>
        <td>
            <asp:TextBox ID="txtDoctorId" runat="server" ReadOnly="True"></asp:TextBox>
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
        <td>Phone Number</td>
        <td>
            <asp:TextBox ID="txtPhoneNumber" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>Emergency Number</td>
        <td>
            <asp:TextBox ID="txtEmergencyNumber" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>Sex</td>
        <td>
            <asp:TextBox ID="txtSex" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>Doctor Cost</td>
        <td>
            <asp:TextBox ID="txtDoctorCost" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>Email</td>
        <td>
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>Address</td>
        <td>
            <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>Consultation Days</td>
        <td>
            <asp:TextBox ID="txtConsultationDays" runat="server" TextMode="MultiLine"></asp:TextBox>
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
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MFMSconnectionstring %>" SelectCommand="SELECT [DoctorId], [FirstName], [LastName], [PhoneNumber], [EmergencyNumber], [Sex], [DoctorCost], [Email], [Address], [ConsultationDays] FROM [tblDoctors]"></asp:SqlDataSource>
</asp:Content>

