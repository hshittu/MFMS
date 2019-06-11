<%@ Page Title="Choose Pharmacist Action" Language="C#" MasterPageFile="~/Masterpages/Frontend.master" AutoEventWireup="true" CodeFile="PharmacistChoose.aspx.cs" Inherits="Staff_PharmacistChoose" %>

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
            <td colspan="2"><p>Choose Pharmacist Action</p></td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" Height="99px" PostBackUrl="~/Staff/PharmacistReg.aspx" Text="Add" Width="478px" />
            </td>
            <td>
                <asp:Button ID="Button3" runat="server" Height="97px" PostBackUrl="~/Staff/EditPharmacist.aspx" Text="Edit" Width="475px" SkinID="EditButton" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button2" runat="server" Height="98px" PostBackUrl="~/Staff/DeletePharmacist.aspx" Text="Delete" Width="477px" SkinID="DangerButton" />
            </td>
            <td>
                <asp:Button ID="Button4" runat="server" Height="97px" PostBackUrl="~/Staff/SearchPharmacist.aspx" Text="Search" Width="475px" SkinID="SearchButton" />
            </td>
        </tr>
    </table>
</asp:Content>

