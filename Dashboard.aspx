<%@ Page Language="C#"  EnableEventValidation="false" AutoEventWireup="true"  Inherits="FoodBank.Dashboard" %>

<!DOCTYPE HTML>
<html lang="en">
<head>
	<title>Dashboard - NutriRate</title>
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
        <a class="navbar-brand" href="Index.aspx"><img src="img/logo.png" alt="Nutrirate Logo" width="200" height="51"></a>
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
                    <a class="nav-link active" href="Dashboard.aspx">
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
                    <a class="nav-link" href="Admin.aspx">
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
              <h1>Dashboard</h1>

<!-- Open Chart Section --> 
              <section class="row text-center placeholders">
                <div class="col-6 col-md-8">
                    <p class="barheadline">Monthly Budget</p>
                    <img src="img/bar.jpg" width="600">
                    <p class="bartext">$6,587 / $10,000</p>
                <div>
                    <p class="barheadline">Recent Activity</p>
                    <img src="img/activity.png" height="300">
                </div>
                </div>
                <div class="col-6 col-md-4 placeholder">
                  <img src="img/pie_chart.png" width="300" height="300" class="img-fluid rounded-circle" alt="Nutritional Value Percentages Displayed in a Pie Chart">
                  <h4>My Inventory</h4>
                  <div class="text-muted percentages"><p><img src="img/green_block.png" width="20"> 58%</p>
                                                      <p><img src="img/yellow_block.png" width="20"> 27%</p>
                                                      <p><img src="img/red_block.png" width="20"> 15%</p></div>
                </div>
              </section>
<!-- Close Chart Section -->   
                
<!-- Open Inventory List Table -->
              <h2>Inventory List</h2>
              <div class="table-responsive">
                <table id="soem-id" class="table table-striped">
                  <thead>
                    <tr class="inventoryheadings">
                      <th>Item Card #</th>
                      <th>Item Name</th>
                      <th>Nutrient Score</th>
                      <th>Category</th>
                      <th>Quantity</th>
                    </tr>
                  </thead>
                  <tbody>
            <!-- Item One -->  
                    <tr>
                      <td>12164</td>
                      <td>Mott's Natural Apple Juice, unsweetened</td>
                      <td class="nscorer">-15.3472</td>
                      <td>Juice</td>
                      <td>###</td>
                    </tr>
          <!-- Item Two -->
                    <tr>
                      <td>12165</td>
                      <td>Chicken, whole frozen</td>
                      <td class="nscorey">24.6874</td>
                      <td>Meat/Protien</td>
                      <td>###</td>
                    </tr>
            <!-- Item Three -->
                    <tr>
                      <td>12166</td>
                      <td>Green Beans, low sodium canned</td>
                      <td class="nscoreg">137.9251</td>
                      <td>Canned Fruit/Vegetables</td>
                      <td>###</td>
                    </tr>
            <!-- Item Four -->
                    <tr>
                      <td>12167</td>
                      <td>Capri Sun, Fruit Punch Pouch</td>
                      <td class="nscorey">4.8873</td>
                      <td>Juice</td>
                      <td>###</td>
                    </tr>
            <!-- Item Five -->
                    <tr>
                      <td>12168</td>
                      <td>Madarin Oranges, canned</td>
                      <td class="nscoreg">62.1523</td>
                      <td>Canned Fruit/Vegetables</td>
                      <td>###</td>

                  </tbody>
                </table>
              </div>
<!-- Close Inventory List Table -->
            </main>
          </div>
        </div>

<!-- Bootstrap jQuery, Popper.js, JavaScript -->
     <script src="bootstrap-4.0.0-beta/assets/js/vendor/jquery-slim.min.js"></script>
    <script src="bootstrap-4.0.0-beta/assets/js/vendor/popper.min.js"></script>
    <script src="bootstrap-4.0.0-beta/assets/js/src/application.js"></script>
</body>
</html>
