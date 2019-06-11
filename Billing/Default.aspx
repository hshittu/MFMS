<%@ Page Title="Bills Registered" Language="C#" EnableEventValidation="false" MasterPageFile="~/Masterpages/Frontend.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Billing_Default" %>

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
          function doPrint1() {
              var prtContent = document.getElementById('<%=GridView2.ClientID%>');
              prtContent.border = 0; //set no border here
              var WinPrint = window.open('', '', 'left=100,top=100,width=1000,height=1000,toolbar=0,scrollbars=1,status=0,resizable=1');
              WinPrint.document.write(prtContent.outerHTML);
              WinPrint.document.close();
              WinPrint.focus();
              WinPrint.print();
              WinPrint.close();
          }
</script>
    <h5>Note: You can Only Export In-Patient Report from this Page, To export Out-Patients Data, Go to Billings/Export OutBills.</h5>
    <asp:DropDownList ID="txtPatientType" runat="server" AutoPostBack="True">
        <asp:ListItem>InPatient</asp:ListItem>
        <asp:ListItem>OutPatient</asp:ListItem>
    </asp:DropDownList>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" DataKeyNames="BillingId" DataSourceID="SqlDataSource1" Visible="False" CellSpacing="2" ForeColor="Black">
        <Columns>
            <asp:BoundField DataField="BillingId" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="BillingId" />
            <asp:BoundField DataField="VisitId" HeaderText="VisitId" SortExpression="VisitId" />
            <asp:BoundField DataField="PatientId" HeaderText="PatId" SortExpression="PatientId" />
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
            <asp:BoundField DataField="DoctorId" HeaderText="Doctor" SortExpression="DoctorId" />
            <asp:BoundField DataField="DoctorCost" HeaderText="Cost" SortExpression="DoctorCost" />
            <asp:BoundField DataField="VisitDate" HeaderText="VisitDate" SortExpression="VisitDate" />
            <asp:BoundField DataField="RoomId" HeaderText="RoomId" SortExpression="RoomId" />
            <asp:BoundField DataField="RoomCost" HeaderText="Cost" SortExpression="RoomCost" />
            <asp:BoundField DataField="Days" HeaderText="Days" SortExpression="Days" />
            <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" />
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
    <asp:Button ID="PrintButton" runat="server" Text="Print Report" Visible="False" OnClientClick="doPrint()" />
    <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" DataKeyNames="BillingId" DataSourceID="SqlDataSource2" Visible="False" CellSpacing="2" ForeColor="Black">
        <Columns>
            <asp:BoundField DataField="BillingId" HeaderText="BillingId" InsertVisible="False" ReadOnly="True" SortExpression="BillingId" />
            <asp:BoundField DataField="VisitId" HeaderText="VisitId" SortExpression="VisitId" />
            <asp:BoundField DataField="PatientId" HeaderText="PatientId" SortExpression="PatientId" />
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
            <asp:BoundField DataField="DoctorId" HeaderText="DoctorId" SortExpression="DoctorId" />
            <asp:BoundField DataField="DoctorCost" HeaderText="DoctorCost" SortExpression="DoctorCost" />
            <asp:BoundField DataField="Additional" HeaderText="Additional" SortExpression="Additional" />
            <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" />
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
    <asp:Button ID="PrintButton1" runat="server" Text="Print Report" Visible="False" OnClientClick="doPrint1()" />
    <asp:Button ID="btnWordExport" runat="server" Text="Export to Word" OnClick="btnWordExport_Click" />
    <asp:Button ID="btnPDFExport" runat="server" Text="Export to PDF" OnClick="btnPDFExport_Click" /><br />
    <br />
    <asp:Button ID="OutBillsButton" runat="server" Text="Export OutBills" PostBackUrl="~/Billing/ExportOutBills.aspx" />
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MFMSconnectionstring %>" SelectCommand="SELECT [BillingId], [VisitId], [PatientId], [FirstName], [LastName], [DoctorId], [DoctorCost], [Additional], [Total] FROM [tblOutPatientBilling]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MFMSconnectionstring %>" SelectCommand="SELECT [BillingId], [VisitId], [PatientId], [FirstName], [LastName], [DoctorId], [DoctorCost], [VisitDate], [RoomId], [RoomCost], [Days], [Total] FROM [tblInPatientBilling]"></asp:SqlDataSource>
    <br />
</asp:Content>

