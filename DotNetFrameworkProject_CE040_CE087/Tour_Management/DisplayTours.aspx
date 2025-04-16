<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DisplayTours.aspx.cs" Inherits="Tour_Management.DisplayTours" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        ListView1 li {
            display: grid;
        }
        .nav-link:hover {
            background-color: #333 !important;
        }
        h1 {
            text-align:center;
        }
        p{
            text-align: center;
            font-size: 25px;
        }
    </style>
      <link rel="stylesheet" type="text/css" href="/Content/styles.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js" integrity="sha384-qKXV1j0HvMUeCBQ+QVp7JcfGl760yU08IQ+GpUo5hlbpg51QRiuqHAJz8+BrxE/N" crossorigin="anonymous"></script>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Tour Management System</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
      aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav ms-auto">
  <li class="nav-item">
    <a class="nav-link text-white bg-dark" href="usercrud.aspx">Profile</a>
  </li>
  <li class="nav-item">
    <a class="nav-link text-white bg-dark" href="DisplayTours.aspx">Tours</a>
  </li>
  <li class="nav-item">
    <a class="nav-link text-white bg-dark" href="Order.aspx">Book Tour</a>
  </li>
  <li class="nav-item">
    <a class="nav-link text-white bg-dark" href="mybooking.aspx">Bookings Info</a>
  </li>
          <li class="nav-item">
    <a class="nav-link text-white bg-dark" href="Logout.aspx">Logout</a>
</li>

</ul>

    </div>
  </div>
</nav><br />
    <form id="form1" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbconnection %>" SelectCommand="SELECT [TOUR_ID], [TOUR_NAME], [PLACE], [DAYS], [PRICE], [LOCATIONS], [TOUR_INFO], [pic] FROM [Tour]"></asp:SqlDataSource>
        <div class="container my-4">
             <h1 class="text-center mb-4">Available Tours</h1>
             <p class="text-center" style="font-size: 23px;">Click on the Book Now button to book your tour</p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="TOUR_ID" DataSourceID="SqlDataSource1"
        CssClass="table table-bordered text-center align-middle"
        Width="100%" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px"
        CellPadding="4" GridLines="Vertical" BackColor="White" ForeColor="Black">
        
        <AlternatingRowStyle BackColor="White" />
        
        <Columns>
            <asp:BoundField DataField="TOUR_ID" HeaderText="TOUR ID" InsertVisible="False" ReadOnly="True" SortExpression="TOUR_ID" />
            <asp:BoundField DataField="TOUR_NAME" HeaderText="TOUR NAME" SortExpression="TOUR_NAME" />
            <asp:BoundField DataField="PLACE" HeaderText="PLACE" SortExpression="PLACE" />
            <asp:BoundField DataField="DAYS" HeaderText="DAYS" SortExpression="DAYS" />
            <asp:BoundField DataField="PRICE" HeaderText="PRICE" SortExpression="PRICE" />
            <asp:BoundField DataField="LOCATIONS" HeaderText="LOCATIONS" SortExpression="LOCATIONS" />
            
            <asp:TemplateField HeaderText="IMAGES">
                <ItemTemplate>
                    <img src='Tour_pics/<%# Eval("pic") %>' style="width:180px; height:180px; object-fit:cover; border-radius:8px;" />
                </ItemTemplate>
            </asp:TemplateField>
            
            <asp:TemplateField>
    <ItemTemplate>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="Order.aspx"
            CssClass="btn btn-primary btn-sm" Text="Book Now"></asp:HyperLink>
    </ItemTemplate>
</asp:TemplateField>

        </Columns>

        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <RowStyle BackColor="White" HorizontalAlign="Center" />
        <FooterStyle BackColor="#CCCC99" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FBFBF2" />
        <SortedAscendingHeaderStyle BackColor="#848384" />
        <SortedDescendingCellStyle BackColor="#EAEAD3" />
        <SortedDescendingHeaderStyle BackColor="#575357" />
    </asp:GridView>
</div>

        &nbsp;
    </form>
</body>
</html>
