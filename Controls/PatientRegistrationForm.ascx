<%@ Control Language="C#" AutoEventWireup="true" CodeFile="PatientRegistrationForm.ascx.cs" Inherits="Controls_PatientRegistrationForm" %>
<style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        height: 23px;
    }
    .auto-style3 {
        height: 42px;
    }
</style>
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
<table class="auto-style1">
    <tr>
        <td colspan="3" class="auto-style3">This Form is used to Register new patients initially into the Medical Facility.The Application is only for use by Medical Facilities and Remains a property of Goodkiiiid.</td>
    </tr>
    <tr>
        <td>First Name</td>
        <td>
            <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFirstName" CssClass="ErrorMessage" ErrorMessage="Enter Your Name" Display="Dynamic">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Last Name</td>
        <td class="auto-style2">
            <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style2">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="txtLastName" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Email</td>
        <td class="auto-style2">
            <asp:TextBox ID="txtEmailAddress" runat="server" TextMode="Email"></asp:TextBox>
        </td>
        <td class="auto-style2">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEmailAddress" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Please Enter Your Email">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmailAddress" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Enter a Valid Email Address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Image:</td>
        <td class="auto-style2">
            <asp:FileUpload ID="FileUpload1" runat="server" />
        </td>
        <td class="auto-style2">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">Confirm E-mail</td>
        <td class="auto-style2">
            <asp:TextBox ID="txtConfirmEmailAddress" runat="server" TextMode="Email"></asp:TextBox>
        </td>
        <td class="auto-style2">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtConfirmEmailAddress" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Confirm Your Email Address">*</asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtEmailAddress" ControlToValidate="txtConfirmEmailAddress" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Your Email Address does not match">*</asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td>Phone Number</td>
        <td>
            <asp:TextBox ID="txtPhoneNumber" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPhoneNumber" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Enter a Phone Number">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>Patient Type</td>
        <td>
            <asp:DropDownList ID="txtPatientType" runat="server" AutoPostBack="True">
                <asp:ListItem>Inpatient</asp:ListItem>
                <asp:ListItem>Outpatient</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtPatientType" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Choose a Type">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>Patient Blood Group</td>
        <td>
            <asp:DropDownList ID="txtBloodGroup" runat="server">
                <asp:ListItem>A</asp:ListItem>
                <asp:ListItem>B-Positive</asp:ListItem>
                <asp:ListItem>B-Negative</asp:ListItem>
                <asp:ListItem>O</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtBloodGroup" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Choose a Blood Group">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>Genotype</td>
        <td>
            <asp:DropDownList ID="txtGenotype" runat="server">
                <asp:ListItem>AA</asp:ListItem>
                <asp:ListItem>AS</asp:ListItem>
                <asp:ListItem>SS</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtGenotype" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Choose a Genotype">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Age</td>
        <td class="auto-style2">
            <asp:TextBox ID="txtPatientAge" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style2">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtPatientAge" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Enter Your Age">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>Address</td>
        <td>
            <asp:TextBox ID="txtPatientAddress" runat="server" TextMode="MultiLine"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtPatientAddress" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Enter Address">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>Sex</td>
        <td>
            <asp:DropDownList ID="txtSex" runat="server">
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtSex" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Choose your sex">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>Admission Date</td>
        <td>
            <asp:TextBox ID="txtAdmissionDate" runat="server" ReadOnly="True"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>Comment</td>
        <td>
            <asp:TextBox ID="txtComment" runat="server" TextMode="MultiLine"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="txtComment" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Enter a Comment">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </td>
        <td>
            <asp:Button ID="SaveButton" runat="server" Text="Save" OnClick="SaveButton_Click" />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td colspan="3">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="ErrorMessage" HeaderText="Please correct the following errors:" ShowMessageBox="True" ShowSummary="False" />
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
