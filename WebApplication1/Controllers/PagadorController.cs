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
    public class PagadorController : ControllerBase
    {
        [HttpGet]
        public ActionResult<List<Pagador>> Get() => PagadorService.GetAllPagadores();

        [HttpGet("{id}")]
        public ActionResult<Pagador> Get(int id) => PagadorService.GetPagadorById(id);

        [HttpPost]
        public ActionResult<Pagador> Post([FromBody] Pagador pagador)
        {
            return PagadorService.Create(pagador.nombre, pagador.calle, pagador.numero, pagador.colonia, pagador.cp, pagador.ciudad, pagador.pais, pagador.Activo);

        }

        [HttpPut("{id}")]
        public ActionResult<Pagador> Put([FromBody] Pagador pagador, int id)
        {
            return PagadorService.Update(id, pagador.nombre, pagador.calle, pagador.numero, pagador.colonia, pagador.cp, pagador.ciudad, pagador.pais);
        }

        [HttpDelete("{id}")]
        public void Delete(int id)
        {
            PagadorService.Delete(id);
        }
    }
}