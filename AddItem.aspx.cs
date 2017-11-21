using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FoodBank
{
    public partial class AddItem : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void commitFood_onClick(object sender, EventArgs e)
        {
            String productName = exampleInputProductName.Value;
            String calories = exampleInputCalories.Value;
            String satFat = exampleInputSatFat.Value;
            String transFat = exampleInputtransfat.Value;
            String cholestreol = exampleInputcholesterol.Value;
            String sodium = exampleInputSodium.Value;
            String carbs = exampleInputcarbohydrate.Value;
            String fiber = exampleInputFiber.Value;
            String sugar = exampleInputSugar.Value;
            String protein = exampleInputProtein.Value;
            String vitA = exampleInputVitA.Value;
            String vitC = exampleInputVitC.Value;
            String calcium = exampleInputCalcium.Value;
            String iron = exampleInputIron.Value;
            String potassium = exampleInputPotassium.Value;

            // Link application to database, open SQL connection and establish insert string
            SqlConnection sc = new SqlConnection(WebConfigurationManager.ConnectionStrings["sc"].ConnectionString); 
            sc.Open();
            System.Data.SqlClient.SqlCommand insert = new System.Data.SqlClient.SqlCommand();
            insert.Connection = sc;

            insert.CommandText = "";
            // Parameterized query for committing employee object data to DB
            insert.CommandText += "INSERT INTO [dbo].[AddedFoodItem] ([PRODUCTNAME],[CALORYVALUE],[SATFATVALUE],[TRANSFATVALUE],[CHOLESTREOLVALUE],[SODIUMVALUE],[TOTALCARBSVALUE],[FIBERVALUE],[SUGARVALUE],[PROTEINVALUE],[VITAMINAVALUE],[VITAMINCVALUE],[CALCIUMVALUE],[IRONVALUE],[POTASSIUMVALUE])";
            insert.CommandText += " VALUES (@NAME, @CALORY, @SATFAT, @TRANSFAT, @CHOLESTREOL, @SODIUM, @CARBS, @FIBER, @SUGAR, @PROTEIN, @VITAMINA, @VITAMINC, @CALCIUM, @IRON, @POTASSIUM)";
            insert.Parameters.AddWithValue("@NAME", productName);
            insert.Parameters.AddWithValue("@CALORY", calories);
            insert.Parameters.AddWithValue("@SATFAT", satFat);
            insert.Parameters.AddWithValue("@TRANSFAT", transFat);
            insert.Parameters.AddWithValue("@CHOLESTREOL", cholestreol);
            insert.Parameters.AddWithValue("@SODIUM", sodium);
            insert.Parameters.AddWithValue("@CARBS", carbs);
            insert.Parameters.AddWithValue("@FIBER", fiber);
            insert.Parameters.AddWithValue("@SUGAR", sugar);
            insert.Parameters.AddWithValue("@PROTEIN", protein);
            insert.Parameters.AddWithValue("@VITAMINA", vitA);
            insert.Parameters.AddWithValue("@VITAMINC", vitC);
            insert.Parameters.AddWithValue("@CALCIUM", calcium);
            insert.Parameters.AddWithValue("@IRON", iron);
            insert.Parameters.AddWithValue("@POTASSIUM", potassium);


            System.Diagnostics.Debug.WriteLine(insert.CommandText);
            insert.ExecuteNonQuery();
            insert.CommandText = "";

        }
    }
}