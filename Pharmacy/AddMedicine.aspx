<%@ Page Title="Add Medicine" Language="C#" MasterPageFile="~/Masterpages/Frontend.master" AutoEventWireup="true" CodeFile="AddMedicine.aspx.cs" Inherits="Pharmacy_AddMedicine" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td colspan="2"><p>Add New Medicine</p></td>
        </tr>
        <tr>
            <td>Medicine Name:</td>
            <td>
                <asp:TextBox ID="txtMedicineName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Quantity</td>
            <td>
                <asp:TextBox ID="txtQuantity" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Medicine Type</td>
            <td>
                <asp:TextBox ID="txtMedicineType" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Side Effects</td>
            <td>
                <asp:TextBox ID="txtSideEffects" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Price</td>
            <td>
                <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Date</td>
            <td>
                <asp:TextBox ID="txtDate" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Button ID="AddButton" runat="server" OnClick="AddButton_Click" Text="Add" />
            </td>
        </tr>
    </table>
</asp:Content>

