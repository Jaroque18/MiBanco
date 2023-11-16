﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI.WebControls;

namespace MiBanco
{
    /// <summary>
    /// Descripción breve de mibanco
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // Para permitir que se llame a este servicio web desde un script, usando ASP.NET AJAX, quite la marca de comentario de la línea siguiente. 
    // [System.Web.Script.Services.ScriptService]
    public class mibanco : System.Web.Services.WebService
    {

        [WebMethod]
        public string HelloWorld()
        {
            return "Hola a todos";
        }


        [WebMethod]
        public bool ValidarExistencia(string numTarjeta, string cvv)
        {
            bool encontrado = false;

            DataTable dt = new DataTable();

            try
            {
                string strNombreSP = "BuscarUsuario";

                List<SqlParameter> lstParametros = new List<SqlParameter>();
                lstParametros.Add(new SqlParameter("@numTarjeta", numTarjeta));
                lstParametros.Add(new SqlParameter("@cvv", cvv));
                dt = Datos.ConexionSQL.ExecuteQueryTable(strNombreSP, lstParametros);

            }
            catch (Exception ex)
            {
                throw ex;
            }

            if(dt.Rows.Count > 0)
            {
                encontrado = true;
            }
            else
            {
                encontrado = false;
            }

            return encontrado;
        }

        [WebMethod]
        public string[] listarDatos(string idUsuario)
        {
            string[] datos;
            DataTable dt = new DataTable();

            try
            {
                string strNombreSP = "ObtenerDatos";

                List<SqlParameter> lstParametros = new List<SqlParameter>();
                lstParametros.Add(new SqlParameter("@idUsuario", @idUsuario));

                dt = Datos.ConexionSQL.ExecuteQueryTable(strNombreSP, lstParametros);
                int index = 0;

                int rowCount = dt.Rows.Count;
                int colCount = dt.Columns.Count;

                // Crea un arreglo de cadenas para almacenar los valores.
                datos = new string[rowCount * colCount];

                foreach (DataRow row in dt.Rows)
                {
                    foreach (DataColumn col in dt.Columns)
                    {
                        datos[index] = row[col].ToString();
                        index++;
                    }
                }


                
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return datos;

        }
    }
}
