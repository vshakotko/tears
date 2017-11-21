using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Web.UI.HtmlControls;
using System.Text;
using System.Windows;
using System.Windows.Forms;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;
using System.Web.Configuration;

namespace FoodBank
{
    public partial class Food : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                searchOptions.Items.Add("by Name");
                searchOptions.Items.Add("by ndbno");
                searchOptions.Items.Add("by UPC");


                // Populate the CheckBoxList control.
                categories.Items.Add("Categories");
                categories.Items.Add("American Indian/Alaska Native Foods");
                categories.Items.Add("Baby Foods");
                categories.Items.Add("Baked Products");
                categories.Items.Add("Beef Products");
                categories.Items.Add("Beverages");
                categories.Items.Add("Breakfast Cereals");
                categories.Items.Add("Cereal Grains and Pasta");
                categories.Items.Add("Dairy and Egg Products");
                categories.Items.Add("Fast Foods");
                categories.Items.Add("Fats and Oils");
                categories.Items.Add("Finfish and Shellfish Products");
                categories.Items.Add("Fruits and Fruit Juices");
                categories.Items.Add("Lamb, Veal, and Game Products");
                categories.Items.Add("Legumes and Legume Products");
                categories.Items.Add("Meals, Entrees, and Side Dishes");
                categories.Items.Add("Nut and Seed Products");
                categories.Items.Add("Pork Products");
                categories.Items.Add("Poultry Products");
                categories.Items.Add("Restaurant Foods");
                categories.Items.Add("Sausages and Luncheon Meats");
                categories.Items.Add("Snacks");
                categories.Items.Add("Soups, Sauces, and Gravies");
                categories.Items.Add("Spices and Herbs");
                categories.Items.Add("Sweets");
                categories.Items.Add("Vegetables and Vegetable Products");

            }
        }

        String ItemName = "";
        String ItemNo;

        double dblCalcium;
        double dblProtein;
        double dblVitaminC;
        double dblSugar;
        double dblIron;
        double dblFiber;
        double dblVitaminA;
        double dblSodium;
        double dblSatFat;
        double dblPotassium;
        double dblCalories;
        double dblNRF_score;
        String scoreColor;

        double dblCalciumPerc;
        double dblIronPerc;
        double dblVitAPerc;
        double dblVitCPerc;
        double dblPotassiumPerc;


        protected void SearchNDBNO_Click(object sender, EventArgs e)
        {
            if (categories.SelectedIndex == 0 || categories.SelectedIndex == -1)
            {
                if (searchOptions.SelectedItem.Value == "by ndbno")
                {
                    String input = findfoodssearch.Value;
                    //call search method
                    findItemndbno(input);

                    dblNRF_score = CalcNRF(dblProtein, dblFiber, dblVitaminA, dblVitaminC, dblCalcium, dblIron, dblCalories, dblSatFat, dblSugar, dblSodium);

                    txtitem_num.Value = ItemNo.ToString();
                    product_name.Value = ItemName;
                    item_no.Value = ItemNo.ToString();
                    Text1.Value = ItemName;

                    txtcalcium.Value = dblCalciumPerc.ToString();
                    txtprotein.Value = dblProtein.ToString();
                    txtVitC.Value = dblVitaminC.ToString();
                    txtsugars.Value = dblSugar.ToString();
                    txtiron.Value = dblIronPerc.ToString();
                    txtfiber.Value = dblFiber.ToString();
                    txtVitA.Value = dblVitAPerc.ToString();
                    txtsodium.Value = dblSodium.ToString();
                    txtsaturated_fat.Value = dblSatFat.ToString();
                    txtpotassium.Value = dblPotassiumPerc.ToString();
                    txtcalories.Value = dblCalories.ToString();
                    txtNRF.Value = dblNRF_score.ToString();
                    txtNRF1.Value = txtNRF.Value;

                    if (dblNRF_score > 28)
                    {
                        scoreColor = "Green";
                    }
                    if (dblNRF_score > 4.66 && dblNRF_score <= 28)
                    {
                        scoreColor = "Yellow";
                    }
                    if (dblNRF_score <= 4.66)
                    {
                        scoreColor = "Red";
                    }

                }

                if (searchOptions.SelectedItem.Value == "by UPC")
                {
                    String upcInput = findfoodssearch.Value;

                    //call search method
                    finItemUPC(upcInput);

                    dblNRF_score = CalcNRF(dblProtein, dblFiber, dblVitaminA, dblVitaminC, dblCalcium, dblIron, dblCalories, dblSatFat, dblSugar, dblSodium);

                    txtitem_num.Value = ItemNo.ToString();
                    product_name.Value = ItemName;
                    item_no.Value = ItemNo.ToString();
                    Text1.Value = ItemName;

                    txtcalcium.Value = dblCalciumPerc.ToString();
                    txtprotein.Value = dblProtein.ToString();
                    txtVitC.Value = dblVitaminC.ToString();
                    txtsugars.Value = dblSugar.ToString();
                    txtiron.Value = dblIronPerc.ToString();
                    txtfiber.Value = dblFiber.ToString();
                    txtVitA.Value = dblVitAPerc.ToString();
                    txtsodium.Value = dblSodium.ToString();
                    txtsaturated_fat.Value = dblSatFat.ToString();
                    txtpotassium.Value = dblPotassiumPerc.ToString();
                    txtcalories.Value = dblCalories.ToString();
                    txtNRF.Value = dblNRF_score.ToString();
                    txtNRF1.Value = txtNRF.Value;

                    //if (Convert.ToDouble(txtNRF.Value) < 0)
                    //{
                    //    System.Web.UI.HtmlControls.HtmlGenericControl dynDiv =
                    //                      new System.Web.UI.HtmlControls.HtmlGenericControl("changecolor");
                    //    dynDiv.Attributes["class"] = "element - item soups meals red";

                    //}
                    //if (Convert.ToDouble(txtNRF.Value) >1000)
                    //{
                    //    System.Web.UI.HtmlControls.HtmlGenericControl dynDiv =
                    //                      new System.Web.UI.HtmlControls.HtmlGenericControl("changecolor");
                    //    dynDiv.Attributes["class"] = "element - item soups meals yellow";

                    //}

                    //if (Convert.ToDouble(txtNRF.Value) > 2000)
                    //{
                    //    System.Web.UI.HtmlControls.HtmlGenericControl dynDiv =
                    //                      new System.Web.UI.HtmlControls.HtmlGenericControl("changecolor");
                    //    dynDiv.Attributes["class"] = "element - item soups meals green";

                    //}
                }
                if (searchOptions.SelectedItem.Value == "by Name")
                {
                    String nameInput = findfoodssearch.Value.ToString();

                    searchByName(nameInput);
                }
            }
            else
            {
                String nameInput = findfoodssearch.Value;
                String category = categories.SelectedValue;
                searchByCategory(nameInput, category);
            }
        }

        protected void commitFoodItem_Click(object sender, EventArgs e)
        {
            String num = item_no.Value;
            string URL2 = "http://api.nal.usda.gov/ndb/nutrients/?ndbno=" +
             num
              + "&?format=json&api_key=aCeP7YpyyFicL1ADkMkc2BwkHoLCgPkLsNZ0jseL&nutrients=203&nutrients=291&nutrients=318&nutrients=401&nutrients=301&nutrients=303&nutrients=606&nutrients=269&nutrients=269&nutrients=307&nutrients=306&nutrients=208";
            var json2 = new WebClient().DownloadString(URL2);
            Example newSearch = new Example();
            JsonConvert.PopulateObject(json2, newSearch);

            findItemndbno(num);
            // Link application to database, open SQL connection and establish insert string
            SqlConnection sc = new SqlConnection(WebConfigurationManager.ConnectionStrings["sc"].ConnectionString);
            sc.Open();
            System.Data.SqlClient.SqlCommand insert = new System.Data.SqlClient.SqlCommand();
            insert.Connection = sc;
            insert.CommandText = "";

            try
            {
                // Parameterized query for committing fooditem object data to DB
                insert.CommandText += "INSERT INTO [dbo].[FOODITEM] ([FOODID],[NAME],[WEIGHT],[MEASURE], [NUTRITION_SCORE])";
                insert.CommandText += " VALUES (@FOODID, @NAME, @WEIGHT, @MEASURE, @NUTRITION_SCORE)";
                insert.Parameters.AddWithValue("@FOODID", newSearch.report.foods[0].ndbno);
                insert.Parameters.AddWithValue("@NAME", newSearch.report.foods[0].name);
                insert.Parameters.AddWithValue("@WEIGHT", newSearch.report.foods[0].weight);
                insert.Parameters.AddWithValue("@MEASURE", newSearch.report.foods[0].measure);
                insert.Parameters.AddWithValue("@NUTRITION_SCORE", dblNRF_score);

                System.Diagnostics.Debug.WriteLine(insert.CommandText);
                insert.ExecuteNonQuery();
                insert.CommandText = "";

                System.Data.SqlClient.SqlCommand insert1 = new System.Data.SqlClient.SqlCommand();
                insert1.Connection = sc;

                // Parameterized query for committing nutritions object data to DB
                insert1.CommandText += "INSERT INTO [dbo].[Nutrition] ([FOODID],[calcium], [protein], [vitaminC], [sugar], [iron], [potassium], [fiber], [vitaminA], [sodium], [calories], [satFat])";
                insert1.CommandText += " VALUES (@FOODID, @calcium, @protein, @vitaminC, @sugar, @iron, @potassium, @fiber, @vitaminA, @sodium, @calories, @satFat)";
                insert1.Parameters.AddWithValue("@FOODID", newSearch.report.foods[0].ndbno);

                for (int i = 0; i < 11; i++)
                {
                    switch (i)
                    {
                        case 0:
                            insert1.Parameters.AddWithValue("@calcium", dblCalcium);
break;

                        case 1:
                            insert1.Parameters.AddWithValue("@protein", dblProtein);break;

                        case 2:
                            insert1.Parameters.AddWithValue("@vitaminC", dblVitaminC);break;

                        case 3:
                            insert1.Parameters.AddWithValue("@sugar", dblSugar);break;

                        case 4:
                            insert1.Parameters.AddWithValue("@iron", dblIron);break;

                        case 5:
                            insert1.Parameters.AddWithValue("@potassium", dblPotassium);break;

                        case 6:
                            insert1.Parameters.AddWithValue("@fiber", dblFiber);break;

                        case 7:
                            insert1.Parameters.AddWithValue("@vitaminA", dblVitaminA);break;

                        case 8:
                            insert1.Parameters.AddWithValue("@sodium", dblSodium);break;

                        case 9:
                            insert1.Parameters.AddWithValue("@calories", dblCalories);break;

                        case 10:
                            insert1.Parameters.AddWithValue("@satFat", dblSatFat);break;
                    }
                }
                System.Diagnostics.Debug.WriteLine(insert1.CommandText);
                insert1.ExecuteNonQuery();
            }
            catch (System.Data.SqlClient.SqlException sqlException)
            {

                System.Windows.Forms.MessageBox.Show(sqlException.Message);
            }


        }


        public double CalcNRF(double protein, double fiber, double VitA, double VitC,
            double calcium, double iron, double kcal, double saturatedFat, double sugar, double sodium)
        {
            double NRF = 0;
            double NR6_100_kcal = (((protein / 50 + fiber / 25 + VitA / 5000 + VitC / 60 + calcium / 1000 + iron / 18) * 100) / (kcal / 100)) * 100;
            double LIMt_100 = (((saturatedFat / 20 + sugar / 125 + sodium / 2400) * 100) / (kcal / 100)) * 100;
            NRF = NR6_100_kcal - LIMt_100;
            return NRF;
        }



        //Find Item by USDA ID
        public void findItemndbno(String ndbno)
        {
            string URL = "http://api.nal.usda.gov/ndb/nutrients/?ndbno=" +
             ndbno
              + "&?format=json&api_key=aCeP7YpyyFicL1ADkMkc2BwkHoLCgPkLsNZ0jseL&nutrients=203&nutrients=291&nutrients=318&nutrients=401&nutrients=301&nutrients=303&nutrients=606&nutrients=269&nutrients=269&nutrients=307&nutrients=306&nutrients=208";

            var json = new WebClient().DownloadString(URL);

            Example newSearch = new Example();

            JsonConvert.PopulateObject(json, newSearch);
          
            
                ItemName = newSearch.report.foods[0].name;
                ItemNo = newSearch.report.foods[0].ndbno;

                for (int i = 0; i < 11; i++)
                {
                    if (newSearch.report.foods[0].nutrients[i].value.ToString() != "--")
                    {
                        switch (i)
                        {
                            case 0:
                                dblCalcium = Convert.ToDouble(newSearch.report.foods[0].nutrients[i].value);
                                dblCalciumPerc = dblCalcium / 1000 * 100;

                                break;

                            case 1:
                                dblProtein = Convert.ToDouble(newSearch.report.foods[0].nutrients[i].value);
                                break;

                            case 2:
                                dblVitaminC = Convert.ToDouble(newSearch.report.foods[0].nutrients[i].value);
                                dblVitCPerc = dblVitaminC / 60 * 100;
                                break;

                            case 3:
                                dblSugar = Convert.ToDouble(newSearch.report.foods[0].nutrients[i].value);
                                break;

                            case 4:
                                dblIron = Convert.ToDouble(newSearch.report.foods[0].nutrients[i].value);
                                dblIronPerc = dblIron / 18 * 100;
                                break;

                            case 5:
                                dblPotassium = Convert.ToDouble(newSearch.report.foods[0].nutrients[i].value);
                                dblPotassiumPerc = dblPotassium / 3500 * 100;
                                break;

                            case 6:
                                dblFiber = Convert.ToDouble(newSearch.report.foods[0].nutrients[i].value);
                                break;

                            case 7:
                                dblVitaminA = Convert.ToDouble(newSearch.report.foods[0].nutrients[i].value);
                                dblVitAPerc = dblVitaminA / 5000 * 100;
                                break;

                            case 8:
                                dblSodium = Convert.ToDouble(newSearch.report.foods[0].nutrients[i].value);
                                break;

                            case 9:
                                dblCalories = Convert.ToDouble(newSearch.report.foods[0].nutrients[i].value);
                                break;

                            case 10:
                                dblSatFat = Convert.ToDouble(newSearch.report.foods[0].nutrients[i].value);
                                break;

                        }
                    }


                }
            
            
        }



        // Find Item By UPC
        public void finItemUPC(String UPC)
        {
            string URL = "https://api.nal.usda.gov/ndb/search/?format=json&q=" +
                UPC
                + "&sort=r&offset=0&api_key=aCeP7YpyyFicL1ADkMkc2BwkHoLCgPkLsNZ0jseL";

            var json = new WebClient().DownloadString(URL);

            UPC newUPCSearch = new UPC();

            JsonConvert.PopulateObject(json, newUPCSearch);

            String num = newUPCSearch.list.item[0].ndbno;

            findItemndbno(num);
        }


        public void searchByName(String name)
        {
            ListBox1.Items.Clear();

            string URL = "https://api.nal.usda.gov/ndb/search/?format=json&q=" +
               name
                + "&sort=r&offset=0&api_key=aCeP7YpyyFicL1ADkMkc2BwkHoLCgPkLsNZ0jseL";

            var json = new WebClient().DownloadString(URL);

            UPC newFoodSearch = new UPC();

            JsonConvert.PopulateObject(json, newFoodSearch);

            for (int i = 0; i < newFoodSearch.list.end; i++)
            {
                ListBox1.Items.Add(newFoodSearch.list.item[i].name /*+ [method] create a method that will return what ever we need???*/);
            }
        }

        public void searchByCategory(String Name, String Categoty)
        {
            ListBox1.Items.Clear();

            string URL = "https://api.nal.usda.gov/ndb/search/?format=json&q=" + Name

                + "&sort=r&fg=" + Categoty +
                "&ds=Standard+Reference&api_key=aCeP7YpyyFicL1ADkMkc2BwkHoLCgPkLsNZ0jseL";

            var json = new WebClient().DownloadString(URL);

            UPC newFoodSearch = new UPC();

            JsonConvert.PopulateObject(json, newFoodSearch);

            for (int i = 0; i < newFoodSearch.list.end; i++)
            {
                ListBox1.Items.Add(newFoodSearch.list.item[i].name);
            }
        }



        // Populate Fancy box depending on the selected Index
        protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            String name = ListBox1.SelectedValue.ToString();

            string URL = "https://api.nal.usda.gov/ndb/search/?format=json&q=" +
               name
               + "&sort=r&offset=0&api_key=aCeP7YpyyFicL1ADkMkc2BwkHoLCgPkLsNZ0jseL";

            var json = new WebClient().DownloadString(URL);

            UPC newUPCSearch = new UPC();

            JsonConvert.PopulateObject(json, newUPCSearch);

            if (newUPCSearch.list.item != null)
            {

                String num = newUPCSearch.list.item[0].ndbno;

                findItemndbno(num);

                dblNRF_score = CalcNRF(dblProtein, dblFiber, dblVitaminA, dblVitaminC, dblCalcium, dblIron, dblCalories, dblSatFat, dblSugar, dblSodium);

                txtitem_num.Value = ItemNo.ToString();
                product_name.Value = ItemName;
                item_no.Value = ItemNo.ToString();
                Text1.Value = ItemName;

                txtcalcium.Value = dblCalciumPerc.ToString();
                txtprotein.Value = dblProtein.ToString();
                txtVitC.Value = dblVitaminC.ToString();
                txtsugars.Value = dblSugar.ToString();
                txtiron.Value = dblIronPerc.ToString();
                txtfiber.Value = dblFiber.ToString();
                txtVitA.Value = dblVitAPerc.ToString();
                txtsodium.Value = dblSodium.ToString();
                txtsaturated_fat.Value = dblSatFat.ToString();
                txtpotassium.Value = dblPotassiumPerc.ToString();
                txtcalories.Value = dblCalories.ToString();
                txtNRF.Value = dblNRF_score.ToString();
                txtNRF1.Value = txtNRF.Value;
            }

            else
                {
                ListBox1.Items.Clear();
                ListBox1.Items.Add("Error meesage");
                 }
        }


        //public static string ConvertDataTableToHTML(DataTable dt)
        //{
        //    string html = "<table>";
        //    ////add header row
        //    //html += "<tr>";
        //    //for (int i = 0; i < dt.Columns.Count; i++)
        //    //    html += "<td>" + dt.Columns[i].ColumnName + "</td>";
        //    //html += "</tr>";
        //    //add rows
        //    for (int i = 0; i < dt.Rows.Count; i++)
        //    {
        //        html += "<tr>";
        //        for (int j = 0; j < dt.Columns.Count; j++)
        //            html += "<td>" + dt.Rows[i][j].ToString() + "</td>";
        //        html += "</tr>";
        //    }
        //    html += "</table>";
        //    return html;


        //}

        //static DataTable GetTable(String UPC, String Name, double Score)
        //{
        //    // Here we create a DataTable with 3 columns.
        //    DataTable table = new DataTable();



        //    // Here we add 1 DataRows.
        //    table.Rows.Add(UPC, Name, Score);
        //    return table;
        //}
    }
}

