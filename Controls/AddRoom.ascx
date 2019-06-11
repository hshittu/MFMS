<%@ Control Language="C#" AutoEventWireup="true" CodeFile="AddRoom.ascx.cs" Inherits="Controls_AddRoom" %>
<style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        height: 23px;
    }
    .auto-style3 {
        height: 26px;
    }
</style>

<table class="auto-style1">
    <tr>
        <td colspan="3">This Room is meant for registering rooms in the hospital system by Administrator</td>
    </tr>
    <tr>
        <td class="auto-style2">Room Type</td>
        <td class="auto-style2">
            <asp:DropDownList ID="txtRoomType" runat="server" AutoPostBack="True">
                <asp:ListItem>Single</asp:ListItem>
                <asp:ListItem>Double</asp:ListItem>
                <asp:ListItem>Multiple</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td class="auto-style2">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">Room Grade</td>
        <td class="auto-style3">
            <asp:DropDownList ID="txtRoomGrade" runat="server" AutoPostBack="True">
                <asp:ListItem>Normal</asp:ListItem>
                <asp:ListItem>Executive</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td class="auto-style3"></td>
    </tr>
    <tr>
        <td>Room Cost</td>
        <td>
            <asp:TextBox ID="txtRoomCost" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="txtRoomCost" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Enter Room Cost">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>Date</td>
        <td>
            <asp:TextBox ID="txtDate" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
        </td>
        <td>
            <asp:Button ID="SaveButton" runat="server" OnClick="SaveButton_Click" Text="Save" />
        </td>
        <td>&nbsp;</td>
    </tr>
</table>

