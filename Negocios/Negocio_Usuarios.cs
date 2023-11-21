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

        public string ObtenerTipoCambio()
        {
            DateTime fechaActual = DateTime.Now;
            string fechaComoString = fechaActual.ToString("dd/MM/yyyy"); 

            BancoBCCR.wsindicadoreseconomicos client = new BancoBCCR.wsindicadoreseconomicos();
            
            DataSet dataSet = client.ObtenerIndicadoresEconomicos("318", fechaComoString, fechaComoString, "José Julián Rodríguez Mora", "Si", "305400698@cuc.cr", "UOPJR3O645");

            if (dataSet != null && dataSet.Tables.Count > 0 && dataSet.Tables["INGC011_CAT_INDICADORECONOMIC"].Rows.Count > 0)
            {
                DataRow row = dataSet.Tables["INGC011_CAT_INDICADORECONOMIC"].Rows[0];
                string numValor = row["NUM_VALOR"].ToString();
                return numValor;
            }
            else
            {
                return "No se encontró el valor";
            }
        }
    }
}
