using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;
using WebApplication1.Models;
using WebApplication1.Tasks;

namespace WebApplication1.Services
{
    public class ClienteService
    {

        public static List<Cliente> GetAllClientes()
        {
            return GetClientes.All();
        }


        public static Cliente GetClienteById(int id)
        {
            return GetCliente.ById(id);
        }


        public static Cliente Create(string nombre, string apellidoPaterno, string apellidoMaterno, string calle, int numero, string colonia, int cp, string ciudad, string pais, bool activo)
        {
            int idClienteCreado = CreateCliente.Create(nombre, apellidoPaterno, apellidoMaterno, calle, numero, colonia, cp, ciudad, pais, activo);
            return GetCliente.ById(idClienteCreado);
        }


        public static Cliente Update(int id, string nombre, string apellidoPaterno, string apellidoMaterno, string calle, int numero, string colonia, int cp, string ciudad, string pais)
        {
            int idModificado = UpdateCliente.ById(id, nombre, apellidoPaterno, apellidoMaterno, calle, numero, colonia, cp, ciudad, pais);
            return GetCliente.ById(idModificado);
        }

        public static void Delete(int id)
        {
            DeleteCliente.ById(id);
        }
    }
}
