<%@ Page Title="Remove From Stock" Language="C#" MasterPageFile="~/Masterpages/Frontend.master" AutoEventWireup="true" CodeFile="RemoveStock.aspx.cs" Inherits="Pharmacy_RemoveStock" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" DataKeyNames="MedicineId" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CellSpacing="2" ForeColor="Black">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="MedicineId" HeaderText="MedicineId" InsertVisible="False" ReadOnly="True" SortExpression="MedicineId" />
            <asp:BoundField DataField="MedicineName" HeaderText="MedicineName" SortExpression="MedicineName" />
            <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
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
            <td colspan="2">Remove Medicine From Stock</td>
        </tr>
        <tr>
            <td>Medicine Name</td>
            <td>
                <asp:TextBox ID="txtMedicineName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Medicine Id</td>
            <td>
                <asp:TextBox ID="txtMedicineId" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Present Quantity</td>
            <td>
                <asp:TextBox ID="txtQuantity" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Deduction</td>
            <td>
                <asp:TextBox ID="txtDeduction" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Button ID="RemoveButton" runat="server" OnClick="RemoveButton_Click" Text="Remove" />
            </td>
        </tr>
    </table>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MFMSconnectionstring %>" SelectCommand="SELECT [MedicineId], [MedicineName], [Quantity], [Price] FROM [tblMedicine]"></asp:SqlDataSource>
</asp:Content>

