<%@ Page Language="C#"  EnableEventValidation="false" AutoEventWireup="true" CodeBehind="AddItem.aspx.cs" Inherits="FoodBank.AddItem" %>


<!DOCTYPE HTML>
<html lang="en">
<head runat="server">
	<title>Add Item - NutriRate</title>
    <link rel="icon" href="img/favicon.ico">    
<!-- Required Bootstrap Metatags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Additional Metatags -->
    <meta name="description" content="Nutrirate is able to evaluate the nutritional values of foods using an algorithm that analyzes the nutrition information of each product. Providing an easy method of comparison, Nutrirate offers the ability to aid consumers in making informed and educated food purchasing and concuming decisions.">    
<!-- Link to Bootstrap CSS -->
    <link rel="stylesheet" href="bootstrap-4.0.0-beta/dist/css/bootstrap.min.css">    
    <link rel="stylesheet" href="bootstrap-4.0.0-beta/assets/css/docs.min.css">
<!-- Link to Bootstap Dashboard CSS -->
    <link href="css/dashboard.css" rel="stylesheet"> 
<!-- Link to Nutrition Label CSS -->
    <link rel="stylesheet" href="assets/css/site.css" />
    <link rel="stylesheet" href="assets/css/nds.css">
<!-- Link to Custom CSS -->
    <link href="css/stylesheet.css" rel="stylesheet" > 
<!-- Custom Fonts and Icons -->
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">
</head>

   
    
<body>
    
<!-- Top and Side Navigation -->
    <nav class="navbar navbar-expand-md navbar-dark fixed-top">
        <a class="navbar-brand" href="#"><img src="img/logo.png" alt="Nutrirate Logo" width="200" height="51"></a>
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
                    <a class="nav-link active" href="Additem.aspx">
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
              <h1>Add New Item</h1> 
            <div class="col-8">
    <!-- Purchase Source Dropdown -->
                <div class="dropdown">
                  <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" style="background-color: #cccccc;border-color: #cccccc" aria-haspopup="true" aria-expanded="false">
                    Purchase Source
                  </button>
                  <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                    <a class="dropdown-item" href="#"><label><input type="checkbox" value="">P/USDA</label></a>
                     <a class="dropdown-item" href="#"><label><input type="checkbox" value="">???</label></a>
                  </div>
                </div>
    <!--Close Product Source Dropdown -->
    <!-- Category Dropdown -->
                <div class="dropdown">
                  <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" style="background-color: #cccccc;border-color: #cccccc" aria-haspopup="true" aria-expanded="false">
                    Category
                  </button>
                  <div class="dropdown-menu" style="-moz-column-count:3;-webkit-column-count:3;-o-column-count:3;column-count:3;
                    -moz-column-gap:0px;-webkit-column-gap:0px;-o-column-gap:0px;column-gap:0px;min-width: 350px !important;" aria-labelledby="dropdownMenuButton">
                    <a class="dropdown-item" href="#"><label><input type="checkbox" value="">Baby</label></a>
                    <a class="dropdown-item" href="#"><label><input type="checkbox" value="">Beverage</label></a>
                    <a class="dropdown-item" href="#"><label><input type="checkbox" value="">Bread</label></a>
                    <a class="dropdown-item" href="#"><label><input type="checkbox" value="">Complete</label></a>
                    <a class="dropdown-item" href="#"><label><input type="checkbox" value="">Condiment</label></a>
                    <a class="dropdown-item" href="#"><label><input type="checkbox" value="">Dairy</label></a> 
                    <a class="dropdown-item" href="#"><label><input type="checkbox" value="">Dessert</label></a>
                    <a class="dropdown-item" href="#"><label><input type="checkbox" value="">Dough</label></a>
                    <a class="dropdown-item" href="#"><label><input type="checkbox" value="">Dressing</label></a>
                    <a class="dropdown-item" href="#"><label><input type="checkbox" value="">Entree</label></a>
                    <a class="dropdown-item" href="#"><label><input type="checkbox" value="">Fruits/Veg</label></a>
                    <a class="dropdown-item" href="#"><label><input type="checkbox" value="">Fruits</label></a> 
                    <a class="dropdown-item" href="#"><label><input type="checkbox" value="">Grain</label></a>
                    <a class="dropdown-item" href="#"><label><input type="checkbox" value="">Juice</label></a>
                    <a class="dropdown-item" href="#"><label><input type="checkbox" value="">Mixed/Asst</label></a>
                    <a class="dropdown-item" href="#"><label><input type="checkbox" value="">Non-Food</label></a>
                    <a class="dropdown-item" href="#"><label><input type="checkbox" value="">Non-Dairy</label></a>
                    <a class="dropdown-item" href="#"><label><input type="checkbox" value="">Nutrition</label></a> 
                    <a class="dropdown-item" href="#"><label><input type="checkbox" value="">Pasta</label></a>
                    <a class="dropdown-item" href="#"><label><input type="checkbox" value="">Pro-Meat</label></a>
                    <a class="dropdown-item" href="#"><label><input type="checkbox" value="">Pro-Non</label></a>
                    <a class="dropdown-item" href="#"><label><input type="checkbox" value="">Rice</label></a>
                    <a class="dropdown-item" href="#"><label><input type="checkbox" value="">Salvage</label></a>
                    <a class="dropdown-item" href="#"><label><input type="checkbox" value="">Snack</label></a>
                    <a class="dropdown-item" href="#"><label><input type="checkbox" value="">Soups/Meals</label></a>
                    <a class="dropdown-item" href="#"><label><input type="checkbox" value="">Vegetables</label></a>
                  </div>
                </div>
    <!-- Close Category Dropdown -->
    <!-- Filter Dropdown -->
                <div class="dropdown">
                  <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" style="background-color: #cccccc;border-color: #cccccc" aria-haspopup="true" aria-expanded="false">
                    Filters
                  </button>
                  <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                    <a class="dropdown-item" href="#"><label><input type="checkbox" value="">Organic</label></a>
                    <a class="dropdown-item" href="#"><label><input type="checkbox" value="">Vegetarian</label></a>
                    <a class="dropdown-item" href="#"><label><input type="checkbox" value="">Gluten Free</label></a>
                  </div>
                </div>
     <!-- Close Filter Dropdown -->

   <!-- Input Boxes -->
                
            <form class="addform" runat="server">
                <br>
   
                <div class="form-group">
                     
                 
    				<input type="productname" class="form-control-sm" id="exampleInputProductName" runat="server" aria-describedby="proteinHelp" placeholder="Enter Product Name"> Product Name
  				</div>
                
                 <div class="form-group">
    				<input type="calories" class="form-control-sm" id="exampleInputCalories" runat="server" aria-describedby="proteinHelp" placeholder="Enter Calories (kcal)"> Calories
  				</div>
                <div class="form-group">
    				<input type="saturated fat" class="form-control-sm" id="exampleInputSatFat" runat="server" placeholder="Enter Saturated Fat in g"> Saturated Fat 
  				</div>
                <div class="form-group">
                    <input type="trans fat" class="form-control-sm" id="exampleInputtransfat" runat="server"  placeholder="Enter trans fat in g"> Trans Fat <em>(Optional)</em>
  				</div>
                <div class="form-group">
                    <input type="cholesterol" class="form-control-sm" id="exampleInputcholesterol" runat="server" placeholder="Enter cholesterol in mg"> Cholesterol <em>(Optional)</em>
  				</div>
                <div class="form-group">
    				<input type="sodium" class="form-control-sm" id="exampleInputSodium" runat="server" placeholder="Enter Sodium in mg"> Sodium 
  				</div>
                <div class="form-group">
                    <input type="carbohydrate" class="form-control-sm" id="exampleInputcarbohydrate" runat="server" placeholder="Enter carbohydrate in g"> Total Carbohydrate <em>(Optional)</em>
  				</div>
                <div class="form-group">
    				<input type="fiber" class="form-control-sm" id="exampleInputFiber" runat ="server" placeholder="Enter Fiber in g"> Fiber
  				</div>
                <div class="form-group">
    				<input type="total sugar" class="form-control-sm" id="exampleInputSugar" runat="server" placeholder="Enter Total Sugar in g"> Total Sugar
  				</div>
  				<div class="form-group">
    				<input type="protein" class="form-control-sm" id="exampleInputProtein" runat="server" aria-describedby="proteinHelp" placeholder="Enter Protein in g"> Protein
  				</div>
  				<div class="form-group">
    				<input type="vitamin a" class="form-control-sm" id="exampleInputVitA" runat="server" placeholder="Enter Vitamin A in IU"> Vitamin A
  				</div>
  				<div class="form-group">
    				<input type="vitamin c" class="form-control-sm" id="exampleInputVitC" runat="server" placeholder="Enter Vitamin C in mg"> Vitamin C
  				</div>
  				<div class="form-group">
    				<input type="calcium" class="form-control-sm" id="exampleInputCalcium" runat="server" placeholder="Enter Calcium in mg"> Calcium
  				</div>
  				<div class="form-group">
    				<input type="iron" class="form-control-sm" id="exampleInputIron" runat="server" placeholder="Enter Iron in mg"> Iron
                </div>
                <div class="form-group">
    				<input type="potassium" class="form-control-sm" id="exampleInputPotassium" runat="server" placeholder="Enter Potassium in mg"> Potassium
                       
  				</div>
  				<div>
                   <asp:Button ID="commitFood" ForeColor="White" runat="server" class="btn add" Text="Add to Database" OnClick ="commitFood_onClick"   data-toggle="modal" data-target="#addlabel" /> 
                      <br />
  			<%--	<a href="" class="btn add" role="button" style="color: #ffffff" data-toggle="modal" data-target="#addlabel"><i class="fa fa-plus text-white" style="font-size: 18px"></i> Add</a>--%>
                
                <!-- Modal -->
                <div id="addlabel" class="modal fade" role="dialog">
                  <div class="modal-dialog">

                    <!-- Modal content-->
                    <div class="modal-content">
                      <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">PRODUCT NAME - ITEM #</h4>
                      </div>
                      <div class="modal-body">
                        <div class="grid">
            <form id='formc' name='formc' method='post' action='' target='_self'>
                <input type='hidden' id='xl_spreadsheet' name='xl_spreadsheet' value='Nutrient Density Ranking - FY16'>
                <input type='hidden' id='xl_client' name='xl_client' value='x9.2.7093.0'>
                
                <div id="tab" class='tab-content'>
                    <div id='sheet-1' style='padding: 1em 1.4em;' class='active'>
                        <div class='container-fluid  '>
                            <section class=''>
                                <div class="table-responsive">
                                    <table class="table" onkeydown='javascript:navigate(event);'>
                                        <col width='38'/>
                                        <col width='170'/>
                                        <col width='236'/>
                                        <col width='46'/>
                                        <col width='115'/>
                                        <col width='94'/>
                                        <col width='172'/>
                                        <col width='94'/>
                                        <col width='61'/>
                                        <col width='62'/>
                                        <col width='136'/>
                                        <col width='78'/>
                                        <col width='113'/>
                                        <col width='70'/>
                                        <col width='62'/>
                                        <col width='109'/>
                                        <col width='129'/>
                                        <col width='102'/>
                                        <col width='138'/>
                                        <col width='138'/>
                                            <tr class="element-item soups meals red">
                                                <td class='ee100 category'>
                                                    Juice
                                                </td>
                                                <td class='ee100 product-name '>
                                                    Mott's Natural Apple Juice Unsweetened
                                                </td>
                                                <td class='ee103 item-number '>
                                                    <input id='xlew_1_2_4' type='text' value='' class='ee102 form-control'  onchange="recalc_onclick('xlew_1_2_4')" name='xlew_1_2_4' placeholder='' tabindex='1' data-sheet='1' data-row='2' data-col='4'/>
                                                </td>
                                                <td class='ee103 purchase-source '>
                                                    <input id='XLEW_1_2_5' type='text' value='P/USDA' class='ee102 form-control'  onchange="recalc_onclick('XLEW_1_2_5')" name='XLEW_1_2_5' placeholder='' tabindex='2' data-sheet='1' data-row='2' data-col='5'/>
                                                </td>
                                                <td class='ee104 nutrient-density-score '>
                                                <input id='XLEW_1_2_9' type='text' readonly='readonly' value='0' class='ee104 nds' name='XLEW_1_2_9' tabindex='-1' />
                                                </td>
                                                <td class='ee100 nutritional-facts '>Nutritional Facts</td>
                                                <td class='ee104 calories'>
                                                    <input id='XLEW_1_2_14' type='text' value='120' class='ee106 form-control'  onchange="this.value=eedisplayFloat(eeparseFloat(this.value));recalc_onclick('XLEW_1_2_14')" name='XLEW_1_2_14' placeholder='' tabindex='3' data-sheet='1' data-row='2' data-col='14'/>
                                                </td>
                                                <td class='ee104 saturated-fat '>
                                                    <input id='XLEW_1_2_17' type='text' value='0' class='ee106 form-control'  onchange="this.value=eedisplayFloat(eeparseFloat(this.value));recalc_onclick('XLEW_1_2_17')" name='XLEW_1_2_17' placeholder='' tabindex='4' data-sheet='1' data-row='2' data-col='17'/>
                                                </td>
                                                <td class='ee104 sodium'>
                                                    <input id='XLEW_1_2_21' type='text' value='15' class='ee106 form-control'  onchange="this.value=eedisplayFloat(eeparseFloat(this.value));recalc_onclick('XLEW_1_2_21')" name='XLEW_1_2_21' placeholder='' tabindex='5' data-sheet='1' data-row='2' data-col='21'/>
                                                </td>
                                                <td class='ee104 fiber '>
                                                    <input id='XLEW_1_2_25' type='text' value='0' class='ee106 form-control'  onchange="this.value=eedisplayFloat(eeparseFloat(this.value));recalc_onclick('XLEW_1_2_25')" name='XLEW_1_2_25' placeholder='' tabindex='6' data-sheet='1' data-row='2' data-col='25'/>
                                                </td>
                                                <td class='ee104 sugars '>
                                                    <input id='XLEW_1_2_29' type='text' value='28' class='ee106 form-control'  onchange="this.value=eedisplayFloat(eeparseFloat(this.value));recalc_onclick('XLEW_1_2_29')" name='XLEW_1_2_29' placeholder='' tabindex='7' data-sheet='1' data-row='2' data-col='29'/>
                                                </td>
                                                <td class='ee104 protein '>
                                                    <input id='XLEW_1_2_34' type='text' value='0' class='ee106 form-control'  onchange="this.value=eedisplayFloat(eeparseFloat(this.value));recalc_onclick('XLEW_1_2_34')" name='XLEW_1_2_34' placeholder='' tabindex='8' data-sheet='1' data-row='2' data-col='34'/>
                                                </td>
                                                <td class='ee104 vitamin-a '>
                                                    <input id='XLEW_1_2_48' type='text' value='0' class='ee106 form-control'  onchange="this.value=eedisplayFloat(eeparseFloat(this.value));recalc_onclick('XLEW_1_2_48')" name='XLEW_1_2_48' placeholder='' tabindex='11' data-sheet='1' data-row='2' data-col='48'/>
                                                </td>
                                                <td class='ee104 vitamin-c '>
                                                    <input id='XLEW_1_2_53' type='text' value='120' class='ee106 form-control'  onchange="this.value=eedisplayFloat(eeparseFloat(this.value));recalc_onclick('XLEW_1_2_53')" name='XLEW_1_2_53' placeholder='' tabindex='12' data-sheet='1' data-row='2' data-col='53'/>
                                                </td>
                                                <td class='ee104 calcium '>
                                                    <input id='XLEW_1_2_38' type='text' value='0' class='ee106 form-control'  onchange="this.value=eedisplayFloat(eeparseFloat(this.value));recalc_onclick('XLEW_1_2_38')" name='XLEW_1_2_38' placeholder='' tabindex='9' data-sheet='1' data-row='2' data-col='38'/>
                                                </td>
                                                <td class='ee104 iron '>
                                                    <input id='XLEW_1_2_43' type='text' value='0' class='ee106 form-control'  onchange="this.value=eedisplayFloat(eeparseFloat(this.value));recalc_onclick('XLEW_1_2_43')" name='XLEW_1_2_43' placeholder='' tabindex='10' data-sheet='1' data-row='2' data-col='43'/>
                                                </td>
                                                <td class='ee104 potassium '>
                                                    <input id='XLEW_1_2_53' type='text' value='8' class='ee106 form-control'  onchange="this.value=eedisplayFloat(eeparseFloat(this.value));recalc_onclick('XLEW_1_2_53')" name='XLEW_1_2_53' placeholder='' tabindex='12' data-sheet='1' data-row='2' data-col='53'/>
                                                </td>

                                            </tr>
                                    </table>
                                </div>
                            </section>
                        </div>
                    </div>
                </div>
            </form>
        </div>
                          <p><strong>Categories:</strong> Juice</p>
                          <p><strong>Filters:</strong> Vegetarian, Gluten Free</p>
        <!-- End Modal Content -->                  
                      </div>
                      <div class="modal-footer">
                        <button type="button" class="btn btn-default modalbtn" data-dismiss="modal">Close</button>
                      </div>
                    </div>
                  </div>
                </div>
                <!-- End Modal -->
  				</div>  						
			</form>
		</div>
            </main>
          </div>
        </div>

<!-- Bootstrap jQuery, Popper.js, JavaScript -->
    <script src="bootstrap-4.0.0-beta/assets/js/vendor/jquery-slim.min.js"></script>
    <script src="bootstrap-4.0.0-beta/assets/js/vendor/popper.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
    <script src="bootstrap-4.0.0-beta/assets/js/src/application.js"></script>
</body>
</html>