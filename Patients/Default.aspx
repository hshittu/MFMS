<%@ Page Title="Patients Registered" Language="C#" EnableEventValidation="false" MasterPageFile="~/Masterpages/Frontend.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Patients_Default" %>

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
    <asp:GridView ID="GridView1" runat="server" width="600px" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" DataKeyNames="PatientId" DataSourceID="SqlDataSource1" CellSpacing="2" ForeColor="Black">
        <Columns>
            <asp:BoundField DataField="PatientId" HeaderText="PatientId" InsertVisible="False" ReadOnly="True" SortExpression="PatientId" />
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
            <%--<asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />--%>
            <asp:BoundField DataField="PatientType" HeaderText="PatientType" SortExpression="PatientType" />
            <asp:BoundField DataField="BloodGroup" HeaderText="B-Group" SortExpression="BloodGroup" />
            <asp:BoundField DataField="Genotype" HeaderText="G-type" SortExpression="Genotype" />
            <asp:BoundField DataField="AdmissionDate" HeaderText="Admitted" SortExpression="AdmissionDate" />
            <asp:BoundField DataField="Room" HeaderText="Room" SortExpression="Room" />
           <asp:TemplateField  ItemStyle-Height = "120" ItemStyle-Width = "150">
        <ItemTemplate>
            <asp:Image ID="Image1" runat="server" Height="120" Width="150"
             ImageUrl = '<%# Eval("ImagePath", GetUrl("{0}")) %>' />
        </ItemTemplate>

<ItemStyle Height="120px" Width="150px"></ItemStyle>
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
     <asp:Button ID="btnPDFExport" runat="server" OnClick="btnPDFExport_Click" Text="Export to PDF" />
    <asp:Button ID="RBviewButton" runat="server" Text="View All Data On Report Viewer(Report Builder)" PostBackUrl="~/Patients/RBview.aspx" />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MFMSconnectionstring %>" SelectCommand="SELECT [PatientId], [FirstName], [LastName], [Email], [ImagePath], [PatientType], [BloodGroup], [Genotype], [AdmissionDate], [Room] FROM [tblPatients]"></asp:SqlDataSource>
     
</asp:Content>

