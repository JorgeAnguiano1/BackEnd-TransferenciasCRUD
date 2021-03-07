using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;
using WebApplication1.Models;

namespace WebApplication1.Tasks
{
    public class CreatePagador
    {
        static SqlConnection conn = DBconnection.Sqlconn();

        public static int Create(string nombre, string calle, int numero, string colonia, int cp, string ciudad, string pais, bool Activo)
        {
            string query = String.Format("exec CreatePagador @nombre = '{0}', @calle = '{1}', @numero = {2}, @colonia = '{3}', @cp = {4}, @ciudad = '{5}', @pais = '{6}', @Activo = '{7}'", nombre, calle, numero, colonia, cp, ciudad, pais, Activo);

            conn.Open();
            SqlCommand command = new SqlCommand(query, conn);
            int idPagadorCreado = Convert.ToInt32(command.ExecuteScalar());
            conn.Close();

            return idPagadorCreado;
        }
    }
}
