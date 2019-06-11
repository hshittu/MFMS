<%@ Page Title="User's Profile" Language="C#" MasterPageFile="~/Masterpages/Frontend.master" AutoEventWireup="true" CodeFile="Profile.aspx.cs" Inherits="_Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <h1>User's Profile</h1>
    <p>The My Profile page allows you to make changes to your personal profile.
 It mainly helps you to change your password below.</p>
    <asp:ChangePassword ID="ChangePassword1" runat="server"></asp:ChangePassword>
</asp:Content>

