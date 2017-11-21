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

namespace FoodBank
{
    public partial class PublicFood : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
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

        double dblCalciumPerc;
        double dblIronPerc;
        double dblVitAPerc;
        double dblVitCPerc;
        double dblPotassiumPerc;


        protected void SearchNDBNO_Click(object sender, EventArgs e)
        {
            


                ListBox1.Items.Clear();

                String foodInput = findfoodssearch.Value;

                string URL = "https://api.nal.usda.gov/ndb/search/?format=json&q=" +
                   foodInput
                    + "&sort=n&offset=0&api_key=aCeP7YpyyFicL1ADkMkc2BwkHoLCgPkLsNZ0jseL";

                var json = new WebClient().DownloadString(URL);

                UPC newFoodSearch = new UPC();

                JsonConvert.PopulateObject(json, newFoodSearch);


                for (int i = 0; i < newFoodSearch.list.end; i++)
                {

                    ListBox1.Items.Add(newFoodSearch.list.item[i].name);

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
       
        protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            String name = ListBox1.SelectedValue.ToString();

            string URL = "https://api.nal.usda.gov/ndb/search/?format=json&q=" +
               name
               + "&sort=n&max=25&offset=0&api_key=aCeP7YpyyFicL1ADkMkc2BwkHoLCgPkLsNZ0jseL";

            var json = new WebClient().DownloadString(URL);

            UPC newUPCSearch = new UPC();

            JsonConvert.PopulateObject(json, newUPCSearch);

            String num = newUPCSearch.list.item[0].ndbno;

            findItemndbno(num);

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
            txtNRF.Value = CalcNRF(dblProtein, dblFiber, dblVitaminA, dblVitaminC, dblCalcium, dblIron, 41, dblSatFat, dblSugar, dblSodium).ToString();
            txtNRF1.Value = CalcNRF(dblProtein, dblFiber, dblVitaminA, dblVitaminC, dblCalcium, dblIron, 41, dblSatFat, dblSugar, dblSodium).ToString();
        }
    }
}

