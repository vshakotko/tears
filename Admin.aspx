<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="FoodBank.Admin" %>

<!DOCTYPE HTML>
<html lang="en">
<head>
	<title>Administrator - NutriRate</title>
    <link rel="icon" href="img/favicon.ico">    
<!-- Required Bootstrap Metatags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Additional Metatags -->
    <meta name="description" content="Nutrirate is able to evaluate the nutritional values of foods using an algorithm that analyzes the nutrition information of each product. Providing an easy method of comparison, Nutrirate offers the ability to aid consumers in making informed and educated food purchasing and concuming decisions.">    
<!-- Link to Bootstrap CSS -->
    <link rel="stylesheet" href="bootstrap-4.0.0-beta/dist/css/bootstrap.min.css">    
<!-- Link to Bootstap Dashboard CSS -->
    <link href="css/dashboard.css" rel="stylesheet">    
<!-- Link to Custom CSS -->
    <link href="css/stylesheet.css" rel="stylesheet" > 
<!-- Custom Fonts and Icons -->
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">
</head>
 
<body>

<!-- Top and Side Navigation -->
    <nav class="navbar navbar-expand-md navbar-dark fixed-top">
        <a class="navbar-brand" href="index.html"><img src="img/logo.png" alt="Nutrirate Logo" width="200" height="51"></a>
            <div class="collapse navbar-collapse" id="navbarsExampleDefault">
<!-- Empty tag, but needed for slogan to be right aligned --><h1 class="navbar-nav mr-auto"></h1>
          <h2 class="slogan" >Compare. Catalog. Consume.</h2>
      </div>
    </nav>

         <div class="container-fluid">
          <div class="row">
            <nav class="col-sm-3 col-md-2 d-none d-sm-block sidebar">
              <ul class="nav nav-pills flex-column">
                <li class="nav-item text-center sidenav">
                    <a class="nav-link" href="Dashboard.aspx">
                    <i class="fa fa-pie-chart text-white" style="font-size: 60px"></i>
                    <div class="nav-term">Dashboard</div></a>
                </li>
                <li class="nav-item text-center sidenav">
                    <a class="nav-link" href="Food.aspx">
                    <i class="fa fa-sort-amount-desc text-white" style="font-size: 60px"></i>
                    <div class="nav-term">Find Foods</div></a>
                </li>
                <li class="nav-item text-center sidenav">
                    <a class="nav-link" href="AddItem.aspx">
                    <i class="fa fa-plus text-white" style="font-size: 60px"></i>
                    <div class="nav-term">Add New Item</div></a>
                </li>
                <li class="nav-item text-center sidenav">
                    <a class="nav-link active" href="Admin.aspx">
                    <i class="fa fa-cog text-white" style="font-size: 60px"></i>
                    <div class="nav-term">Administrator</div></a>
                </li>
                <li class="nav-item logout text-center">
                    <a class="nav-link" href="Index.aspx">
                    <i class="fa fa-sign-out"></i><span> Log Out</span></a>
                </li>
              </ul>
            </nav>
              
<!-- Page Heading -->
            <main class="col-sm-9 ml-sm-auto col-md-10 pt-3" role="main">
              <h1>Administrator Settings</h1>

        <!-- Close Body main and div tags -->
            </main>
          </div>
        </div>

<!-- Bootstrap jQuery, Popper.js, JavaScript -->
     <script src="bootstrap-4.0.0-beta/assets/js/vendor/jquery-slim.min.js"></script>
    <script src="bootstrap-4.0.0-beta/assets/js/vendor/popper.min.js"></script>
    <script src="bootstrap-4.0.0-beta/assets/js/src/application.js"></script>
</body>
</html>