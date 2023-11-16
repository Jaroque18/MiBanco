using Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MiBanco
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Entidades.Usuarios eUsuario = Session["usuario"] as Entidades.Usuarios;
            if (eUsuario == null)
            {
               
            }

            if (eUsuario != null)
            {
                if (eUsuario.T_Rol == 'A')
                {
                    Response.Redirect("/pages/anfitrion.aspx");
                }

                if (eUsuario.T_Rol == 'H')
                {
                    Response.Redirect("/pages/huesped.aspx");
                }

                if (eUsuario.T_Rol == 'G')
                {
                    Response.Redirect("/pages/anfitrion.aspx");
                }
            }
        }

        protected void btnIniciarSesion_Click(object sender, EventArgs e)
        {
            try {

                string correo;
                string contrasena;

                correo = txtCorreo.Text;
                contrasena = txtcontrasena.Text;

                Negocios.Seguridad iSeguridad = new Negocios.Seguridad();

                iSeguridad.validacionCredenciales(correo,contrasena);

                Entidades.Usuarios eUsuario;

                eUsuario = iSeguridad.validacionCredenciales(correo, contrasena);

                if (eUsuario.validezCredencial)
                {
                    Session["usuario"] = eUsuario;

                    if(eUsuario.T_Rol == 'A')
                    {
                        Response.Redirect("/pages/anfitrion.aspx");
                    }

                    if (eUsuario.T_Rol == 'H')
                    {
                        Response.Redirect("/pages/huesped.aspx");
                    }

                    if (eUsuario.T_Rol == 'G')
                    {
                        Response.Redirect("/pages/anfitrion.aspx");
                    }

                }
                else
                {
                    string script = "Swal.fire('¡Error!', 'Las Credenciales no son correctas', 'error');";
                    ScriptManager.RegisterStartupScript(this, GetType(), "MostrarAlerta", script, true);
                }



            } catch (Exception ) { 
            
            
            
            }
        }
    }
}