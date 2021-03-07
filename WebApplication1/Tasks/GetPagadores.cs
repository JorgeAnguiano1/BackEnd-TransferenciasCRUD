using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;
using WebApplication1.Models;

namespace WebApplication1.Tasks
{
    public class GetPagadores
    {
        static SqlConnection conn = DBconnection.Sqlconn();

        public static List<Pagador> All()
        {
            List<Pagador> Resultado = new List<Pagador>();
            string query = "exec SelectAllPagadoresActivos";

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
                Resultado.Add(pagador);
            }
            conn.Close();
            return Resultado;
        }
    }
}
