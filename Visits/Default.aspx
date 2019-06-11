<%@ Page Title="Visits Registered" Language="C#" EnableEventValidation="false" MasterPageFile="~/Masterpages/Frontend.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Visits_Default" %>

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
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" DataKeyNames="VisitId" DataSourceID="SqlDataSource1" CellSpacing="2" ForeColor="Black">
        <Columns>
            <asp:BoundField DataField="VisitId" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="VisitId" />
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
            <asp:BoundField DataField="PatientId" HeaderText="PatientId" SortExpression="PatientId" />
            <asp:BoundField DataField="VitalSigns" HeaderText="VitalSigns" SortExpression="VitalSigns" />
            <asp:BoundField DataField="Symptoms" HeaderText="Symptoms" SortExpression="Symptoms" />
            <asp:BoundField DataField="VisitDate" HeaderText="VisitDate" SortExpression="VisitDate" />
            <asp:BoundField DataField="BloodPressure" HeaderText="BP" SortExpression="BloodPressure" />
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
    <asp:Button ID="btnWordExport" runat="server" Text="Export to Word" OnClick="btnWordExport_Click" />
    <asp:Button ID="btnPDFExport" runat="server" Text="Export to PDF" OnClick="btnPDFExport_Click" />
    <asp:Button ID="btnRBview" runat="server" Text="View all Data on Report Viewer(Report Builder)" PostBackUrl="~/Visits/RBview.aspx" />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MFMSconnectionstring %>" SelectCommand="SELECT [VisitId], [FirstName], [LastName], [PatientId], [VitalSigns], [Symptoms], [VisitDate], [BloodPressure] FROM [tblVisits]"></asp:SqlDataSource>
</asp:Content>

