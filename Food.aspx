<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="Food.aspx.cs" Inherits="FoodBank.Food" EnableEventValidation="false"%>




<!DOCTYPE HTML>
<html lang="en">
<head runat="server">
<title>Find Foods - NutriRate</title>
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
    <link href="css/stylesheet.css" rel="stylesheet">    
<!-- Link to Nutrition Label CSS -->
    <link rel="stylesheet" href="assets/css/site.css">
    <link rel="stylesheet" href="assets/css/nds.css">
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
                    <a class="nav-link" href="Dashboard.aspx">
                    <i class="fa fa-pie-chart text-white" style="font-size: 60px"></i>
                    <div class="nav-term">Dashboard</div></a>
                </li>
                <li class="nav-item text-center sidenav">
                    <a class="nav-link active" href="Food.aspx">
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
              <h1>Find Foods</h1>
                <form id="form1" runat="server">
                
 <!-- Search and Sort -->
                <!-- Category Dropdown -->
                <div class="dropdown">
   
                <asp:DropDownList cssclass="" ID="categories" runat="server"></asp:DropDownList>  
              
                
                </div>
                       
                <!-- Search field and barcode button -->

            <input runat="server" type="text"  class="form-control-sm" id="findfoodssearch" placeholder="Search"> 

            <asp:DropDownList ID="searchOptions" runat="server"   ></asp:DropDownList>
            <asp:Button ID="searchNDBNO" runat="server" Text="Search"  OnClick="SearchNDBNO_Click" class="btn dropdown-toggle categorybtn" type="button"   aria-haspopup="true" aria-expanded="false" />

      
            
   
     <br><br>

                <!-- Sort dropdown and filters -->
                <div class="dropdown">
                  <button class="btn dropdown-toggle sortbybtn" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Sort By</button>
                  <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                    <a class="dropdown-item" href="#">Item Number</a>
                      <a class="dropdown-item" href="#">Nutrition Score  <span style="font-weight: 200;font-size: 13px">High - Low</span></a>
                      <a class="dropdown-item" href="#">Nutrition Score  <span style="font-weight: 200;font-size: 13px">Low- High</span></a> 
                  </div>
                </div>
                <div class="filter">
                    Filter by:
                    <label><input type="checkbox" value="">High Nutirtion Score</label>
                    <label><input type="checkbox" value="">Low Sodium</label>
                    <label><input type="checkbox" value="">Low Sugar</label>
                    <label><input type="checkbox" value="">Organic</label>
                    <label><input type="checkbox" value="">Vegetarian</label>
                    <label><input type="checkbox" value="">Gluten Free</label>
                </div>
                <br>

                 
                <asp:ListBox ID="ListBox1" AutoPostBack="True"   runat="server" Height="300px" Width="1000px" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged" ></asp:ListBox>
 

<%--<!-- Open Inventory List Table -->
              <h2>Inventory List</h2>
              <div class="table-responsive">
                <table id="some_id" class="table table-striped">
                  <thead>
                    <tr class="inventoryheadings">
                      <th>UPC</th>
                      <th>Item Name</th>
                      <th>Nutrient Score</th>
                    </tr>
                  </thead>
                  <tbody>
            <!-- Item One -->  
                    <tr>
                      
                    </tr>
      

                  </tbody>
                </table>
              </div>
<!-- Close Inventory List Table -->
    

              --%>



<!-- Mini Nutritional Labels / Search Results -->
            <!-- New Label -->
            <div class="grid" data-toggle="modal" data-target="#nlabel">
                <!-- Modal -->
                <div id="nlabel" class="modal fade" role="dialog">
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
                                            <tr runat="server" id="changecolor" class="element-item soups meals green">
                                                <td class='ee100 category'>
                                                    Soup/Meals
                                                </td>
                                                <td class='ee100 product-name '>
                                                 <input runat="server" id='Text1' type='text' value='' class='ee102 form-control'  onchange="recalc_onclick('xlew_1_2_4')" name='xlew_1_2_4' placeholder='' tabindex='1' data-sheet='1' data-row='2' data-col='4' readonly/>
                                                </td>
                                                <td   class='ee103 item-number '>
                                                    <input runat="server" id='item_no' type='text' value='' class='ee102 form-control'  onchange="recalc_onclick('xlew_1_2_4')" name='xlew_1_2_4' placeholder='' tabindex='1' data-sheet='1' data-row='2' data-col='4' readonly/>
                                                </td>
                                                <td class='ee103 purchase-source '>
                                                    <input  runat="server" id='XLEW_1_2_5' type='text' value='P/USDA' class='ee102 form-control'  onchange="recalc_onclick('XLEW_1_2_5')" name='XLEW_1_2_5' placeholder='' tabindex='2' data-sheet='1' data-row='2' data-col='5' readonly/>
                                                </td>
                                                <td class='ee104 nutrient-density-score '>
                                                <input runat="server" id='txtNRF' type='text'  value='0' class='ee104 nds' name='XLEW_1_2_9' tabindex='-1' readonly/>
                                                </td>
                                                <td class='ee100 nutritional-facts '>Nutritional Facts</td>
                                                <td class='ee104 calories'>
                                                    <input runat="server" id='txtcalories' type='text' value='80' class='ee106 form-control'  onchange="this.value=eedisplayFloat(eeparseFloat(this.value));recalc_onclick('XLEW_1_2_14')" name='XLEW_1_2_14' placeholder='' tabindex='3' data-sheet='1' data-row='2' data-col='14' readonly/>
                                                </td>
                                                <td class='ee104 saturated-fat '>
                                                    <input runat="server" id='txtsaturated_fat' type='text' value='0' class='ee106 form-control'  onchange="this.value=eedisplayFloat(eeparseFloat(this.value));recalc_onclick('XLEW_1_2_17')" name='XLEW_1_2_17' placeholder='' tabindex='4' data-sheet='1' data-row='2' data-col='17' readonly/>
                                                </td>
                                                <td class='ee104 sodium'>
                                                    <input runat="server" id='txtsodium' type='text' value='690' class='ee106 form-control'  onchange="this.value=eedisplayFloat(eeparseFloat(this.value));recalc_onclick('XLEW_1_2_21')" name='XLEW_1_2_21' placeholder='' tabindex='5' data-sheet='1' data-row='2' data-col='21' readonly/>
                                                </td>
                                                <td class='ee104 fiber '>
                                                    <input  runat="server" id='txtfiber' type='text' value='1' class='ee106 form-control'  onchange="this.value=eedisplayFloat(eeparseFloat(this.value));recalc_onclick('XLEW_1_2_25')" name='XLEW_1_2_25' placeholder='' tabindex='6' data-sheet='1' data-row='2' data-col='25' readonly/>
                                                </td>
                                                <td class='ee104 sugars '>
                                                    <input runat="server" id='txtsugars' type='text' value='7' class='ee106 form-control'  onchange="this.value=eedisplayFloat(eeparseFloat(this.value));recalc_onclick('XLEW_1_2_29')" name='XLEW_1_2_29' placeholder='' tabindex='7' data-sheet='1' data-row='2' data-col='29' readonly/>
                                                </td>
                                                <td class='ee104 protein '>
                                                    <input runat="server" id='txtprotein' type='text' value='1' class='ee106 form-control'  onchange="this.value=eedisplayFloat(eeparseFloat(this.value));recalc_onclick('XLEW_1_2_34')" name='XLEW_1_2_34' placeholder='' tabindex='8' data-sheet='1' data-row='2' data-col='34' readonly/>
                                                </td>
                                                <td class='ee104 calcium '>
                                                    <input runat="server" id='txtcalcium' type='text' value='0' class='ee106 form-control'  onchange="this.value=eedisplayFloat(eeparseFloat(this.value));recalc_onclick('XLEW_1_2_38')" name='XLEW_1_2_38' placeholder='' tabindex='9' data-sheet='1' data-row='2' data-col='38' readonly/>
                                                </td>
                                                <td class='ee104 iron '>
                                                    <input runat="server" id='txtiron' type='text' value='2' class='ee106 form-control'  onchange="this.value=eedisplayFloat(eeparseFloat(this.value));recalc_onclick('XLEW_1_2_43')" name='XLEW_1_2_43' placeholder='' tabindex='10' data-sheet='1' data-row='2' data-col='43' readonly/>
                                                </td>
                                                <td class='ee104 vitamin-a '>
                                                    <input runat="server" id='txtVitA' type='text' value='10' class='ee106 form-control'  onchange="this.value=eedisplayFloat(eeparseFloat(this.value));recalc_onclick('XLEW_1_2_48')" name='XLEW_1_2_48' placeholder='' tabindex='11' data-sheet='1' data-row='2' data-col='48' readonly/>
                                                </td>
                                                <td class='ee104 vitamin-c '>
                                                    <input  runat="server" id='txtVitC' type='text' value='40' class='ee106 form-control'  onchange="this.value=eedisplayFloat(eeparseFloat(this.value));recalc_onclick('XLEW_1_2_53')" name='XLEW_1_2_53' placeholder='' tabindex='12' data-sheet='1' data-row='2' data-col='53' readonly/>
                                                </td>
                                                 <td class='ee104 potassium'>
                                                    <input runat="server" id='txtpotassium' type='text' value='690' class='ee106 form-control'  onchange="this.value=eedisplayFloat(eeparseFloat(this.value));recalc_onclick('XLEW_1_2_21')" name='XLEW_1_2_21' placeholder='' tabindex='5' data-sheet='1' data-row='2' data-col='21' readonly/>
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
                  
        <!-- End Modal Content -->                  
                      </div>
                      <div class="modal-footer">
                        <button type="button" class="btn btn-default modalbtn" data-dismiss="modal">Close</button>
                        <asp:Button ID="commitFoodItem" runat="server" OnClick="commitFoodItem_Click" Text="Commit Food Item"  class="btn dropdown-toggle categorybtn" type="button"   aria-haspopup="true" aria-expanded="false" />

                      </div>
                    </div>
                  </div>
                </div>
                <!-- End Modal -->
            <form id='formc' name='formc' method='post' action='' target='_self'>
                <input type='hidden' id='xl_spreadsheet' name='xl_spreadsheet' value='Nutrient Density Ranking - FY16'>
                <input type='hidden' id='xl_client' name='xl_client' value='x9.2.7093.0'>
                
                <div id="tab" class='tab-content'>
                    <div id='sheet-1' style='padding-top: 5px;' class='active'>
                        <div class='container-fluid label'>
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
                                            <tr class="element-item soups meals green">
                                                <td class='ee100 category'>
                                                    Soup/Meals
                                                </td>
                                                <td class='ee100 product-name '>
                                                <input runat="server" id='product_name' type='text' value='' class='ee102 form-control'  onchange="recalc_onclick('xlew_1_2_4')" name='xlew_1_2_4' placeholder='' tabindex='1' data-sheet='1' data-row='2' data-col='4' readonly/>
                                                </td>
                                                <td class='ee103 item-number '>
                                                    <input  runat="server" id='txtitem_num' type='text' value='' class='ee102 form-control'  onchange="recalc_onclick('xlew_1_2_4')" name='xlew_1_2_4' placeholder='' tabindex='1' data-sheet='1' data-row='2' data-col='4' readonly/>
                                                </td>
                                                <td class='ee103 purchase-source '>
                                                    <input id='XLEW_1_2_5' type='text' value='P/USDA' class='ee102 form-control'  onchange="recalc_onclick('XLEW_1_2_5')" name='XLEW_1_2_5' placeholder='' tabindex='2' data-sheet='1' data-row='2' data-col='5' readonly/>
                                                </td>
                                                <td class='ee104 nutrient-density-score '>
                                                <input runat="server"  id='txtNRF1' type='text'  value='0' class='ee104 nds' name='XLEW_1_2_9' tabindex='-1' readonly/>
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

               
                <!-- End Modal -->
      

<!-- Close Body Div Tags -->
                   </form>
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



    
     