using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using WebApplication1.Models;
using WebApplication1.Tasks;

namespace WebApplication1.Services
{
    public class PagadorService
    {
        public static List<Pagador> GetAllPagadores()
        {
            return GetPagadores.All();
        }

        public static Pagador GetPagadorById(int id)
        {
            return GetPagador.ById(id);
        }

        public static Pagador Create(string nombre, string calle, int numero, string colonia, int cp, string ciudad, string pais, bool Activo)
        {
            int idPagadorCreado = CreatePagador.Create(nombre, calle, numero, colonia, cp, ciudad, pais, Activo);
            return GetPagador.ById(idPagadorCreado);
        }

        public static Pagador Update(int id, string nombre, string calle, int numero, string colonia, int cp, string ciudad, string pais)
        {
            int idPagadorModificado = UpdatePagador.ById(id, nombre, calle, numero, colonia, cp, ciudad, pais);
            return GetPagador.ById(idPagadorModificado);
        }

        public static void Delete(int id)
        {
            DeletePagador.ById(id);
        }
    }
}
