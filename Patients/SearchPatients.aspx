<%@ Page Title="Search Patients" Language="C#" EnableEventValidation="false" MasterPageFile="~/Masterpages/Frontend.master" AutoEventWireup="true" CodeFile="SearchPatients.aspx.cs" Inherits="Patients_SearchPatients" %>

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
    FirstName:<asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
    <br />
    LastName:<asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
    <br />
    <asp:Button ID="SearchButton" runat="server" Text="Search" />
    <asp:GridView ID="GridView1" runat="server" CellPadding="4" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="PatientId" DataSourceID="SqlDataSource1" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellSpacing="2" ForeColor="Black">
        <Columns>
            <asp:BoundField DataField="PatientId" HeaderText="PatientId" InsertVisible="False" ReadOnly="True" SortExpression="PatientId" />
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber" />
          <asp:TemplateField  ItemStyle-Height = "150" ItemStyle-Width = "180">
        <ItemTemplate>
            <asp:Image ID="Image1" runat="server" Height="150" Width="180"
             ImageUrl = '<%# Eval("ImagePath", GetUrl("{0}")) %>' />
        </ItemTemplate>

<ItemStyle Height="150px" Width="180px"></ItemStyle>
    </asp:TemplateField>
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
    <asp:Button ID="PrintButton" runat="server" Text="Print Report" OnClientClick="doPrint()"/>
    <asp:Button ID="btnWordExport" runat="server" Text="Export to Word" OnClick="btnWordExport_Click" />
    <asp:Button ID="btnPDFExport" runat="server" Text="Export to PDF" OnClick="btnPDFExport_Click" />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MFMSconnectionstring %>" SelectCommand="SELECT [PatientId], [FirstName], [LastName], [Email], [ImagePath], [PhoneNumber] FROM [tblPatients] WHERE (([FirstName] = @FirstName) AND ([LastName] = @LastName))">
        <SelectParameters>
            <asp:ControlParameter ControlID="txtFirstName" Name="FirstName" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="txtLastName" Name="LastName" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

