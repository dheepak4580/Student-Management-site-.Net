using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Mini_Project
{
    
    public partial class WebForm2 : System.Web.UI.Page
    {
        string cn = ConfigurationManager.ConnectionStrings["con"].ToString();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Submit(object sender, EventArgs e)
        {
            string username = txtUserName.Text;
            string password = txtPass.Text;
            string query = $@"select * from Admin where username = {username} and password = {password}";
            using(SqlConnection con = new SqlConnection(cn))
            {
                using(SqlCommand cmd = new SqlCommand(query,con)) 
                {
                    try
                    {
                        con.Open();
                        SqlDataReader dr = cmd.ExecuteReader();
                        if (dr.HasRows) 
                        {
                            Response.Redirect("Home.apsx");
                        }
                        else
                        {

                        }
                    }
                    catch (Exception ex)
                    {
                        Response.Write(ex.Message);
                    }
                    
                }
            }
        }
    }
}