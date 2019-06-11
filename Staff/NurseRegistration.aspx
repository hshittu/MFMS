<%@ Page Title="Regiter Nurses" Language="C#" MasterPageFile="~/Masterpages/Frontend.master" AutoEventWireup="true" CodeFile="NurseRegistration.aspx.cs" Inherits="Staff_NurseRegistration" %>

<%--<%@ Register src="../Controls/NurseRegistration.ascx" tagname="NurseRegistration" tagprefix="uc1" %>--%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 733px;
        }
        .auto-style2 {
            width: 187px;
        }
        .auto-style4 {
            width: 264px;
        }
        .auto-style5 {
            width: 840px;
            height: 26px;
        }
        .auto-style7 {
            width: 264px;
            height: 26px;
        }
        .auto-style8 {
            width: 848px;
        }
        .auto-style9 {
            width: 848px;
            height: 26px;
        }
        .auto-style10 {
            width: 840px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <asp:UpdatePanel Id= "UpdatePanel1" runat="server">
    <ContentTemplate>
<table class="auto-style1">
    <tr>
        <td colspan="3"><p>Register Nurses</p></td>
    </tr>
    <tr>
        <td class="auto-style10">FirstName</td>
        <td class="auto-style8">
            <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style4">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFirstName" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Enter First Name">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style10">LastName</td>
        <td class="auto-style8">
            <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style4">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtLastName" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Enter a Last Name">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style10">Age</td>
        <td class="auto-style8">
            <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style4">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtAge" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Enter your Age">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style10">Sex</td>
        <td class="auto-style8">
            <asp:DropDownList ID="txtSex" runat="server" AutoPostBack="True">
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td class="auto-style4">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtSex" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Choose your Sex">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style10">Registration Date</td>
        <td class="auto-style8">
            <asp:TextBox ID="txtRegistrationDate" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style4">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style10">Address</td>
        <td class="auto-style8">
            <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine"></asp:TextBox>
        </td>
        <td class="auto-style4">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtAddress" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Enter Address">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">Email</td>
        <td class="auto-style9">
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style7">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtEmail" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Enter Email Address">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Enter A Valid Email Address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style10">Confirm Email</td>
        <td class="auto-style8">
            <asp:TextBox ID="txtConfirmEmail" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style4">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtConfirmEmail" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Confirm Email Address">*</asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtEmail" ControlToValidate="txtConfirmEmail" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Email Addresses do not match">*</asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style10">PhoneNumber</td>
        <td class="auto-style8">
            <asp:TextBox ID="txtPhoneNumber" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style4">
            <asp:Label ID="Label2" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style10">
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </td>
        <td class="auto-style8">
            <asp:Button ID="SaveButton" runat="server" Text="Save" OnClick="SaveButton_Click" />
        </td>
        <td class="auto-style4">
            <asp:Button ID="RetryButton" runat="server" OnClick="RetryButton_Click" Text="Retry" />
        </td>
    </tr>
    <tr>
        <td class="auto-style2" colspan="3">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" />
        </td>
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

