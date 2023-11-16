using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MiBanco
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Entidades.Usuarios eUsuario = Session["usuario"] as Entidades.Usuarios;

            if (eUsuario != null)
            {
                Login.Visible = false;
                Registrarse.Visible = false;
                CerrarSesion.Visible = true;

            }
            else
            {
                Login.Visible = true;
                Registrarse.Visible = true;
                CerrarSesion.Visible = false;

            }
            
        }

        protected void CerrarSesion_Click(object sender, EventArgs e)
        {

            Session["usuario"] = null;
            Response.Redirect("/Default.aspx");
            CerrarSesion.Visible = true;
            Login.Visible = true;
            Registrarse.Visible = true;

        }
    }
}