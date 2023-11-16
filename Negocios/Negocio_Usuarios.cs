using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entidades;

namespace Negocios
{
    public class Negocio_Usuarios
    {
        public void AgregarUsuario(Entidades.Usuarios Usuario, int Accion)
        {
            try
            {
                string strNombreSP = "CRUD_Usuarios";
                        
                List<SqlParameter> lstParametros = new List<SqlParameter>();
                lstParametros.Add(new SqlParameter("@Accion", Accion));
                lstParametros.Add(new SqlParameter("@Identificacion", Usuario.IdUsuario));
                lstParametros.Add(new SqlParameter("@Nombre", Usuario.Nombre));
                lstParametros.Add(new SqlParameter("@Apellidos", Usuario.Apellidos));
                lstParametros.Add(new SqlParameter("@RolUsuario", Usuario.T_Rol));
                lstParametros.Add(new SqlParameter("@Correo", Usuario.Correo));
                lstParametros.Add(new SqlParameter("@Contrasena", Usuario.Contrasena));

                Datos.ConexionSQL.ExecuteQuery(strNombreSP, lstParametros);

            }
            catch (Exception ex)
            {
                throw ex;
            }

        }//fin de agregar usuario


        public DataTable listarTransacciones(string correo)
        {
            DataTable dt = new DataTable();

            try
            {
                string strNombreSP = "ListarTransaccionesAnfitrion";

                List<SqlParameter> lstParametros = new List<SqlParameter>();
                lstParametros.Add(new SqlParameter("@Correo", correo));

               dt =  Datos.ConexionSQL.ExecuteQueryTable(strNombreSP, lstParametros);

            }
            catch (Exception ex)
            {
                throw ex;
            }

            return dt;

        }

        public void agregarFondos(string idHuesped, float Monto)
        {
            try
            {
                string strNombreSP = "AgregarFondosHuesped";

                List<SqlParameter> lstParametros = new List<SqlParameter>();
                lstParametros.Add(new SqlParameter("@idHuesped", idHuesped));
                lstParametros.Add(new SqlParameter("@MontoAgregar", Monto));

                Datos.ConexionSQL.ExecuteQuery(strNombreSP, lstParametros);

            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public DataTable listarDatos(string idUsuario)
        {
            DataTable dt = new DataTable();

            try
            {
                string strNombreSP = "ObtenerDatos";

                List<SqlParameter> lstParametros = new List<SqlParameter>();
                lstParametros.Add(new SqlParameter("@idUsuario", @idUsuario));

                dt = Datos.ConexionSQL.ExecuteQueryTable(strNombreSP, lstParametros);

            }
            catch (Exception ex)
            {
                throw ex;
            }

            return dt;

        }
    }
}
