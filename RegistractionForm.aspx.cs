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
    public partial class RegistractionForm : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
           
        protected void BtnSave_Click(object sender, EventArgs e)
        {
            lblSuccessMessage.Text = "Saved Successfully";
        }
    }
}
  
 