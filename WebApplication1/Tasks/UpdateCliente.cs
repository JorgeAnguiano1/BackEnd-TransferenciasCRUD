using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;
using WebApplication1.Models;

namespace WebApplication1.Tasks
{
    public class UpdateCliente
    {
        static SqlConnection conn = DBconnection.Sqlconn();

        public static int ById(int idCliente, string nombre, string apellidoPaterno, string apellidoMaterno, string calle, int numero, string colonia, int cp, string ciudad, string pais)
        {
            Cliente Resultado = new Cliente();
            string query = String.Format("exec UpdateCliente @idCliente = {0}, @nombre = '{1}', @apellidoPaterno = '{2}', @apellidoMaterno = '{3}', @calle = '{4}', @numero = {5}, @colonia = '{6}', @cp = {7}, @ciudad = '{8}', @pais = '{9}'", idCliente, nombre, apellidoPaterno, apellidoMaterno, calle, numero, colonia, cp, ciudad, pais);
            conn.Open();
            SqlCommand command = new SqlCommand(query, conn);
            command.ExecuteNonQuery();
            conn.Close();
            return idCliente;
        }
    }
}
