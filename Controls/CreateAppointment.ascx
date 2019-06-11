<%@ Control Language="C#" AutoEventWireup="true" CodeFile="CreateAppointment.ascx.cs" Inherits="Controls_CreateAppointment" %>
<style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        height: 23px;
    }
</style>

<table class="auto-style1">
    <tr>
        <td colspan="3">This Form is Meant for creation of Appointment for patients.</td>
    </tr>
    <tr>
        <td class="auto-style2">VisitId:</td>
        <td class="auto-style2">
            <asp:TextBox ID="txtVisitId" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style2">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">Patient FirstName:</td>
        <td class="auto-style2">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style2">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">Patient LastName</td>
        <td class="auto-style2">
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style2">
            &nbsp;</td>
    </tr>
    <tr>
        <td>Date</td>
        <td>
            <asp:TextBox ID="txtDate" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">Appointment Date</td>
        <td class="auto-style2">
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style2"></td>
    </tr>
    <tr>
        <td>Doctor</td>
        <td>
            <asp:DropDownList ID="txtDoctorAssigned" runat="server" DataSourceID="SqlDataSource1" DataTextField="FirstName" DataValueField="DoctorId">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MFMSconnectionstring %>" SelectCommand="SELECT [DoctorId], [FirstName], [LastName] FROM [tblDoctors]"></asp:SqlDataSource>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtDoctorAssigned" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Select A Doctor To Assign">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
        </td>
        <td>
            <asp:Button ID="SaveButton" runat="server" OnClick="SaveButton_Click" Text="Save" />
        </td>
        <td>&nbsp;</td>
    </tr>
</table>

