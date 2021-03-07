using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;
using WebApplication1.Models;

namespace WebApplication1.Tasks
{
    public class GetTransferencias
    {
        static SqlConnection conn = DBconnection.Sqlconn();

        public static List<TransferenciaVista> All()
        {
            List<TransferenciaVista> Resultado = new List<TransferenciaVista>();
            string query = "exec SelectAllTransferencias";

            conn.Open();
            SqlCommand command = new SqlCommand(query, conn);
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                Models.TransferenciaVista transferencia = new Models.TransferenciaVista()
                {
                    idTransferencia = (int)reader["idTransferencia"],
                    idRemitente = (int)reader["idRemitente"],
                    idBeneficiario = (int)reader["idBeneficiario"],
                    idPagador = (int)reader["idPagador"],
                    monto = Convert.ToDecimal(reader["monto"]),
                    comision = Convert.ToDecimal(reader["comision"]),
                    estado = reader["estado"].ToString(),
                    fechaTramitado = reader["fechaTramitado"].ToString(),
                    nombreRemitente = reader["nombreRemitente"].ToString(),
                    nombreBeneficiario = reader["nombreBeneficiario"].ToString(),
                    nombrePagador = reader["nombrePagador"].ToString()
                };
                Resultado.Add(transferencia);
            }
            conn.Close();
            return Resultado;
        }
    }
}
