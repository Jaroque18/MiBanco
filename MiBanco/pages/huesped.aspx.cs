using Entidades;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MiBanco.pages
{
    public partial class huesped : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Entidades.Usuarios eUsuario = Session["usuario"] as Entidades.Usuarios;

            if (eUsuario == null)
            {
                FormsAuthentication.RedirectToLoginPage();
            }

            if (!IsPostBack & eUsuario != null)
            {

                DataTable dtdatos = new DataTable();

                Negocios.Negocio_Usuarios usuarios = new Negocios.Negocio_Usuarios();

                dtdatos = usuarios.listarDatos(eUsuario.IdUsuario);

                lblCuenta.Text = dtdatos.Rows[0]["TarjetaCredito"].ToString();
                lblCVV.Text = dtdatos.Rows[0]["CVV"].ToString();
                lblSaldo.Text = "$ "+dtdatos.Rows[0]["SaldoDisponible"].ToString();
                Label1.Text = eUsuario.Nombre.ToString() + " " + eUsuario.Apellidos.ToString() + " / Huésped";

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Entidades.Usuarios eUsuario = Session["usuario"] as Entidades.Usuarios;

            float SaldoAgregar = float.Parse(txtFondos.Text);

            Negocios.Negocio_Usuarios usuario = new Negocios.Negocio_Usuarios();

            usuario.agregarFondos(eUsuario.IdUsuario, SaldoAgregar);

            string script = "Swal.fire('¡GRACIAS!', 'Su saldo se acreditó de manera correcta.', 'success');";
            ScriptManager.RegisterStartupScript(this, GetType(), "MostrarAlerta", script, true);

            string redirectScript = "setTimeout(function(){window.location.href = '../pages/huesped.aspx';}, 3000);";
            ScriptManager.RegisterStartupScript(this, GetType(), "Redirigir", redirectScript, true);
        }
    }
}