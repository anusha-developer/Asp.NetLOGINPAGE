using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace AspnetLoginpage.Connection
{
    public class DBConnection
    {
        public static SqlConnection CreateConnection()
        {
            //Sqlconnection class
            SqlConnection con = new SqlConnection(@"data source=.; database=LoginDB; integrated security=SSPI");
            return con;
        }

         
    }
}