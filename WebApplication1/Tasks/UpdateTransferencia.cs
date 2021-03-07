using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;
using WebApplication1.Models;

namespace WebApplication1.Tasks
{
    public class UpdateTransferencia
    {
        static SqlConnection conn = DBconnection.Sqlconn();

        public static int ById(int id , int idRemitente, int idBeneficiario, int idPagador, decimal monto, decimal comision, string estado)
        {
            Transferencia Resultado = new Transferencia();
            string query = String.Format("exec UpdateTransferencia @id = {0}, @idRemitente = {1}, @idBeneficiario = {2}, @idPagador = {3}, @monto = {4}, @comision = {5}, @estado = '{6}'", id, idRemitente, idBeneficiario, idPagador, monto, comision, estado);
            conn.Open();
            SqlCommand command = new SqlCommand(query, conn);
            command.ExecuteNonQuery();
            conn.Close();
            return id;
        }
    }
}
