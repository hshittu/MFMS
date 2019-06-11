<%@ Page Title="Create New User" Language="C#" MasterPageFile="~/Masterpages/Frontend.master" AutoEventWireup="true" CodeFile="CreateUser.aspx.cs" Inherits="_CreateUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" LoginCreatedUser="False">
        <MailDefinition BodyFileName="~/App_Data/CreateUserConfirmation.txt" Subject="Your New Account at MFMS">
        </MailDefinition>
        <WizardSteps>
            <asp:CreateUserWizardStep runat="server" />
            <asp:CompleteWizardStep runat="server" />
        </WizardSteps>
    </asp:CreateUserWizard>
</asp:Content>

