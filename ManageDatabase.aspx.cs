using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FoodBank
{
    public partial class ManageDatabase : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {   
            using (SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["sc"].ConnectionString))
            {
                using (SqlCommand ceresPop = new SqlCommand("SELECT [Ceres CHOP].[Item No_]+ ' ' +[Description] As INFO, [Description]FROM [Ceres CHOP] left join [DB Bridge] on [DB Bridge].[Item No_]=[Ceres CHOP].[Item No_]"))
                {
                    ceresPop.CommandType = CommandType.Text;
                    ceresPop.Connection = con;
                    con.Open();
                    CeresID.DataSource = ceresPop.ExecuteReader();
                    CeresID.DataTextField = "INFO";
                    CeresID.DataValueField = "Description";
                    CeresID.DataBind();
                    con.Close();
                }
            }

        }

        String Measure;
        double dblWeight;

        public void search_matches( String description)
        {
            string URL = "https://api.nal.usda.gov/ndb/search/?format=json&q=" +
              description
               + "&sort=r&offset=0&api_key=aCeP7YpyyFicL1ADkMkc2BwkHoLCgPkLsNZ0jseL";

            var json = new WebClient().DownloadString(URL);

            UPC newFoodSearch = new UPC();

            JsonConvert.PopulateObject(json, newFoodSearch);

            for (int i = 0; i < newFoodSearch.list.end; i++)
            {
                //findItemndbno(newFoodSearch.list.item[i].ndbno);
                search_results.Items.Add(newFoodSearch.list.item[i].name);
            }

        }

        public void findItemndbno(String ndbno)
        {
            string URL = "http://api.nal.usda.gov/ndb/nutrients/?ndbno=" +
             ndbno
              + "&?format=json&api_key=aCeP7YpyyFicL1ADkMkc2BwkHoLCgPkLsNZ0jseL&nutrients=203&nutrients=291&nutrients=318&nutrients=401&nutrients=301&nutrients=303&nutrients=606&nutrients=269&nutrients=269&nutrients=307&nutrients=306&nutrients=208";

            var json = new WebClient().DownloadString(URL);

            Example newSearch = new Example();

            JsonConvert.PopulateObject(json, newSearch);

            dblWeight = newSearch.report.foods[0].weight;
            Measure = newSearch.report.foods[0].measure;
        }

        protected void CeresID_SelectedIndexChanged(object sender, EventArgs e)
        {
            String selection = CeresID.SelectedValue.ToString();

            search_matches(selection);
        }
    }
}