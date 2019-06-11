<%@ Page Title="Add Ward" Language="C#" MasterPageFile="~/Masterpages/Frontend.master" AutoEventWireup="true" CodeFile="AddRoom.aspx.cs" Inherits="Rooms_AddRoom" %>

<%@ Register src="../Controls/AddRoom.ascx" tagname="AddRoom" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
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
        <td colspan="3"><p>Add New Ward</p></td>
    </tr>
    <tr>
        <td class="auto-style2">Ward Type</td>
        <td class="auto-style2">
            <asp:DropDownList ID="txtRoomType" runat="server" AutoPostBack="True">
                <asp:ListItem>Medical</asp:ListItem>
                <asp:ListItem>Surgical</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td class="auto-style2">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">Ward Grade</td>
        <td class="auto-style3">
            <asp:DropDownList ID="txtRoomGrade" runat="server" AutoPostBack="True">
                <asp:ListItem>Normal</asp:ListItem>
                <asp:ListItem>Executive</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td class="auto-style3"></td>
    </tr>
    <tr>
        <td>Ward Cost</td>
        <td>
            <asp:TextBox ID="txtRoomCost" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="txtRoomCost" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Enter Room Cost">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>Ward Sex Type</td>
        <td>
            <asp:DropDownList ID="txtRoomSexType" runat="server" AutoPostBack="True">
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>&nbsp;</td>
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
            <asp:Label ID="Label2" runat="server"></asp:Label>
        </td>
        <td>
            <asp:Button ID="SaveButton" runat="server" OnClick="SaveButton_Click" Text="Save" />
        </td>
        <td>&nbsp;</td>
    </tr>
</table>

</asp:Content>

