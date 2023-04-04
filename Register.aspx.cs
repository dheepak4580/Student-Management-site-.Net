using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Mini_Project
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        string cn = ConfigurationManager.ConnectionStrings["con"].ToString();//configurationManager class represents
                                                                             //web.config and ConnectionStrings class
                                                                             //represents ConnectionString tag
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Submit(object sender, EventArgs e)
        {
            using(SqlConnection con = new SqlConnection(cn))
            {
                string userName = txtUserName.Text;
                string password = txtPass.Text;
                string email = txtEmail.Text;
                long phno = Convert.ToInt64(txtPhone.Text);
                string query = $@"insert into Admin values('{userName}','{password}','{email}',{phno})";
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    try
                    {
                        con.Open();
                        int res = cmd.ExecuteNonQuery();
                        if (res == 1)
                        {
                            Console.WriteLine("Data inserted successfully");
                            Response.Redirect("Login.aspx");
                        }
                    }
                    catch (Exception ex) { Console.WriteLine(ex.Message); }
                    finally {
                        if (con.State == ConnectionState.Open) 
                        { con.Close(); } 
                    }
                }

            }
        }
    }
}