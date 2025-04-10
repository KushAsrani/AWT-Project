<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="Tour_Management.Order" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .container {
            text-align: center;
            background-color: white;
            width: 100%;
            font-size: 30px;
            color: black;
            padding-bottom: 150px;
            opacity: 0.8;
        }
       .nav-link:hover {
           background-color: #333 !important;
        }
       .mb-3 {
           text-align: left;
           font-size: large;
       }
       .mb-4 {
           text-align: left;
           font-size: large;
       }
    </style>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
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
   <form runat="server">
    <div class="container d-flex justify-content-center align-items-center" style="min-height: 90vh; max-height: auto;">
        <div class="card text-black shadow p-4" style="width: 100%; max-width: 600px;">
            <div class="card-body">
                <h2 class="card-title text-center">Book Tour</h2>
                <p class="text-center mb-4">Enter your details to confirm your booking</p>

                <div class="mb-3">
                    <asp:Label ID="Label1" runat="server" Text="Your Name" CssClass="form-label" />
<asp:TextBox ID="name" runat="server" CssClass="form-control" />
<asp:RequiredFieldValidator ID="rfvName" runat="server"
    ControlToValidate="name" ErrorMessage="Name is required"
    ForeColor="Red" Display="Dynamic" />

                </div>

                <div class="mb-3">
                    <asp:Label ID="Label3" runat="server" Text="Your City" CssClass="form-label" />
<asp:TextBox ID="city" runat="server" CssClass="form-control" />
<asp:RequiredFieldValidator ID="rfvCity" runat="server"
    ControlToValidate="city" ErrorMessage="City is required"
    ForeColor="Red" Display="Dynamic" />

                </div>

                <div class="mb-3">
                    <asp:Label ID="Label5" runat="server" Text="Tour Name" CssClass="form-label" />
<asp:TextBox ID="tour_name" runat="server" CssClass="form-control" />
<asp:RequiredFieldValidator ID="rfvTour" runat="server"
    ControlToValidate="tour_name" ErrorMessage="Tour Name is required"
    ForeColor="Red" Display="Dynamic" />

                </div>

                <div class="mb-4">
                    <asp:Label ID="Label10" runat="server" Text="Mobile Number" CssClass="form-label" />
<asp:TextBox ID="number" runat="server" CssClass="form-control" TextMode="Number" />
<asp:RequiredFieldValidator ID="rfvMobile" runat="server"
    ControlToValidate="number" ErrorMessage="Mobile number is required"
    ForeColor="Red" Display="Dynamic" />
<asp:RegularExpressionValidator ID="revMobile" runat="server"
    ControlToValidate="number"
    ValidationExpression="^[0-9]{10}$"
    ErrorMessage="Please enter a valid 10-digit mobile number"
    ForeColor="Red" Display="Dynamic" />

                </div><br />

                <div class="d-grid gap-2 d-md-flex justify-content-center">
                    <asp:Button ID="Book" runat="server" Text="Register" CssClass="btn btn-primary w-45"
    OnClick="btn_click" CausesValidation="True" />
                    <asp:Button ID="Reset" runat="server" Text="Reset" CssClass="btn btn-secondary w-45"
    CausesValidation="False" OnClientClick="this.form.reset(); return false;" />
                </div>
            </div>
        </div>
    </div>
</form>

</body>
</html>
