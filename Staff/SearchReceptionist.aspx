<%@ Page Title="Search Receptionists" Language="C#" MasterPageFile="~/Masterpages/Frontend.master" AutoEventWireup="true" CodeFile="SearchReceptionist.aspx.cs" Inherits="Staff_SearchReceptionist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
     <script type="text/javascript">
         function doPrint() {
             var prtContent = document.getElementById('<%=GridView1.ClientID%>');
              prtContent.border = 0; //set no border here
              var WinPrint = window.open('', '', 'left=100,top=100,width=1000,height=1000,toolbar=0,scrollbars=1,status=0,resizable=1');
              WinPrint.document.write(prtContent.outerHTML);
              WinPrint.document.close();
              WinPrint.focus();
              WinPrint.print();
              WinPrint.close();
         }
         </script>
        First Name:<asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox><br />
        LastName:<asp:TextBox ID="txtLastName" runat="server"></asp:TextBox><br />
        <asp:Button ID="SearchButton" runat="server" Text="Search" /><br />
    <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" DataSourceID="SqlDataSource1" CellSpacing="2" ForeColor="Black">
            <Columns>
                <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber" />
                <asp:BoundField DataField="Sex" HeaderText="Sex" SortExpression="Sex" />
                <asp:BoundField DataField="RegistrationDate" HeaderText="RegistrationDate" SortExpression="RegistrationDate" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <asp:Button ID="PrintButton" runat="server" Text="Print Report" OnClientClick="doPrint()" />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MFMSconnectionstring %>" SelectCommand="SELECT [FirstName], [LastName], [PhoneNumber], [Sex], [RegistrationDate], [Email], [Address] FROM [tblReceptionists] WHERE (([FirstName] = @FirstName) AND ([LastName] = @LastName))">
            <SelectParameters>
                <asp:ControlParameter ControlID="txtFirstName" Name="FirstName" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="txtLastName" Name="LastName" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
</asp:Content>

