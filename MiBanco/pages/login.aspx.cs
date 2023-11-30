using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MiBanco.pages
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Entidades.Usuarios eUsuario = Session["usuario"] as Entidades.Usuarios;

            if (eUsuario == null)
            {

            }

            if (eUsuario != null)
            {
               
                    Response.Redirect("../pages/huesped.aspx");
   
            }
        }

        protected void btnIniciarSesion_Click(object sender, EventArgs e)
        {
            try
            {

                string correo;
                string contrasena;

                correo = txtCorreo.Text;
                contrasena = txtcontrasena.Text;

                Negocios.Seguridad iSeguridad = new Negocios.Seguridad();

                iSeguridad.validacionCredenciales(correo, contrasena);

                Entidades.Usuarios eUsuario;

                eUsuario = iSeguridad.validacionCredenciales(correo, contrasena);

                if (eUsuario.validezCredencial)
                {
                    Session["usuario"] = eUsuario;

                    FormsAuthentication.RedirectFromLoginPage(correo, false);

                    
                        Response.Redirect("../pages/huesped.aspx");

                }
                else
                {
                    string script = "Swal.fire('¡Error!', 'Las Credenciales no son correctas', 'error');";
                    ScriptManager.RegisterStartupScript(this, GetType(), "MostrarAlerta", script, true);
                }



            }
            catch (Exception)
            {



            }
        }
    }
}