using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace WebApplication1.Models
{
    public class Pagador
    {
        public int idPagador { get; set; }
        public string nombre { get; set; }
        public string calle { get; set; }
        public int numero { get; set; }
        public string colonia { get; set; }
        public int cp { get; set; }
        public string ciudad { get; set; }
        public string pais { get; set; }
        public string fechaRegistro { get; set; }
        public bool Activo { get; set; }
    }
}
