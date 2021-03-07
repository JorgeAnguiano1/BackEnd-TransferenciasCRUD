using System;
using System.Collections.Generic;
using System.Data.SqlClient;
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
    public class ClienteController : ControllerBase
    {
        [HttpGet]
        public ActionResult<List<Cliente>> Get() => ClienteService.GetAllClientes();

        [HttpGet("{id}")]
        public ActionResult<Cliente> Get(int id) => ClienteService.GetClienteById(id);

        [HttpPost]
        public ActionResult<Cliente> Post([FromBody] Cliente cliente)
        {
            return  ClienteService.Create(cliente.nombre, cliente.apellidoPaterno, cliente.apellidoMaterno, cliente.calle, cliente.numero, cliente.colonia, cliente.cp, cliente.ciudad, cliente.pais, cliente.Activo);
        }
        
        [HttpPut("{id}")]
        public ActionResult<Cliente> Put([FromBody] Cliente cliente, int id)
        {
            return ClienteService.Update(id, cliente.nombre, cliente.apellidoPaterno, cliente.apellidoMaterno, cliente.calle, cliente.numero, cliente.colonia, cliente.cp, cliente.ciudad, cliente.pais);
        }

        [HttpDelete("{id}")]
        public void Delete(int id)
        {
            ClienteService.Delete(id);
        }
    }
}