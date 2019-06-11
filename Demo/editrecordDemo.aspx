<%@ Page Title="EditDemo" Language="C#" MasterPageFile="~/Masterpages/Frontend.master" AutoEventWireup="true" CodeFile="editrecordDemo.aspx.cs" Inherits="Demo_editrecordDemo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">

    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="PatientId" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="PatientId" HeaderText="PatientId" ReadOnly="True" SortExpression="PatientId" />
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber" />
            <asp:BoundField DataField="PatientType" HeaderText="PatientType" SortExpression="PatientType" />
            <asp:BoundField DataField="BloodGroup" HeaderText="BloodGroup" SortExpression="BloodGroup" />
            <asp:BoundField DataField="Genotype" HeaderText="Genotype" SortExpression="Genotype" />
            <asp:BoundField DataField="PatientAge" HeaderText="PatientAge" SortExpression="PatientAge" />
            <asp:BoundField DataField="PatientAddress" HeaderText="PatientAddress" SortExpression="PatientAddress" />
            <asp:BoundField DataField="Sex" HeaderText="Sex" SortExpression="Sex" />
            <asp:BoundField DataField="AdmissionDate" HeaderText="AdmissionDate" SortExpression="AdmissionDate" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MFMSConnectionString2 %>" DeleteCommand="DELETE FROM [tblPatients] WHERE [PatientId] = @PatientId" InsertCommand="INSERT INTO [tblPatients] ([FirstName], [LastName], [Email], [PhoneNumber], [PatientType], [BloodGroup], [Genotype], [PatientAge], [PatientAddress], [Sex], [AdmissionDate], [Comment], [Room]) VALUES (@FirstName, @LastName, @Email, @PhoneNumber, @PatientType, @BloodGroup, @Genotype, @PatientAge, @PatientAddress, @Sex, @AdmissionDate, @Comment, @Room)" ProviderName="<%$ ConnectionStrings:MFMSConnectionString2.ProviderName %>" SelectCommand="SELECT [PatientId], [FirstName], [LastName], [Email], [PhoneNumber], [PatientType], [BloodGroup], [Genotype], [PatientAge], [PatientAddress], [Sex], [AdmissionDate], [Comment], [Room] FROM [tblPatients]" UpdateCommand="UPDATE [tblPatients] SET [FirstName] = @FirstName, [LastName] = @LastName, [Email] = @Email, [PhoneNumber] = @PhoneNumber, [PatientType] = @PatientType, [BloodGroup] = @BloodGroup, [Genotype] = @Genotype, [PatientAge] = @PatientAge, [PatientAddress] = @PatientAddress, [Sex] = @Sex, [AdmissionDate] = @AdmissionDate, [Comment] = @Comment, [Room] = @Room WHERE [PatientId] = @PatientId">
        <DeleteParameters>
            <asp:Parameter Name="PatientId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="PhoneNumber" Type="String" />
            <asp:Parameter Name="PatientType" Type="String" />
            <asp:Parameter Name="BloodGroup" Type="String" />
            <asp:Parameter Name="Genotype" Type="String" />
            <asp:Parameter Name="PatientAge" Type="Int32" />
            <asp:Parameter Name="PatientAddress" Type="String" />
            <asp:Parameter Name="Sex" Type="String" />
            <asp:Parameter DbType="Date" Name="AdmissionDate" />
            <asp:Parameter Name="Comment" Type="String" />
            <asp:Parameter Name="Room" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="PhoneNumber" Type="String" />
            <asp:Parameter Name="PatientType" Type="String" />
            <asp:Parameter Name="BloodGroup" Type="String" />
            <asp:Parameter Name="Genotype" Type="String" />
            <asp:Parameter Name="PatientAge" Type="Int32" />
            <asp:Parameter Name="PatientAddress" Type="String" />
            <asp:Parameter Name="Sex" Type="String" />
            <asp:Parameter DbType="Date" Name="AdmissionDate" />
            <asp:Parameter Name="Comment" Type="String" />
            <asp:Parameter Name="Room" Type="String" />
            <asp:Parameter Name="PatientId" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

</asp:Content>

