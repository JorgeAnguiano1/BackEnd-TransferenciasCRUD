using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;
using WebApplication1.Models;

namespace WebApplication1.Tasks
{
    public class CreateCliente
    {
        static SqlConnection conn = DBconnection.Sqlconn();

        public static int Create(string nombre, string apellidoPaterno, string apellidoMaterno, string calle, int numero, string colonia, int cp, string ciudad, string pais, bool activo)
        {
            Cliente nuevoCliente = new Cliente();
            string query = String.Format("exec CreateCliente @nombre = '{0}', @apellidoPaterno = '{1}', @apellidoMaterno = '{2}', @calle = '{3}', @numero = {4}, @colonia = '{5}', @cp = {6}, @ciudad = '{7}', @pais = '{8}', @activo = '{9}'", nombre, apellidoPaterno, apellidoMaterno, calle, numero, colonia, cp, ciudad, pais, activo);

            conn.Open();
            SqlCommand command = new SqlCommand(query, conn);
            int idClienteCreado = Convert.ToInt32(command.ExecuteScalar());
            conn.Close();
            return idClienteCreado;
        }
    }
}
