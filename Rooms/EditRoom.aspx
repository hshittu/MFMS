<%@ Page Title="Edit Room" Language="C#" MasterPageFile="~/Masterpages/Frontend.master" AutoEventWireup="true" CodeFile="EditRoom.aspx.cs" Inherits="Rooms_EditRoom" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" DataKeyNames="RoomId" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CellSpacing="2" ForeColor="Black">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="RoomId" HeaderText="WardId" InsertVisible="False" ReadOnly="True" SortExpression="RoomId" />
            <asp:BoundField DataField="RoomType" HeaderText="WardType" SortExpression="RoomType" />
            <asp:BoundField DataField="RoomGrade" HeaderText="WardGrade" SortExpression="RoomGrade" />
            <asp:BoundField DataField="RoomCost" HeaderText="WardCost" SortExpression="RoomCost" />
            <asp:BoundField DataField="RoomSexType" HeaderText="WardSexType" SortExpression="RoomSexType" />
            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
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
            <td colspan="2"><p>Edit Wards</p></td>
        </tr>
        <tr>
            <td>Ward Id</td>
            <td>
                <asp:TextBox ID="txtRoomId" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Ward Type</td>
            <td>
                <asp:DropDownList ID="txtRoomType" runat="server">
                    <asp:ListItem>Medical</asp:ListItem>
                    <asp:ListItem>Surgical</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>Ward Grade</td>
            <td>
                <asp:DropDownList ID="txtRoomGrade" runat="server">
                    <asp:ListItem>Normal</asp:ListItem>
                    <asp:ListItem>Executive</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>Ward Cost</td>
            <td>
                <asp:TextBox ID="txtRoomCost" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Ward Sex Type</td>
            <td>
                <asp:DropDownList ID="txtRoomSexType" runat="server">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Button ID="UpdateButton" runat="server" OnClick="UpdateButton_Click" Text="Update" />
            </td>
        </tr>
    </table>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MFMSconnectionstring %>" SelectCommand="SELECT [RoomId], [RoomType], [RoomGrade], [RoomCost], [RoomSexType], [Date] FROM [tblRooms]"></asp:SqlDataSource>
</asp:Content>

