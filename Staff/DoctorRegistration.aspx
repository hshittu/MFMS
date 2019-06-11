<%@ Page Title="Register Doctor" Language="C#" MasterPageFile="~/Masterpages/Frontend.master" AutoEventWireup="true" CodeFile="DoctorRegistration.aspx.cs" Inherits="Staff_DoctorRegistration" %>

<%--<%@ Register src="../Controls/DoctorRegistration.ascx" tagname="DoctorRegistration" tagprefix="uc1" %>--%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 740px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
<table class="auto-style1">
    <tr>
        <td colspan="3"><p>Register Doctor</p></td>
    </tr>
    <tr>
        <td>Doctor First Name</td>
        <td>
            <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Enter First Name" ControlToValidate="txtFirstName">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>Doctor Last Name</td>
        <td>
            <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtLastName" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Enter Last Name">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Contact No</td>
        <td class="auto-style2">
            <asp:TextBox ID="txtPhoneNumber" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style2">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtPhoneNumber" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Enter Contact Number">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Emergency No</td>
        <td class="auto-style2">
            <asp:TextBox ID="txtEmergencyNo" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style2">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtEmergencyNo" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Enter Your Emergency Number">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Sex</td>
        <td class="auto-style2">
            <asp:DropDownList ID="txtSex" runat="server">
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td class="auto-style2">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtSex" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Pick a Sex">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Doctor Cost</td>
        <td class="auto-style2">
            <asp:TextBox ID="txtDoctorCost" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style2">&nbsp;</td>
    </tr>
    <tr>
        <td>Date</td>
        <td>
            <asp:TextBox ID="txtDate" runat="server" ReadOnly="True"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">Email</td>
        <td class="auto-style2">
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style2">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtEmail" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Enter Email Address">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Enter a Valid Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Confirm Email</td>
        <td class="auto-style2">
            <asp:TextBox ID="txtConfirmEmail" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style2">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtConfirmEmail" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Re-Enter your Email">*</asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtEmail" ControlToValidate="txtConfirmEmail" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Email does not match">*</asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Address</td>
        <td class="auto-style2">
            <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine"></asp:TextBox>
        </td>
        <td class="auto-style2">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtAddress" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Enter Address">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Consultation Days</td>
        <td class="auto-style2">
            <asp:TextBox ID="txtConsultationDays" runat="server" TextMode="MultiLine"></asp:TextBox>
        </td>
        <td class="auto-style2">
            <asp:Label ID="Label2" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </td>
        <td class="auto-style2">
            <asp:Button ID="SaveButton" runat="server" Text="Save" OnClick="SaveButton_Click" />
            &nbsp;</td>
        <td class="auto-style2">
            <asp:Button ID="RetryButton" runat="server" OnClick="RetryButton_Click" Text="Retry" />
            &nbsp; </td>
    </tr>
</table>
        </ContentTemplate>
    </asp:UpdatePanel>
<asp:UpdateProgress ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID="UpdatePanel1">
    <ProgressTemplate>
        <div id="PleaseWait">
            Please Wait.....
        </div>
    </ProgressTemplate>
</asp:UpdateProgress>
</asp:Content>

