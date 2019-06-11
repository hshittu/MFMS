<%@ Page Title="Edit Patient" Language="C#" MasterPageFile="~/Masterpages/Frontend.master" AutoEventWireup="true" CodeFile="EditPatient.aspx.cs" Inherits="Patients_EditPatient" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <p>
        Edit Patient Records</p>
    <p>
        <asp:GridView ID="GridView1" runat="server" CssClass="table table-hover table-striped" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="PatientId" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CellPadding="4" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellSpacing="2" ForeColor="Black">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="PatientId" HeaderText="PatientId" InsertVisible="False" ReadOnly="True" SortExpression="PatientId" />
                <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber" />
                <asp:BoundField DataField="PatientType" HeaderText="PatientType" SortExpression="PatientType" />
                <asp:BoundField DataField="PatientAddress" HeaderText="PatientAddress" SortExpression="PatientAddress" />
                <asp:BoundField DataField="Comment" HeaderText="Comment" SortExpression="Comment" />
                <asp:BoundField DataField="Room" HeaderText="Room" SortExpression="Room" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC"></FooterStyle>

            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White"></HeaderStyle>

            <PagerStyle HorizontalAlign="Left" BackColor="#CCCCCC" ForeColor="Black"></PagerStyle>

            <RowStyle BackColor="White"></RowStyle>

            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White"></SelectedRowStyle>

            <SortedAscendingCellStyle BackColor="#F1F1F1"></SortedAscendingCellStyle>

            <SortedAscendingHeaderStyle BackColor="#808080"></SortedAscendingHeaderStyle>

            <SortedDescendingCellStyle BackColor="#CAC9C9"></SortedDescendingCellStyle>

            <SortedDescendingHeaderStyle BackColor="#383838"></SortedDescendingHeaderStyle>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MFMSconnectionstring %>" SelectCommand="SELECT [PatientId], [FirstName], [LastName], [Email], [PhoneNumber], [PatientType], [PatientAddress], [Comment], [Room] FROM [tblPatients]"></asp:SqlDataSource>
        <table class="auto-style1">
            <tr>
                <td>PatientId</td>
                <td>
                    <asp:TextBox ID="txtPatientId" runat="server" CssClass="form-control" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>FirstName</td>
                <td>
                    <asp:TextBox ID="txtFirstName" CssClass="form-control" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>LastName</td>
                <td>
                    <asp:TextBox ID="txtLastName" CssClass="form-control" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Email</td>
                <td>
                    <asp:TextBox ID="txtEmail" CssClass="form-control" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Phone Number</td>
                <td>
                    <asp:TextBox ID="txtPhoneNumber" CssClass="form-control" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Patient Type</td>
                <td>
                    <asp:DropDownList ID="txtPatientType" CssClass="form-control" runat="server" AutoPostBack="True">
                        <asp:ListItem>InPatient</asp:ListItem>
                        <asp:ListItem>OutPatient</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>Patient Address</td>
                <td>
                    <asp:TextBox ID="txtPatientAddress" CssClass="form-control" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Comment</td>
                <td>
                    <asp:TextBox ID="txtComment" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Ward</td>
                <td>
                    <asp:TextBox ID="txtRoom" CssClass="form-control" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
                <td>
                    <asp:Button ID="UpdateButton" runat="server" OnClick="UpdateButton_Click" CssClass="btn btn-primary" Text="Update" />
                </td>
            </tr>
        </table>
    </p>
</asp:Content>

