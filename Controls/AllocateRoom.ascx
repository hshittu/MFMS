<%@ Control Language="C#" AutoEventWireup="true" CodeFile="AllocateRoom.ascx.cs" Inherits="Controls_AllocateRoom" %>
<style type="text/css">
    .auto-style1 {
        width: 100%;
    }
</style>

<table class="auto-style1">
    <tr>
        <td colspan="3">This Form is meant for the allocation of patient to rooms.</td>
    </tr>
    <tr>
        <td>PatientId</td>
        <td>
            <asp:TextBox ID="txtPatientId" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtPatientId" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Enter Patient ID">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>RoomType</td>
        <td>
            <asp:DropDownList ID="txtRoomType" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="RoomType" DataValueField="RoomType">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MFMSconnectionstring %>" SelectCommand="SELECT [RoomId], [RoomType], [RoomCost], [RoomGrade] FROM [tblRooms]"></asp:SqlDataSource>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>RoomNo</td>
        <td>
            <asp:DropDownList ID="txtRoomNo" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="RoomId" DataValueField="RoomId">
            </asp:DropDownList>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </td>
        <td>
            <asp:Button ID="SaveButton" runat="server" OnClick="SaveButton_Click" Text="Save" />
        </td>
        <td>&nbsp;</td>
    </tr>
</table>

