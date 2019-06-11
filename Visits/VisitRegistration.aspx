<%@ Page Title="Register Visit" Language="C#" MasterPageFile="~/Masterpages/Frontend.master" AutoEventWireup="true" CodeFile="VisitRegistration.aspx.cs" Inherits="Visits_VisitRegistration" %>

<%--<%@ Register src="../Controls/VisitRegistration.ascx" tagname="VisitRegistration" tagprefix="uc1" %>--%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">

   <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="PatientId" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellSpacing="2" ForeColor="Black">
    <Columns>
        <asp:CommandField ShowSelectButton="True" />
        <asp:BoundField DataField="PatientId" HeaderText="PatientId" InsertVisible="False" ReadOnly="True" SortExpression="PatientId" />
        <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
        <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
        <asp:BoundField DataField="PatientType" HeaderText="PatientType" SortExpression="PatientType" />
        <asp:BoundField DataField="BloodGroup" HeaderText="BloodGroup" SortExpression="BloodGroup" />
        <asp:BoundField DataField="Genotype" HeaderText="Genotype" SortExpression="Genotype" />
        <asp:BoundField DataField="Sex" HeaderText="Sex" SortExpression="Sex" />
        <asp:BoundField DataField="PatientAge" HeaderText="PatientAge" SortExpression="PatientAge" />
        <asp:BoundField DataField="Comment" HeaderText="Comment" SortExpression="Comment" />
        <asp:BoundField DataField="Room" HeaderText="Room" SortExpression="Room" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MFMSconnectionstring %>" SelectCommand="SELECT [PatientId], [FirstName], [LastName], [PatientType], [BloodGroup], [Genotype], [Sex], [PatientAge], [Comment], [Room] FROM [tblPatients]"></asp:SqlDataSource>
    <style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        height: 24px;
    }
</style>

<table class="auto-style1">
    <tr>
        <td colspan="3"><p>Register Patient Visits</p></td>
    </tr>
    <tr>
        <td>Patient FirstName</td>
        <td>
            <asp:TextBox ID="txtFirstName" runat="server" ReadOnly="True"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>Patient LastName</td>
        <td>
            <asp:TextBox ID="txtLastName" runat="server" ReadOnly="True"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">Patient Id</td>
        <td class="auto-style2">
            <asp:TextBox ID="txtPatientId" runat="server" ReadOnly="True"></asp:TextBox>
        </td>
        <td class="auto-style2">
            &nbsp;</td>
    </tr>
    <tr>
        <td>Vital Signs</td>
        <td>
            <asp:TextBox ID="txtVitalSigns" runat="server" TextMode="MultiLine"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Enter Vital Signs and Symptoms" ControlToValidate="txtVitalSigns">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>Symptoms</td>
        <td>
            <asp:TextBox ID="txtSymptoms" runat="server" TextMode="MultiLine"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>Date</td>
        <td>
            <asp:TextBox ID="txtVisitDate" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>Weight (Kg)</td>
        <td>
            <asp:TextBox ID="txtWeight" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>Blood Pressure</td>
        <td>
            <asp:TextBox ID="txtBloodPressure" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </td>
        <td>
            <asp:Button ID="SaveButton" runat="server" OnClick="SaveButton_Click" Text="Save" />
        </td>
        <td>
            &nbsp;</td>
    </tr>
</table>

</asp:Content>

