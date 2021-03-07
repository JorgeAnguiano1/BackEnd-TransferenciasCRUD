using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace WebApplication1.Models
{
    public class Transferencia
    {
        public int idTransferencia { get; set;}
        public int idRemitente { get; set; }
        public int idBeneficiario { get; set; }
        public int idPagador { get; set; }
        public decimal monto { get; set; }
        public decimal comision { get; set; }
        public string estado { get; set; }
        public string fechaTramitado { get; set; }
    }
}
