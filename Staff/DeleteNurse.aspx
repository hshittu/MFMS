﻿<%@ Page Title="Delete Nurse record" Language="C#" MasterPageFile="~/Masterpages/Frontend.master" AutoEventWireup="true" CodeFile="DeleteNurse.aspx.cs" Inherits="Staff_DeleteNurse" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" DataKeyNames="NurseId" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CellSpacing="2" ForeColor="Black">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="NurseId" HeaderText="NurseId" InsertVisible="False" ReadOnly="True" SortExpression="NurseId" />
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
            <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
            <asp:BoundField DataField="Sex" HeaderText="Sex" SortExpression="Sex" />
            <asp:BoundField DataField="RegistrationDate" HeaderText="RegistrationDate" SortExpression="RegistrationDate" />
            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber" />
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
            <td colspan="2"><p>Delete Nurse</p></td>
        </tr>
        <tr>
            <td>Nurse Id</td>
            <td>
                <asp:TextBox ID="txtNurseId" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>First Name</td>
            <td>
                <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Last Name</td>
            <td>
                <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Button ID="DeleteButton" runat="server" OnClick="DeleteButton_Click" Text="Delete" />
            </td>
        </tr>
    </table>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MFMSconnectionstring %>" SelectCommand="SELECT [NurseId], [FirstName], [LastName], [Age], [Sex], [RegistrationDate], [Address], [Email], [PhoneNumber] FROM [tblNurses]"></asp:SqlDataSource>
</asp:Content>
