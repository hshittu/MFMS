<%@ Page Title="Login to MFMS" Language="C#" MasterPageFile="~/Masterpages/Frontend.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <h3>Login to MFMS</h3>
    <p>
        <asp:LoginView ID="LoginView1" runat="server">
            <AnonymousTemplate>
                <asp:Login ID="Login1" runat="server" CreateUserUrl="~/CreateUser.aspx" TitleText="MFMS">
                </asp:Login>
                <br />
                <br />
                <asp:PasswordRecovery ID="PassRecovery" runat="server">
                    <MailDefinition Subject="Your New Password for MFMS"></MailDefinition>
                </asp:PasswordRecovery>
            </AnonymousTemplate>
            <LoggedInTemplate>
                You Are Already Logged In
            </LoggedInTemplate>
        </asp:LoginView>
        <asp:LoginStatus ID="LoginStatus1" runat="server" /><br />
        <asp:Button ID="Button1" runat="server" PostBackUrl="~/CreateUser.aspx" Text="Create New User" />
    </p>
</asp:Content>

