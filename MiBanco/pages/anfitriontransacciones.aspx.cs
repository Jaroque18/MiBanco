using Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MiBanco.pages
{
    public partial class anfitriontransacciones : System.Web.UI.Page
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
                Negocios.Negocio_Usuarios usuario = new Negocios.Negocio_Usuarios();

                rptDatosUsuarios.DataSource = usuario.listarTransacciones(eUsuario.Correo);
                rptDatosUsuarios.DataBind();
            }

        }

        protected void btnRegresar_Click(object sender, EventArgs e)
        {

            Response.Redirect("../pages/anfitrion.aspx");
        }
    }
}