using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;
using WebApplication1.Models;

namespace WebApplication1.Tasks
{
    public class CreateTransferencia
    {
        static SqlConnection conn = DBconnection.Sqlconn();

        public static int Create(int idRemitente, int idBeneficiario, int idPagador, decimal monto, decimal comision, string estado)
        {
            Transferencia nuevaTransferencia = new Transferencia();
            string query = String.Format("exec CreateTransferencia @idRemitente = '{0}', @idBeneficiario = '{1}', @idPagador = '{2}', @monto = '{3}', @comision = {4}, @estado = '{5}'", idRemitente, idBeneficiario, idPagador, monto, comision, estado);

            conn.Open();
            SqlCommand command = new SqlCommand(query, conn);
            int idTransferenciaCreada = Convert.ToInt32(command.ExecuteScalar());
            conn.Close();
            return idTransferenciaCreada;
        }
    }
}
