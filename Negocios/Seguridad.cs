using Entidades;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Negocios
{
    public class Seguridad
    {
        public Entidades.Usuarios validacionCredenciales(string correo, string contrasena)
        {
            Entidades.Usuarios iUsuario = new Entidades.Usuarios(); 
            iUsuario.Contrasena = contrasena;   
            iUsuario.Correo = correo;   

            DataTable dt = new DataTable();

            string strNombreSP = "ValidarCredenciales";

            List<SqlParameter> lstParametros = new List<SqlParameter>();
            lstParametros.Add(new SqlParameter("@Correo", correo));
            lstParametros.Add(new SqlParameter("@Contrasena", contrasena));
           
            dt = Datos.ConexionSQL.ExecuteQueryTable(strNombreSP, lstParametros);

            if (dt.Rows.Count != 0)
            {
                iUsuario.validezCredencial = true;
                iUsuario.IdUsuario = dt.Rows[0][0].ToString();
                iUsuario.CVV = dt.Rows[0][2].ToString();   
                iUsuario.Tarjeta = dt.Rows[0][3].ToString();
                string rol = dt.Rows[0][4].ToString();
                iUsuario.T_Rol = rol[0];
                iUsuario.Nombre = dt.Rows[0][5].ToString();
                iUsuario.Apellidos = dt.Rows[0][6].ToString();
               

            }

                return iUsuario;
    }
    }
}
