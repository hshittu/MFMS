<%@ Page Title="SearchDemo" Language="C#" MasterPageFile="~/Masterpages/Frontend.master" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Demo_Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    FirstName:<asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
    <br />
    LastName:<asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
    <br />
    <asp:Button ID="SearchButton" runat="server" Text="Search" OnClick="SearchButton_Click" />
    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="PatientId">
        <AlternatingItemTemplate>
            <li style="background-color: #FAFAD2;color: #284775;">PatientId:
                <asp:Label ID="PatientIdLabel" runat="server" Text='<%# Eval("PatientId") %>' />
                <br />
                FirstName:
                <asp:Label ID="FirstNameLabel" runat="server" Text='<%# Eval("FirstName") %>' />
                <br />
                LastName:
                <asp:Label ID="LastNameLabel" runat="server" Text='<%# Eval("LastName") %>' />
                <br />
                Email:
                <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                <br />
                PhoneNumber:
                <asp:Label ID="PhoneNumberLabel" runat="server" Text='<%# Eval("PhoneNumber") %>' />
                <br />
                PatientType:
                <asp:Label ID="PatientTypeLabel" runat="server" Text='<%# Eval("PatientType") %>' />
                <br />
                BloodGroup:
                <asp:Label ID="BloodGroupLabel" runat="server" Text='<%# Eval("BloodGroup") %>' />
                <br />
                Genotype:
                <asp:Label ID="GenotypeLabel" runat="server" Text='<%# Eval("Genotype") %>' />
                <br />
            </li>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <li style="background-color: #FFCC66;color: #000080;">PatientId:
                <asp:Label ID="PatientIdLabel1" runat="server" Text='<%# Eval("PatientId") %>' />
                <br />
                FirstName:
                <asp:TextBox ID="FirstNameTextBox" runat="server" Text='<%# Bind("FirstName") %>' />
                <br />
                LastName:
                <asp:TextBox ID="LastNameTextBox" runat="server" Text='<%# Bind("LastName") %>' />
                <br />
                Email:
                <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                <br />
                PhoneNumber:
                <asp:TextBox ID="PhoneNumberTextBox" runat="server" Text='<%# Bind("PhoneNumber") %>' />
                <br />
                PatientType:
                <asp:TextBox ID="PatientTypeTextBox" runat="server" Text='<%# Bind("PatientType") %>' />
                <br />
                BloodGroup:
                <asp:TextBox ID="BloodGroupTextBox" runat="server" Text='<%# Bind("BloodGroup") %>' />
                <br />
                Genotype:
                <asp:TextBox ID="GenotypeTextBox" runat="server" Text='<%# Bind("Genotype") %>' />
                <br />
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
            </li>
        </EditItemTemplate>
        <EmptyDataTemplate>
            No data was returned.
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <li style="">FirstName:
                <asp:TextBox ID="FirstNameTextBox" runat="server" Text='<%# Bind("FirstName") %>' />
                <br />LastName:
                <asp:TextBox ID="LastNameTextBox" runat="server" Text='<%# Bind("LastName") %>' />
                <br />Email:
                <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                <br />PhoneNumber:
                <asp:TextBox ID="PhoneNumberTextBox" runat="server" Text='<%# Bind("PhoneNumber") %>' />
                <br />PatientType:
                <asp:TextBox ID="PatientTypeTextBox" runat="server" Text='<%# Bind("PatientType") %>' />
                <br />BloodGroup:
                <asp:TextBox ID="BloodGroupTextBox" runat="server" Text='<%# Bind("BloodGroup") %>' />
                <br />Genotype:
                <asp:TextBox ID="GenotypeTextBox" runat="server" Text='<%# Bind("Genotype") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
            </li>
        </InsertItemTemplate>
        <ItemSeparatorTemplate>
<br />
        </ItemSeparatorTemplate>
        <ItemTemplate>
            <li style="background-color: #FFFBD6;color: #333333;">PatientId:
                <asp:Label ID="PatientIdLabel" runat="server" Text='<%# Eval("PatientId") %>' />
                <br />
                FirstName:
                <asp:Label ID="FirstNameLabel" runat="server" Text='<%# Eval("FirstName") %>' />
                <br />
                LastName:
                <asp:Label ID="LastNameLabel" runat="server" Text='<%# Eval("LastName") %>' />
                <br />
                Email:
                <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                <br />
                PhoneNumber:
                <asp:Label ID="PhoneNumberLabel" runat="server" Text='<%# Eval("PhoneNumber") %>' />
                <br />
                PatientType:
                <asp:Label ID="PatientTypeLabel" runat="server" Text='<%# Eval("PatientType") %>' />
                <br />
                BloodGroup:
                <asp:Label ID="BloodGroupLabel" runat="server" Text='<%# Eval("BloodGroup") %>' />
                <br />
                Genotype:
                <asp:Label ID="GenotypeLabel" runat="server" Text='<%# Eval("Genotype") %>' />
                <br />
            </li>
        </ItemTemplate>
        <LayoutTemplate>
            <ul id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                <li runat="server" id="itemPlaceholder" />
            </ul>
            <div style="text-align: center;background-color: #FFCC66;font-family: Verdana, Arial, Helvetica, sans-serif;color: #333333;">
            </div>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <li style="background-color: #FFCC66;font-weight: bold;color: #000080;">PatientId:
                <asp:Label ID="PatientIdLabel" runat="server" Text='<%# Eval("PatientId") %>' />
                <br />
                FirstName:
                <asp:Label ID="FirstNameLabel" runat="server" Text='<%# Eval("FirstName") %>' />
                <br />
                LastName:
                <asp:Label ID="LastNameLabel" runat="server" Text='<%# Eval("LastName") %>' />
                <br />
                Email:
                <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                <br />
                PhoneNumber:
                <asp:Label ID="PhoneNumberLabel" runat="server" Text='<%# Eval("PhoneNumber") %>' />
                <br />
                PatientType:
                <asp:Label ID="PatientTypeLabel" runat="server" Text='<%# Eval("PatientType") %>' />
                <br />
                BloodGroup:
                <asp:Label ID="BloodGroupLabel" runat="server" Text='<%# Eval("BloodGroup") %>' />
                <br />
                Genotype:
                <asp:Label ID="GenotypeLabel" runat="server" Text='<%# Eval("Genotype") %>' />
                <br />
            </li>
        </SelectedItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MFMSconnectionstring %>" SelectCommand="SELECT [PatientId], [FirstName], [LastName], [Email], [PhoneNumber], [PatientType], [BloodGroup], [Genotype] FROM [tblPatients] WHERE (([FirstName] = @FirstName) AND ([LastName] = @LastName))">
        <SelectParameters>
            <asp:ControlParameter ControlID="txtFirstName" Name="FirstName" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="txtLastName" Name="LastName" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    </asp:Content>

