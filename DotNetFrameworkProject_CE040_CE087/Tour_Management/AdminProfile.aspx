<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminProfile.aspx.cs" Inherits="Tour_Management.AdminProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <style type="text/css">
        .page-header{
            text-align:center;

        }
         ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #333;
}

li {
  float: left;
  border-right:1px solid #bbb;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

li a:hover:not(.active) {
  background-color: #111;
}

.active {
  background-color: #04AA6D;
}
.label-info{
           color:white;
           background-color:black;
           opacity:0.7;
          padding-left:50px;
          
          align-content:center;
        }
.page-header {
    background-image: url('../Pics/adminhp.jpg');
    background-size: cover;
    color: white;
    height: 600px;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    opacity: 0.9;
    text-align: center;
}

        .a:link{
            color:white;
           background-color: black;
        }

        .page-header .a{
            font-size:larger;
            background-color:darkslateblue;
            color:white;
            
        }
        .page-header .p{
            text-align:center;
            
            color:white;         
        }
        .page-header h2{
            align-items:center;
        }
        .navbar-dark .navbar-nav .nav-link {
        color: white !important;
        border: none !important;
        margin-right: 10px;
    }

    .navbar-dark .navbar-nav .nav-link:hover {
        color: #cccccc !important;
        background-color: transparent !important;
    }
        </style>
      <link rel="stylesheet" type="text/css" href="/Content/styles.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js" integrity="sha384-qKXV1j0HvMUeCBQ+QVp7JcfGl760yU08IQ+GpUo5hlbpg51QRiuqHAJz8+BrxE/N" crossorigin="anonymous"></script>
</head>
<body>
     <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="AdminProfile.aspx">Admin Panel</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#adminNavbar" aria-controls="adminNavbar" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="adminNavbar">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link" href="AdminProfile.aspx">Profile</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="AddTour.aspx">Add Tours</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="TourCrud.aspx">Manage Tours</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="allbooking.aspx">Current Booking</a>
        </li>
      </ul>
      <form class="d-flex">
        <a class="btn btn-outline-light" href="AdminLogin2.aspx">Logout</a>
      </form>
    </div>
  </div>
</nav>

    <div class="page-header">    
<br/> <br/> <br/>
<h1>Welcome to the Admin Section</h1>
<p>
  You can manage the admin work here.<br/>
  You can add tours and places for customers.
</p>

        
    </div>
   
</body>
</html>
