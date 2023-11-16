using Entidades;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MiBanco.pages
{
    public partial class anfitrion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Entidades.Usuarios eUsuario = Session["usuario"] as Entidades.Usuarios;

            if (eUsuario == null)
            {
                Response.Redirect("/Default.aspx");
            }

            if (!IsPostBack & eUsuario != null)
            {

                DataTable dtdatos = new DataTable();

                Negocios.Negocio_Usuarios usuarios = new Negocios.Negocio_Usuarios();

                dtdatos = usuarios.listarDatos(eUsuario.IdUsuario);

                lblCuenta.Text = dtdatos.Rows[0]["TarjetaCredito"].ToString();
                lblCVV.Text = dtdatos.Rows[0]["CVV"].ToString();
                lblSaldo.Text = "$ "+dtdatos.Rows[0]["SaldoDisponible"].ToString();
                Label1.Text = eUsuario.Nombre.ToString() +" "+eUsuario.Apellidos.ToString()+" / Anfitrión";

            }

                
        }

        protected void btnVerTransacciones_Click(object sender, EventArgs e)
        {
            
            Response.Redirect("../pages/anfitriontransacciones.aspx");
        }

    }
}