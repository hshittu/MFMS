<%@ Page Title="Create Appointment" Language="C#" MasterPageFile="~/Masterpages/Frontend.master" AutoEventWireup="true" CodeFile="CreateAppointment.aspx.cs" Inherits="Appointments_CreateAppointment" %>

<%--<%@ Register src="../Controls/CreateAppointment.ascx" tagname="CreateAppointment" tagprefix="uc1" %>--%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">

    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="VisitId" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" ForeColor="Black" CellSpacing="2">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="VisitId" HeaderText="VisitId" InsertVisible="False" ReadOnly="True" SortExpression="VisitId" />
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
            <asp:BoundField DataField="VitalSigns" HeaderText="VitalSigns" SortExpression="VitalSigns" />
            <asp:BoundField DataField="Symptoms" HeaderText="Symptoms" SortExpression="Symptoms" />
            <asp:BoundField DataField="VisitDate" HeaderText="VisitDate" SortExpression="VisitDate" />
            <asp:BoundField DataField="Weight" HeaderText="Weight" SortExpression="Weight" />
            <asp:BoundField DataField="BloodPressure" HeaderText="BloodPressure" SortExpression="BloodPressure" />
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
    <style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        height: 23px;
    }
        .auto-style3 {
            height: 59px;
        }
    </style>

<table class="auto-style1">
    <tr>
        <td colspan="3"><p>Create New Patient Appointment</p></td>
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
            <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style2">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">Patient LastName</td>
        <td class="auto-style2">
            <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style2">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">VitalSigns:</td>
        <td class="auto-style2">
            <asp:TextBox ID="txtVitalSigns" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style2">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">Weight</td>
        <td class="auto-style2">
            <asp:TextBox ID="txtWeight" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style2">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">BloodPressure:</td>
        <td class="auto-style2">
            <asp:TextBox ID="txtBloodPressure" runat="server"></asp:TextBox>
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
            <asp:TextBox ID="txtAppointDate" runat="server" TextMode="DateTime"></asp:TextBox>
        </td>
        <td class="auto-style2"></td>
    </tr>
    <tr>
        <td class="auto-style3">Doctor</td>
        <td class="auto-style3">
            <asp:DropDownList ID="txtDoctorAssigned" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="FirstName" DataValueField="DoctorId">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MFMSconnectionstring %>" SelectCommand="SELECT [DoctorId], [FirstName] FROM [tblDoctors]"></asp:SqlDataSource>
        </td>
        <td class="auto-style3">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtDoctorAssigned" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Select A Doctor To Assign">*</asp:RequiredFieldValidator>
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
        <td>
            <asp:Button ID="RetryButton" runat="server" OnClick="RetryButton_Click" Text="Retry" />
        </td>
    </tr>
</table>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MFMSconnectionstring %>" SelectCommand="SELECT [VisitId], [FirstName], [LastName], [VitalSigns], [Symptoms], [VisitDate], [Weight], [BloodPressure] FROM [tblVIsits]"></asp:SqlDataSource>

    </asp:Content>

