using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;
using WebApplication1.Models;

namespace WebApplication1.Tasks
{
    public class UpdatePagador
    {
        static SqlConnection conn = DBconnection.Sqlconn();

        public static int ById(int idPagador, string nombre, string calle, int numero, string colonia, int cp, string ciudad, string pais)
        {
            Pagador Resultado = new Pagador();
            string query = String.Format("exec UpdatePagador @idPagador = {0}, @nombre = '{1}', @calle = '{2}', @numero = {3}, @colonia = '{4}', @cp = {5}, @ciudad = '{6}', @pais = '{7}'", idPagador, nombre, calle, numero, colonia, cp, ciudad, pais);

            conn.Open();
            SqlCommand command = new SqlCommand(query, conn);
            command.ExecuteNonQuery();
            conn.Close();

            return idPagador;
        }
    }
}
