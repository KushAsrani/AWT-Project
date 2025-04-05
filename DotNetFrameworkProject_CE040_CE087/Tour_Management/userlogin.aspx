<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="userlogin.aspx.cs" Inherits="Tour_Management.userlogin" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

<style type="text/css">

.wrapper {
    display: flex;
    justify-content: center;
    align-items: center;
}

.container {
    text-align: center;
    background-color: white;
    width: 90%;
    max-width: 800px;
    padding: 50px;
    margin: auto;
    font-size: 18px;
    border-radius: 12px;
    box-shadow: 0 0 25px rgba(0, 0, 0, 0.15);
    opacity: 0.98;
}





    </style>

   
   <link rel="stylesheet" type="text/css" href="/Content/styles.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js" integrity="sha384-qKXV1j0HvMUeCBQ+QVp7JcfGl760yU08IQ+GpUo5hlbpg51QRiuqHAJz8+BrxE/N" crossorigin="anonymous"></script>

    <script src="./script.js"></script>
    <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Rubik:400,700'>
</head>
<body>



    <br />
    <br />

  <div class="wrapper">
    <div class="login-form">
        <div class="container" runat="server">
            <div class="page-header">
                <h1>User Login</h1>
            </div>
            <form id="form1" runat="server">
    <div class="mb-4 text-start">
        <asp:Label ID="Label1" runat="server" Text="Email" CssClass="form-label"></asp:Label>
        <asp:TextBox ID="txtEmail" TextMode="Email" runat="server" required="true" CssClass="form-control form-control-lg" Width="400px" />
    </div>

    <div class="mb-4 text-start">
        <asp:Label ID="Label2" runat="server" Text="Password" CssClass="form-label"></asp:Label>
        <asp:TextBox ID="txtPassword" type="password" required="true" runat="server" CssClass="form-control form-control-lg" Width="400px"/>
    </div><br />

    <div class="d-grid gap-3">
        <asp:Button ID="Register" runat="server" Text="Login" CssClass="btn btn-dark btn-lg" OnClick="Btn_Submit" BackColor="#F0F0F0" ForeColor="Black" />
        <asp:Button ID="Button1" runat="server" Text="Sign Up" CssClass="btn btn-dark btn-lg" OnClick="Btn_reg" BackColor="#F0F0F0" ForeColor="Black" />
    </div>
</form>

            </div>
           </div>
        </div>

    <p>
        &nbsp;</p>
   
</body>

</html>
