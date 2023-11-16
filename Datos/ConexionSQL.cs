using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Datos
{
    public class ConexionSQL
    {
        private static StringBuilder strConexion;
        private static SqlConnection sqlCon;
        public static void CadenaConexion()
        {
            strConexion = new StringBuilder();
            strConexion.Append("Data Source=");
            strConexion.Append("tiusr21pl.cuc-carrera-ti.ac.cr\\MSSQLSERVER2019");
            strConexion.Append(";Initial Catalog=");
            strConexion.Append("MiBanco");
            strConexion.Append(";User ID=");
            strConexion.Append("MiBanco");
            strConexion.Append(";Password=");
            strConexion.Append("banco#12345");

            sqlCon = new SqlConnection(strConexion.ToString());

            try
            {
                sqlCon.Open();
            }
            catch (Exception ex)
            {
                String Mensaje = ex.Message;
            }
            sqlCon.Close();
        }//fin de cadena de conexion


        public static void ExecuteQuery(String NombreProcedimiento, List<SqlParameter> ListaParametros)
        {
            try
            {
                //Inicializa la conexion
                CadenaConexion();

                //Crea el objeto SQL
                SqlCommand cmd = new SqlCommand
                {
                    CommandText = NombreProcedimiento,
                    CommandType = CommandType.StoredProcedure,
                    Connection = sqlCon
                };

                foreach (SqlParameter sqlParam in ListaParametros)
                {
                    cmd.Parameters.Add(sqlParam);
                }

                //Abre la Conexion
                sqlCon.Open();

                //Ejecuta la Consulta
                cmd.ExecuteNonQuery();

                //Cierra la conexion
                sqlCon.Close();
            }
            catch (Exception ex)
            {
                if (sqlCon.State != ConnectionState.Closed)
                    sqlCon.Close();
                throw ex;
            }//fin del catch
        }//fin de ExecuteQuery

        public static DataTable ExecuteQueryTableGeneral(String NombreProcedimiento)
        {
            DataTable dtDatos = new DataTable();
            try

            {

                //Inicializa la conexion
                CadenaConexion();



                //Crea el objeto SQL
                SqlCommand cmd = new SqlCommand
                {
                    CommandText = NombreProcedimiento,
                    CommandType = CommandType.StoredProcedure,
                    Connection = sqlCon
                };




                //Abre la Conexion
                sqlCon.Open();

                //Ejecuta la Consulta
                cmd.ExecuteNonQuery();

                SqlDataAdapter dataAdapter = new SqlDataAdapter(cmd);

                dataAdapter.Fill(dtDatos);


                //Cierra la conexion
                sqlCon.Close();


            }
            catch (Exception ex)
            {
                if (sqlCon.State != ConnectionState.Closed)
                    sqlCon.Close();
                throw ex;
            }//fin del catch
            return dtDatos;
        }//fin de ExecuteQuery

        public static DataTable ExecuteQueryTable(String NombreProcedimiento, List<SqlParameter> ListaParametros)
        {
            DataTable dtDatos = new DataTable();
            try

            {

                //Inicializa la conexion
                CadenaConexion();



                //Crea el objeto SQL
                SqlCommand cmd = new SqlCommand
                {
                    CommandText = NombreProcedimiento,
                    CommandType = CommandType.StoredProcedure,
                    Connection = sqlCon
                };

                foreach (SqlParameter sqlParam in ListaParametros)
                {
                    cmd.Parameters.Add(sqlParam);
                }


                //Abre la Conexion
                sqlCon.Open();

                //Ejecuta la Consulta
                cmd.ExecuteNonQuery();

                SqlDataAdapter dataAdapter = new SqlDataAdapter(cmd);
                dataAdapter.Fill(dtDatos);

                //Cierra la conexion
                sqlCon.Close();


            }
            catch (Exception ex)
            {
                if (sqlCon.State != ConnectionState.Closed)
                    sqlCon.Close();
                throw ex;
            }//fin del catch
            return dtDatos;
        }//fin de ExecuteQuery
    }
}
