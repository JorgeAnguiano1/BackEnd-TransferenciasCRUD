using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using WebApplication1.Models;
using WebApplication1.Services;

namespace WebApplication1.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class TransferenciaController : ControllerBase
    {
        [HttpGet]
        public ActionResult<List<TransferenciaVista>> Get() => TransferenciaService.GetAllTransferencias();

        [HttpGet("{id}")]
        public ActionResult<TransferenciaVista> Get(int id) => TransferenciaService.GetTransferenciaById(id);

        [HttpPost]
        public ActionResult<TransferenciaVista> Post([FromBody] Transferencia transferencia)
        {
            return TransferenciaService.Create(transferencia.idRemitente, transferencia.idBeneficiario, transferencia.idPagador, transferencia.monto, transferencia.comision, transferencia.estado);
        }

        [HttpPut("{id}")]
        public ActionResult<TransferenciaVista> Put([FromBody] Transferencia transferencia, int id)
        {
            return TransferenciaService.Update(id, transferencia.idRemitente, transferencia.idBeneficiario, transferencia.idPagador, transferencia.monto, transferencia.comision, transferencia.estado);
        }
    }
}