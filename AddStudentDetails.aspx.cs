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
    public partial class WebForm4 : System.Web.UI.Page
    {
        string cn = ConfigurationManager.ConnectionStrings["con"].ToString();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                List<string> lstCity = new List<string>();
                lstCity.Add("--Select City--");
                List<string> lstCourse = new List<string>();
                lstCourse.Add("--select Course--");

                
                using (SqlConnection con = new SqlConnection(cn))
                {
                    string query = $"select city from City";
                    string query1 = $"select course from Course";
                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        using(SqlCommand cmd1 = new SqlCommand(query1, con))
                        {
                            try
                            {
                                con.Open();
                                SqlDataReader dr = cmd.ExecuteReader();
                                
                                if (dr.HasRows)
                                {
                                    while (dr.Read())
                                    {                                        
                                        lstCity.Add(dr["city"].ToString());
                                    }
                                    
                                                                   
                                }
                                dr.Close();
                                SqlDataReader dr1 = cmd1.ExecuteReader();
                                if (dr1.HasRows)
                                {
                                    while (dr1.Read())
                                    {
                                        lstCourse.Add(dr1["course"].ToString());
                                    }
                                    
                                                                    
                                }
                                dr1.Close();
                                ddlCity.DataSource = lstCity;
                                ddlCity.DataBind();
                                ddlCourse.DataSource = lstCourse;
                                ddlCourse.DataBind();
                            }
                            catch (Exception ex)
                            {
                                Response.Write(ex.Message);
                            }
                            finally
                            {
                                con.Close();
                            }
                        }                        
                    }
                }
            }
        }
        protected void Submit(object sender, EventArgs e)
        {
            string name = txtName.Text;
            long phone = Convert.ToInt64(txtPhone.Text);
            string city = ddlCity.Text;
            string course = ddlCourse.Text;
            using(SqlConnection con = new SqlConnection(cn))
            {
                string query = $@"insert into Student values('{name}',{phone},
                                  (select cid from City where city = '{city}' ),
                                  (select crsid from Course where course = '{course}') )";
                using(SqlCommand cmd = new SqlCommand(query, con))
                {
                    try
                    {
                        con.Open();
                        int res = cmd.ExecuteNonQuery();
                        if(res == 1)
                        {
                            Console.WriteLine("successfully inserted");
                        }
                        else
                        {
                            Console.WriteLine("Insertion failed");
                        }
                    }
                    catch (Exception ex)
                    {
                        Response.Write(ex.Message);
                    }
                    finally
                    {
                        if (con.State == System.Data.ConnectionState.Open)
                            con.Close();
                    }
                    
                }
            }
        }
    }
}