using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using WebApplication1.Models;
using WebApplication1.Tasks;

namespace WebApplication1.Services
{
    public class TransferenciaService
    {
        public static List<TransferenciaVista> GetAllTransferencias()
        {
            return GetTransferencias.All();
        }

        public static TransferenciaVista GetTransferenciaById(int id)
        {
            return GetTransferencia.ById(id);
        }

        public static TransferenciaVista Create(int idRemitente, int idBeneficiario, int idPagador, decimal monto, decimal comision, string estado)
        {
            int idTransferenciaCreada = CreateTransferencia.Create(idRemitente, idBeneficiario, idPagador, monto, comision, estado);
            return GetTransferencia.ById(idTransferenciaCreada);
        }

        public static TransferenciaVista Update(int id, int idRemitente, int idBeneficiario, int idPagador, decimal monto, decimal comision, string estado)
        {
            int idModificado = UpdateTransferencia.ById(id, idRemitente, idBeneficiario, idPagador, monto, comision, estado);
            return GetTransferencia.ById(idModificado);
        }
    }
}
