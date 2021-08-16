using AspnetLoginpage.Connection;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspnetLoginpage
{
    public partial class LoginPage : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            con = DBConnection.CreateConnection();

            lblErrorMessage.Visible = false;
        }
         SqlConnection con = null;
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            //con = DBConnection.CreateConnection();
            { 
                    con.Open();
                    string query = "select * from Tbl_Login where  UserName=@UserName  AND Password=@Password";
                    SqlCommand cmd = new SqlCommand(query, con);
                    cmd.Parameters.AddWithValue("@UserName", txtUserName.Text.Trim());
                    cmd.Parameters.AddWithValue("@Password", txtPassword.Text.Trim());
                    int Count= Convert.ToInt32(cmd.ExecuteScalar());
                    if (Count == 1)
                    {
                        Session["@UserName"] = txtUserName.Text.Trim();
                        Response.Redirect("Home.aspx");
                    }
                    else
                    {
                        lblErrorMessage.Visible = true;
                    }
                      con.Close();
            
                
            }


        }
    }
}