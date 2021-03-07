using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;
using WebApplication1.Models;

namespace WebApplication1.Tasks
{
    public class GetCliente
    {
        static SqlConnection conn = DBconnection.Sqlconn();

        public static Cliente ById(int id)
        {
            Cliente Resultado = new Cliente();
            string query = "exec SelectIdCliente " + id;

            conn.Open();
            SqlCommand command = new SqlCommand(query, conn);
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                Models.Cliente cliente = new Models.Cliente()
                {
                    idCliente = (int)reader["idCliente"],
                    nombre = reader["nombre"].ToString(),
                    apellidoPaterno = reader["apellidoPaterno"].ToString(),
                    apellidoMaterno = reader["apellidoMaterno"].ToString(),
                    calle = reader["calle"].ToString(),
                    numero = (int)reader["numero"],
                    colonia = reader["colonia"].ToString(),
                    cp = (int)reader["cp"],
                    ciudad = reader["ciudad"].ToString(),
                    pais = reader["pais"].ToString(),
                    fechaRegistro = reader["fechaRegistro"].ToString(),
                };
                Resultado = cliente;
            }
            conn.Close();
            return Resultado;
        }
    }
}
