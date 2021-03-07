using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;

namespace WebApplication1
{
    class DBconnection
    {
        public static SqlConnection Sqlconn()
        {
            //chido
            string server = "localhost";
            string db = "CAP_JGONZALEZ";

            string connectionString = string.Format("Server={0};Database={1};Integrated Security=True;", server, db);

            SqlConnection conn = new SqlConnection(connectionString.ToString());
            
            return conn;
        }
    }
}
