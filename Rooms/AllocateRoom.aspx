<%@ Page Title="Allocate Ward" Language="C#" MasterPageFile="~/Masterpages/Frontend.master" AutoEventWireup="true" CodeFile="AllocateRoom.aspx.cs" Inherits="Rooms_AllocateRoom" %>

<%--<%@ Register src="../Controls/AllocateRoom.ascx" tagname="AllocateRoom" tagprefix="uc1" %>--%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    
    <style type="text/css">
    .auto-style1 {
        width: 100%;
    }
</style>

    <table class="auto-style1">
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="PatientId" DataSourceID="SqlDataSource2" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellSpacing="2" ForeColor="Black">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="PatientId" HeaderText="PatientId" InsertVisible="False" ReadOnly="True" SortExpression="PatientId" />
                        <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                        <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                        <asp:BoundField DataField="Sex" HeaderText="Sex" SortExpression="Sex" />
                        <asp:BoundField DataField="PatientAge" HeaderText="PatientAge" SortExpression="PatientAge" />
                        <asp:BoundField DataField="PatientType" HeaderText="PatientType" SortExpression="PatientType" />
                        <asp:BoundField DataField="Room" HeaderText="Ward" SortExpression="Room" />
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
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MFMSconnectionstring %>" SelectCommand="SELECT [PatientId], [FirstName], [LastName], [Sex], [PatientAge], [PatientType], [Room] FROM [tblPatients]"></asp:SqlDataSource>
            </td>
            <td>
                <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="RoomId" DataSourceID="SqlDataSource3" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellSpacing="2" ForeColor="Black">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="RoomId" HeaderText="Ward Id" InsertVisible="False" ReadOnly="True" SortExpression="RoomId" />
                        <asp:BoundField DataField="RoomType" HeaderText="Ward Type" SortExpression="RoomType" />
                        <asp:BoundField DataField="RoomGrade" HeaderText="Ward Grade" SortExpression="RoomGrade" />
                        <asp:BoundField DataField="RoomCost" HeaderText="Ward Cost" SortExpression="RoomCost" />
                        <asp:BoundField DataField="RoomSexType" HeaderText="Ward SexType" SortExpression="RoomSexType" />
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
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:MFMSconnectionstring %>" SelectCommand="SELECT [RoomId], [RoomType], [RoomGrade], [RoomCost], [RoomSexType] FROM [tblRooms]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>

<table class="auto-style1">
    <tr>
        <td colspan="3"><p>Allocate Ward</p></td>
    </tr>
    <tr>
        <td>PatientId</td>
        <td>
            <asp:TextBox ID="txtPatientId" runat="server"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>FirstName</td>
        <td>
            <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>LastName</td>
        <td>
            <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>Allocation Date</td>
        <td>
            <asp:TextBox ID="txtAllocationDate" runat="server" ReadOnly="True"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>Ward Id</td>
        <td>
            <asp:TextBox ID="txtRoomId" runat="server"></asp:TextBox>
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
        <td>&nbsp;</td>
    </tr>
</table>

</asp:Content>

