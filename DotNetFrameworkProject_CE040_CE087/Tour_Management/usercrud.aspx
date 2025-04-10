<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="usercrud.aspx.cs" Inherits="Tour_Management.usercrud" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title></title>
<style>
    body {
        background-color: white;
    }

 .container {
     display: flex;
     justify-content: center;
     align-items: center;
 }
    .nav-link:hover {
       background-color: #333 !important;
   }
    </style>
    <link rel="stylesheet" type="text/css" href="/Content/styles.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js" integrity="sha384-qKXV1j0HvMUeCBQ+QVp7JcfGl760yU08IQ+GpUo5hlbpg51QRiuqHAJz8+BrxE/N" crossorigin="anonymous"></script>
</head>
<body>
    <form id="form1" runat="server">
        <!-- Navbar -->
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">Tour Management System</a>
                <div class="collapse navbar-collapse justify-content-end">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link text-white" href="MainProfilePage.aspx">Profile</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-white" href="DisplayTours.aspx">Tours</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-white" href="Order.aspx">Book Tour</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-white" href="mybooking.aspx">Bookings Info</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-white" href="Logout.aspx">Logout</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <!-- Profile Table -->
        <div class="d-flex justify-content-center align-items-center" style="min-height: 80vh;">
            <div class="card shadow-lg p-4" style="width: 100%; max-width: auto; max-height: auto; background-color: #ffffff;">
                <h3 class="text-center text-black text-primary mb-4">User Profile</h3>
                <h4 class="text-center text-black text-primary mb-4">Click on the edit button to edit profile</h4>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AutoGenerateEditButton="True"
                DataKeyNames="Email" DataSourceID="SqlDataSource1" AllowSorting="True"
                CssClass="table table-bordered text-center border-black bg-white shadow" GridLines="None">
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                <RowStyle BackColor="White" HorizontalAlign="Center" />
                <AlternatingRowStyle BackColor="#f2f2f2" />
                <Columns>
                    <asp:BoundField DataField="Email" HeaderText="Email" ReadOnly="True" SortExpression="Email" />
                    <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                    <asp:TemplateField HeaderText="Gender" SortExpression="Gender">
    <ItemTemplate>
        <%# Eval("Gender") %>
    </ItemTemplate>
    <EditItemTemplate>
        <asp:DropDownList ID="ddlGender" runat="server" SelectedValue='<%# Bind("Gender") %>' CssClass="form-select border-black" BackColor="White" Width="190px" Height="35px">
            <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
            <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
        </asp:DropDownList>
    </EditItemTemplate>
</asp:TemplateField>

                    <asp:BoundField DataField="Street" HeaderText="Street" SortExpression="Street" />
                    <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                    <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                </Columns>
            </asp:GridView>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                ConnectionString="<%$ ConnectionStrings:dbconnection %>"
                SelectCommand="SELECT TOP 1 * FROM UserInfo ORDER BY Email DESC"
                UpdateCommand="UPDATE [UserInfo] SET [Username]=@Username, [Email]=@Email, [Gender]=@Gender, [Street]=@Street, [City]=@City, [State]= @State WHERE [Email]=@Email">
            </asp:SqlDataSource>
        </div>
        </div>
    </form>
</body>




</html>