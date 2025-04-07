<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUpForm.aspx.cs" Inherits="Tour_Management.SignUpForm" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Registration</title>
    <style>
        body {
            background-color: #f8f9fa;
        }

        .form-wrapper {
            max-width: 600px;
            margin: 50px auto;
            background: white;
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.1);
        }

        h1 {
            margin-bottom: 30px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-control {
            font-size: 16px;
            height: 45px;
        }

        .btn {
            font-size: 18px;
            height: 45px;
        }

        .error {
            color: red;
            font-size: 14px;
        }
    </style>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" />
</head>

<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="form-wrapper">
                <h1 class="text-center">User Registration Form</h1>

                <!-- Username -->
               <div class="mb-3">
    <asp:Label ID="Label2" runat="server" Text="Username" CssClass="form-label" />
    <asp:TextBox ID="username" runat="server" CssClass="form-control" />
    <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ControlToValidate="username"
        ErrorMessage="Username is required" CssClass="error" Display="Dynamic" />
    <asp:CustomValidator ID="cvUsernameExists" runat="server" ControlToValidate="username"
        OnServerValidate="cvUsernameExists_ServerValidate"
        ErrorMessage="Username or email already exists." CssClass="error" Display="Dynamic" />
</div>

                <!-- Email -->
                <div class="mb-3">
    <asp:Label ID="Label1" runat="server" Text="Email" CssClass="form-label" />
    <asp:TextBox ID="email" runat="server" CssClass="form-control" />
    <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="email"
        ErrorMessage="Email is required" CssClass="error" Display="Dynamic" />
    <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="email"
        ErrorMessage="Invalid email format" CssClass="error" Display="Dynamic"
        ValidationExpression="^[^@\s]+@[^@\s]+\.[^@\s]+$" />
    <asp:CustomValidator ID="cvEmailExists" runat="server" ControlToValidate="email"
        OnServerValidate="cvEmailExists_ServerValidate"
        ErrorMessage="Username or email already exists." CssClass="error" Display="Dynamic" />
</div>

                <!-- Gender -->
                <div class="mb-3">
                    <asp:Label ID="Label4" runat="server" Text="Gender" CssClass="form-label" />
                    <asp:DropDownList ID="gender" runat="server" CssClass="form-select">
                        <asp:ListItem Text="Select" Value="" />
                        <asp:ListItem Text="Male" />
                        <asp:ListItem Text="Female" />
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rfvGender" runat="server" ControlToValidate="gender"
                        InitialValue="" ErrorMessage="Gender is required" CssClass="error" Display="Dynamic" />
                </div>

                <!-- Password -->
                <div class="mb-3">
                    <asp:Label ID="Label5" runat="server" Text="Enter Password" CssClass="form-label" />
                    <asp:TextBox ID="password1" runat="server" TextMode="Password" CssClass="form-control" />
                    <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="password1"
                        ErrorMessage="Password is required" CssClass="error" Display="Dynamic" />
                    <asp:RegularExpressionValidator ID="revPassword" runat="server" ControlToValidate="password1"
                        ErrorMessage="Password must be at least 6 characters" CssClass="error" Display="Dynamic"
                        ValidationExpression=".{6,}" />
                </div>

                <!-- Street -->
                <div class="mb-3">
                    <asp:Label ID="Label9" runat="server" Text="Street" CssClass="form-label" />
                    <asp:TextBox ID="street" runat="server" CssClass="form-control" />
                    <asp:RequiredFieldValidator ID="rfvStreet" runat="server" ControlToValidate="street"
                        ErrorMessage="Street is required" CssClass="error" Display="Dynamic" />
                </div>

                <!-- City -->
                <div class="mb-3">
                    <asp:Label ID="Label10" runat="server" Text="City" CssClass="form-label" />
                    <asp:TextBox ID="city" runat="server" CssClass="form-control" />
                    <asp:RequiredFieldValidator ID="rfvCity" runat="server" ControlToValidate="city"
                        ErrorMessage="City is required" CssClass="error" Display="Dynamic" />
                </div>

                <!-- State -->
                <div class="mb-4">
                    <asp:Label ID="Label11" runat="server" Text="State" CssClass="form-label" />
                    <asp:TextBox ID="state" runat="server" CssClass="form-control" />
                    <asp:RequiredFieldValidator ID="rfvState" runat="server" ControlToValidate="state"
                        ErrorMessage="State is required" CssClass="error" Display="Dynamic" />
                </div>

                <!-- Buttons -->
                <div class="d-grid gap-2 d-md-flex justify-content-center">
                    <asp:Button ID="Register" runat="server" Text="Register" CssClass="btn btn-primary me-md-2" OnClick="Register_Click" />
                    <asp:Button ID="Reset" runat="server" Text="Reset" CssClass="btn btn-secondary" CausesValidation="False" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>
