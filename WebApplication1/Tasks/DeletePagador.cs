using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace WebApplication1.Tasks
{
    public class DeletePagador
    {
        static SqlConnection conn = DBconnection.Sqlconn();

        public static void ById(int id)
        {
            string query = "exec DeletePagador " + id;

            conn.Open();
            SqlCommand command = new SqlCommand(query, conn);
            command.ExecuteNonQuery();
            conn.Close();
        }
    }
}
