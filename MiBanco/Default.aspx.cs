using Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocios;
namespace MiBanco
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Negocios.Negocio_Usuarios negocio_Usuarios = new Negocio_Usuarios();

            string colones = negocio_Usuarios.ObtenerTipoCambio();

            decimal valorColones = decimal.Parse(colones);
            lblTipoCambio.Text = "USD 1 - CRC " + valorColones.ToString("N2");

        }

        
    }
}