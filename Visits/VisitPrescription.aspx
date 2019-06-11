<%@ Page Title="Save Visit Prescription" Language="C#" MasterPageFile="~/Masterpages/Frontend.master" AutoEventWireup="true" CodeFile="VisitPrescription.aspx.cs" Inherits="Visits_VisitPrescription" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" DataKeyNames="VisitId" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CellSpacing="2" ForeColor="Black">
    <Columns>
        <asp:CommandField ShowSelectButton="True" />
        <asp:BoundField DataField="VisitId" HeaderText="VisitId" InsertVisible="False" ReadOnly="True" SortExpression="VisitId" />
        <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
        <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
        <asp:BoundField DataField="PatientId" HeaderText="PatientId" SortExpression="PatientId" />
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
<table class="auto-style1">
    <tr>
        <td colspan="2"><p>Assign Prescription to Visit</p></td>
    </tr>
    <tr>
        <td>Visit Id</td>
        <td>
            <asp:TextBox ID="txtVisitId" runat="server" ReadOnly="True"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>VitalSigns</td>
        <td>
            <asp:TextBox ID="txtVitalSigns" runat="server" TextMode="MultiLine"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>Symtoms</td>
        <td>
            <asp:TextBox ID="txtSymptoms" runat="server" TextMode="MultiLine"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>Date</td>
        <td>
            <asp:TextBox ID="txtDate" runat="server" ReadOnly="True"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>Prescription</td>
        <td>
            <asp:TextBox ID="txtPrescription" runat="server" TextMode="MultiLine"></asp:TextBox>
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
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MFMSconnectionstring %>" SelectCommand="SELECT [VisitId], [FirstName], [LastName], [PatientId], [VitalSigns], [Symptoms], [VisitDate], [Weight], [BloodPressure] FROM [tblVisits]"></asp:SqlDataSource>
</asp:Content>

