using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Usuarios
    {
        public string IdUsuario { get; set; }
        public string Nombre { get; set; }
        public string Apellidos { get; set; }
        public string Correo { get; set; }
        public string Contrasena { get; set; }
        public char T_Rol { get; set; }
        public string Tarjeta { get; set; }
        public string CVV { get; set; }
        public bool validezCredencial = false;
        
    }
}
