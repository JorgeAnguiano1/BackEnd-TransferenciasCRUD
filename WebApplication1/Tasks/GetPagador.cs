using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;
using WebApplication1.Models;

namespace WebApplication1.Tasks
{
    public class GetPagador
    {
        static SqlConnection conn = DBconnection.Sqlconn();

        public static Pagador ById(int id)
        {
            Pagador Resultado = new Pagador();
            string query = "exec SelectIdPagador " + id;

            conn.Open();
            SqlCommand command = new SqlCommand(query, conn);
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                Models.Pagador pagador = new Models.Pagador()
                {
                    idPagador = (int)reader["idPagador"],
                    nombre = reader["nombre"].ToString(),
                    calle = reader["calle"].ToString(),
                    numero = (int)reader["numero"],
                    colonia = reader["colonia"].ToString(),
                    cp = (int)reader["cp"],
                    ciudad = reader["ciudad"].ToString(),
                    pais = reader["pais"].ToString(),
                    fechaRegistro = reader["fechaRegistro"].ToString(),
                };
                Resultado = pagador;
            }
            conn.Close();
            return Resultado;
        }
    }
}
