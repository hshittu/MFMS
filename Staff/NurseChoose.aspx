<%@ Page Title="Choose Nurse Action" Language="C#" MasterPageFile="~/Masterpages/Frontend.master" AutoEventWireup="true" CodeFile="NurseChoose.aspx.cs" Inherits="Staff_NurseChoose" %>

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
            <td colspan="2"><p>Choose Nurse Action</p></td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" Height="99px" PostBackUrl="~/Staff/NurseRegistration.aspx" Text="Add" Width="475px" />
            </td>
            <td>
                <asp:Button ID="Button3" runat="server" Height="96px" PostBackUrl="~/Staff/EditNurse.aspx" Text="Edit" Width="475px" SkinID="EditButton" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button2" runat="server" Height="99px" PostBackUrl="~/Staff/DeleteNurse.aspx" Text="Delete" Width="475px" SkinID="DangerButton" />
            </td>
            <td>
                <asp:Button ID="Button4" runat="server" Height="97px" PostBackUrl="~/Staff/SearchNurse.aspx" Text="Search" Width="474px" SkinID="SearchButton" />
            </td>
        </tr>
    </table>
</asp:Content>

