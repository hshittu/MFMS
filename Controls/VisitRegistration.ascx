<%@ Control Language="C#" AutoEventWireup="true" CodeFile="VisitRegistration.ascx.cs" Inherits="Controls_VisitRegistration" %>
<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="PatientId" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
    <AlternatingRowStyle BackColor="White" />
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
    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
    <SortedAscendingCellStyle BackColor="#FDF5AC" />
    <SortedAscendingHeaderStyle BackColor="#4D0000" />
    <SortedDescendingCellStyle BackColor="#FCF6C0" />
    <SortedDescendingHeaderStyle BackColor="#820000" />
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
        <td colspan="3">This Form is meant for Registration of Patient Visits.Remains Property of Goodkiiiid</td>
    </tr>
    <tr>
        <td>Patient FirstName</td>
        <td>
            <asp:Label ID="txtFirstName" runat="server" Text="Label"></asp:Label>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>Patient LastName</td>
        <td>
            <asp:Label ID="txtLastName" runat="server" Text="Label"></asp:Label>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">Patient Id</td>
        <td class="auto-style2">
            <asp:Label ID="txtPatientId" runat="server" Text="Label"></asp:Label>
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
            <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
        </td>
        <td>
            <asp:Button ID="SaveButton" runat="server" OnClick="SaveButton_Click" Text="Save" />
        </td>
        <td>
            &nbsp;</td>
    </tr>
</table>

