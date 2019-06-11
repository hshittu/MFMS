<%@ Control Language="C#" AutoEventWireup="true" CodeFile="NurseRegistration.ascx.cs" Inherits="Controls_NurseRegistration" %>
<style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        height: 23px;
    }
</style>
<asp:UpdatePanel Id= "UpdatePanel1" runat="server">
    <ContentTemplate>
<table class="auto-style1">
    <tr>
        <td colspan="3">This Form is made for registration of nurses.</td>
    </tr>
    <tr>
        <td>FirstName</td>
        <td>
            <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFirstName" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Enter First Name">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>LastName</td>
        <td>
            <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtLastName" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Enter a Last Name">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>Age</td>
        <td>
            <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtAge" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Enter your Age">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>Sex</td>
        <td>
            <asp:DropDownList ID="txtSex" runat="server" AutoPostBack="True">
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtSex" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Choose your Sex">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>Registration Date</td>
        <td>
            <asp:TextBox ID="txtRegistrationDate" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">Address</td>
        <td class="auto-style2">
            <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine"></asp:TextBox>
        </td>
        <td class="auto-style2">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtAddress" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Enter Address">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Email</td>
        <td class="auto-style2">
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style2">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtEmail" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Enter Email Address">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Enter A Valid Email Address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Confirm Email</td>
        <td class="auto-style2">
            <asp:TextBox ID="txtConfirmEmail" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style2">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtConfirmEmail" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Confirm Email Address">*</asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtEmail" ControlToValidate="txtConfirmEmail" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Email Addresses do not match">*</asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">PhoneNumber</td>
        <td class="auto-style2">
            <asp:TextBox ID="txtPhoneNumber" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style2">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtPhoneNumber" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Enter Phone Number">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </td>
        <td class="auto-style2">
            <asp:Button ID="SaveButton" runat="server" Text="Save" OnClick="SaveButton_Click" />
        </td>
        <td class="auto-style2"></td>
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

