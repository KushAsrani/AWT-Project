<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainProfilePage.aspx.cs" Inherits="Tour_Management.MainProfilePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
         ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #333;
}

li {
  float: right;
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
        .body{
            background-image:none;
        }
        .tour {
            background-image: url('../Pics/homepage.jpg');
             background-size: cover;
            text-align:center;
            color:white;
            height:600px;
            background-color:white;
             opacity:0.8;
             justify-content: center;
             vertical-align:central;
        } 
        .a:link{
            color:white;
           
        }
        .tour a{
            font-size:larger;
            background-color: #007BFF;
            color:white;
            border-color: #007BFF;
        }
        .tour a:hover {
            color: white;
            background-color: #0069D9;
            border-color: #0062CC;
        }
        .tour p{
            text-align:center;
            
            color:white;         
        }
        .tour h2{
            align-items:center;
        }
        .hotel {
            background-image: url('../Pics/hotelcover.jpg');
            background-color:black;
            opacity:0.8;
            text-align:center;
            vertical-align:central;
             height:500px;
             
        }
        .label-info{
           color:white;
           background-color:black;
           opacity:0.7;
          padding-left:50px;
          
          align-content:center;
        }
     
        .places{
             background-image: url('../Pics/PlaceDiv.JPG');
             background-size: cover;
            text-align:center;
            color:white;
            height:500px;
            background-color:white;
             opacity:0.8;
             justify-content: center;
             vertical-align:central;

        }

  .label-info {
  color:white;
  background-color:black;
  opacity:0.7;
  padding-left:50px;
  align-content:center;
  justify-content:center;
}
  .custom-nav-link {
    color: white !important;
    background-color: black !important;
  }

   .nav-link:hover {
       background-color: #333 !important;
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
</nav>
        
    <div class="welcome" style="text-align:center">
        <asp:Label ID="Label1" runat="server" ></asp:Label>
    </div>
    <div class="tour">    
                    <h2>
              <br/> <br/> <br/><br/><br/>
                <p class="label-info">
                    Find the best tour packages without any hustle.<br/>
                    Book and pack your luggage.
                </p>
            </h2><br/><br/>
        <a href="DisplayTours.aspx" class="btn btn-primary" style="width:300px; height:50px ; font-size:x-large;">Explore the Tours!</a><br/><br/><br/>
        
    </div>

</body>
</html>
