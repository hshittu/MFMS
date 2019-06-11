<%@ Page Title="Choose Doctor Action" Language="C#" MasterPageFile="~/Masterpages/Frontend.master" AutoEventWireup="true" CodeFile="DoctorChoose.aspx.cs" Inherits="Staff_DoctorChoose" %>

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
            <td colspan="2"><p>Choose Doctor Action</p></td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="AddButton" runat="server" Height="99px" PostBackUrl="~/Staff/DoctorRegistration.aspx" Text="Add" Width="475px" />
            </td>
            <td>
                <asp:Button ID="EditButton" runat="server" Height="96px" PostBackUrl="~/Staff/EditDoctor.aspx" Text="Edit" Width="470px" SkinID="EditButton" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="DeleteButton" runat="server" Height="95px" PostBackUrl="~/Staff/DeleteDoctor.aspx" Text="Delete" Width="475px" SkinID="DangerButton" />
            </td>
            <td>
                <asp:Button ID="SearchButton" runat="server" Height="95px" PostBackUrl="~/Staff/SearchDoctor.aspx" Text="Search" Width="472px" SkinID="SearchButton" />
            </td>
        </tr>
    </table>
</asp:Content>

