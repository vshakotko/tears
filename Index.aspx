<%@ Page Language="C#"  EnableEventValidation="false" AutoEventWireup="True" CodeBehind="Index.aspx.cs" Inherits="FoodBank.Index" %>

<!DOCTYPE html>


<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Nutrirate is able to evaluate the nutritional values of foods using an algorithm that analyzes the nutrition information of each product. Providing an easy method of comparison, Nutrirate offers the ability to aid consumers in making informed and educated food purchasing and concuming decisions.">

      <title>NutriRate</title>
      <link rel="icon" href="img/favicon.ico"> 
<!-- Bootstrap Core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<!-- Custom Fonts -->
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">
<!-- Custom CSS -->
    <link href="css/stylesheet.css">  
    <link href="css/stylish-portfolio.css" rel="stylesheet">
  </head>

  <body>

      <form id="form1" runat="server">

<!-- Navigation -->
    <a id="menu-toggle" href="#" class="btn btn-dark btn-lg toggle">
     Login
    </a>
    <nav id="sidebar-wrapper">
		<div class="container">
			<br>
        	<h2 class="form-signin-heading" style="color:white;">Please Log In</h2>
        	&nbsp;<input runat="server" type="email" id="inputEmail" class="form-control" placeholder="Email address" required autofocus>&nbsp;
        	<input runat="server" type="password" id="inputPassword" class="form-control" placeholder="Password" required>
        <div class="checkbox">
          <label class="remember">
            <input type="checkbox" value="remember-me"> Remember me
          </label>
        </div>
 
        </div>
        <br />
        <asp:Button ID="sendAccount" OnClick="sendAccountBtn_Click" runat="server" Text="Log In"  class="btn btn-lg btn-block login" />
        <button class="btn btn-sm btn-block login" style="background-color: #ffffff"><a href="index.html">Exit</a></button>
        <br />
        <br />
        <br />

      </nav>
        
<!-- Header -->
    <header class="header" id="top">
      <div class="text-vertical-center">
    	<br>
    	<br>
    	<br>
    	<br>
    	<br>
    	<br>
        <br>
        <a href="PublicFood.aspx" class="btn btn-dark btn-lg js-scroll-trigger">Search</a>
      </div>
    </header>

<!-- About -->
    <section id="about" class="about">
      <div class="container text-center">
        <h2 style="color:#57b947;">Your body deserves the best.</h2>
        <p class="lead">Finally, a mathematical way to assure your 
		understanding of the foods you are consuming. 
		Using an algorithm, NutriRate is able to evaluate the nutritional value of your foods and provide you with an easy method of comparison to other food products.
      	<img src="img/greenbeans.jpg" alt="green beans" class="img-fluid">
      </div>
<!-- /.container -->
    </section>
    
    
<!-- About this Service -->
    <section id="services" class="services text-white">
      	<div class="container">
        	<div class="row text-center">
          		<div class="col-sm-12 mx-auto">
            		<h2>About this Service</h2>
            		<hr class="small">
            <div class="row">
              	<div class="col-sm-8"> 
              		<span class="fa-stack fa-4x">
                    	<i class="fa fa-circle fa-stack-2x"></i>
                    	<i class="fa fa-heart fa-stack-1x text-success"></i>
                	</span>  
              		<p>This tool was designed to help consumers make informed purchasing decisions when it comes to the nutritional value of their foods. By entering nine pieces of key data (6 nutrients to enjoy and 3 to limit), our tool uses an algorithm to generate a score for each food item. Scores are categorized into three groups. A red score ranges from 0 to 4.66 and indicates a low nutritional value. A yellow score is anything that falls between 4.66 and 28. A green score is any number over 28 and indicates high nutritional value.
					</p>
            </div>
              <div class="col-sm-4">
                <div class="service-item">
                  <span class="fa-stack fa-4x">
                    <i class="fa fa-circle fa-stack-2x"></i>
                    <i class="fa fa-cutlery fa-stack-1x text-success"></i>
                  </span>
                  <h4>
                    <strong>Find Foods</strong>
                  </h4>
                  <p>Search our database to learn the nutritional value of your food choices.</p>
                  <a href="PublicFood.aspx" class="btn btn-light">Search</a>
                </div>
              </div>
            </div>
            <!-- /.row (nested) -->
          </div>
          <!-- /.col-lg-10 -->
        </div>
        <!-- /.row -->
      </div>
      <!-- /.container -->
    </section>


<!-- Footer -->
    <footer>
      <div class="container">
        <div class="row">
          <div class="col-lg-10 mx-auto text-center">
            <p> Developed in partnership with the </p>
            <h4>
              <strong>Blue Ridge Area Food Bank</strong>
            </h4>
            <p>96 Laurel Hill Rd
              <br>Verona, VA 24482</p>
            <ul class="list-unstyled">
              <li>
                <i class="fa fa-phone text-success fa-fw"></i>
                (540) 248-3663</li>
              <li>
                <i class="fa fa-envelope-o text-success fa-fw"></i>
                <a href="mailto:dshifflett@brafb.org" style="color:#57b947">dshifflett@brafb.org </a>
              </li>
            </ul>
            <br>
            <ul class="list-inline">
              <li class="list-inline-item">
                <a href="https://www.brafb.org/" target="_blank">
                  <i class="fa fa-home text-success fa-fw fa-3x"></i>
                </a>
              </li>
              <li class="list-inline-item">
                <a href="https://www.facebook.com/BlueRidgeAreaFoodBank/" target="_blank">
                  <i class="fa fa-facebook text-success fa-fw fa-3x"></i>
                </a>
              </li>
              <li class="list-inline-item">
                <a href="https://twitter.com/BRAFB?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor" target="_blank">
                  <i class="fa fa-twitter text-success fa-fw fa-3x"></i>
                </a>
              </li>
            </ul>
          </div>
        </div>
      </div>
      <a id="to-top" href="#top" class="btn btn-dark btn-lg js-scroll-trigger">
        <i class="fa fa-chevron-up fa-fw fa-1x"></i>
      </a>
      
      
    </footer>

<!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/popper/popper.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!-- Plugin JavaScript -->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
<!-- Custom scripts for this template -->
    <script src="js/stylish-portfolio.js"></script>    
      </form>
      </form>
  </body>

</html>
