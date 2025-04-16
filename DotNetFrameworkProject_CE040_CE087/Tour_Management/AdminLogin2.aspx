<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminLogin2.aspx.cs" Inherits="Tour_Management.AdminLogin2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Login</title>
    <style>
        body {
            background-color: white;
        }
        h1 {
            text-align: center;
        }
    </style>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body><br />
            <h1>Tour Management System</h1>
    <form id="form1" runat="server">
        <div class="container d-flex justify-content-center align-items-center" style="height:80vh;">
            <div class="card p-4 shadow" style="width: 400px; height: 400px">
                <h3 class="text-center mb-4">Admin Login</h3>

                <!-- Username -->
                <asp:Label ID="name1" runat="server" Text="Username" CssClass="form-label"></asp:Label>
                <asp:TextBox ID="name" runat="server" CssClass="form-control mb-1"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                    ControlToValidate="name" ErrorMessage="Username is required"
                    ForeColor="Red" Display="Dynamic" CssClass="small" />

                <!-- Password -->
                <asp:Label ID="password1" runat="server" Text="Password" CssClass="form-label mt-3"></asp:Label>
                <asp:TextBox ID="password" runat="server" TextMode="Password" CssClass="form-control mb-1"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                    ControlToValidate="password" ErrorMessage="Password is required"
                    ForeColor="Red" Display="Dynamic" CssClass="small" /><br />

                <!-- Login Button -->
                <asp:Button ID="Button1" CssClass="btn btn-primary w-100 mt-4" runat="server" Text="Login" OnClick="Button1_Click" />
                <!-- Error Message Label -->
<asp:Label ID="lblError" runat="server" ForeColor="Red" CssClass="mt-2 text-center" Visible="false"></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>