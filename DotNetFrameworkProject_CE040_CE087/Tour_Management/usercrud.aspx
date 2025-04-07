<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="usercrud.aspx.cs" Inherits="Tour_Management.usercrud" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title></title>
<style>
 .container {
     display: flex;
     justify-content: center;
     align-items: center;
     margin: 250px;
 }
    </style>
    <link rel="stylesheet" type="text/css" href="/Content/styles.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js" integrity="sha384-qKXV1j0HvMUeCBQ+QVp7JcfGl760yU08IQ+GpUo5hlbpg51QRiuqHAJz8+BrxE/N" crossorigin="anonymous"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AutoGenerateEditButton="True" DataKeyNames="Email" DataSourceID="SqlDataSource1" AllowSorting="True" BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" CellPadding="4" ForeColor="Black">
        <AlternatingRowStyle BackColor="White" Width="500px" />
        <Columns>
            <asp:BoundField DataField="Email" HeaderText="Email" ReadOnly="True" SortExpression="Email"/>
            <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
            <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
            <asp:BoundField DataField="Street" HeaderText="Street" SortExpression="Street" />
            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
            <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
        </Columns>
        <FooterStyle BackColor="White" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" BorderColor="Black" BorderWidth="1px" BorderStyle="Solid" />
        <RowStyle BackColor="White" HorizontalAlign="Center" BorderWidth="1px" BorderStyle="Solid" BorderColor="Black" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FBFBF2" />
        <SortedAscendingHeaderStyle BackColor="#848384" />
        <SortedDescendingCellStyle BackColor="#EAEAD3" />
        <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:GridView>
   
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbconnection %>" SelectCommand="Select top (select COUNT(*) from UserInfo) * From UserInfo
EXCEPT
Select top ((select COUNT(*) from UserInfo)-(1)) * From UserInfo"
            
            UpdateCommand="UPDATE [UserInfo] Set [Username]=@Username, [Email]=@Email, [Gender]=@Gender, [Street]=@Street, [City]=@City, [State]= @State Where [Email]=@Email"
            ></asp:SqlDataSource>
            </div>
    </form>
   
</body>
</html>