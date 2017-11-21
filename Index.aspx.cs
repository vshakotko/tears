using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace FoodBank
{
    public partial class Index : System.Web.UI.Page
    {
        protected void sendAccountBtn_Click(object sender, EventArgs e)
        {
            String databaseEmail;
            String databasePassword;

            SqlConnection sc = new SqlConnection(WebConfigurationManager.ConnectionStrings["sc"].ConnectionString);

            sc.Open();

            SqlDataReader myReader = null;
            SqlCommand myCommand = new SqlCommand("select ACCOUNTEMAIL, ACCOUNTPASSWORD from Account",
                                                     sc);
            myReader = myCommand.ExecuteReader();
            while (myReader.Read())
            {
                databaseEmail = myReader["ACCOUNTEMAIL"].ToString();
                databasePassword = myReader["ACCOUNTPASSWORD"].ToString();

                if (databaseEmail != inputEmail.Value || databasePassword != inputPassword.Value)
                {
                    break;
                }
                else
                {
                    Server.Transfer("DashBoard.aspx");
                }
            }

            sc.Close();
        }


    }
}

