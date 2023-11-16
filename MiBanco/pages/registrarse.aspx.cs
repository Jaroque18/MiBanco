using Negocios;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MiBanco.pages
{
    public partial class registrarse : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCrearCuenta_Click(object sender, EventArgs e)
        {
            try {
                char tRol = 'a';
                String Nombre = txtNombre.Text;
                String Rol = ddlRol.SelectedValue.ToString();
                String Apellidos = txtApellidos.Text;
                String CorreoElectronico = txtCorreoElectronico.Text;
                String Identificacion = txtIdentificacion.Text;
                String Contrasena = txtcontrasenaCrear.Text;

                Entidades.Usuarios iUsuario = new Entidades.Usuarios();

                iUsuario.Nombre = Nombre;
                if (Rol.Equals("Anfitrión"))
                {
                    tRol = 'A';
                }
                if (Rol.Equals("Huésped"))
                {
                    tRol = 'H';
                }

                iUsuario.T_Rol = tRol;
                iUsuario.Apellidos = Apellidos;
                iUsuario.Correo = CorreoElectronico;
                iUsuario.IdUsuario = Identificacion;
                iUsuario.Contrasena = Contrasena;


                Negocios.Negocio_Usuarios iUsuariosNeg = new Negocio_Usuarios();

                iUsuariosNeg.AgregarUsuario(iUsuario, 1);

                string script = "Swal.fire('¡GRACIAS!', 'Su cuenta se creo de manera satisfactoria.', 'success');";
                ScriptManager.RegisterStartupScript(this, GetType(), "MostrarAlerta", script, true);

                string redirectScript = "setTimeout(function(){window.location.href = '/Default.aspx';}, 5000);";
                ScriptManager.RegisterStartupScript(this, GetType(), "Redirigir", redirectScript, true);

            } catch (Exception ) {

                string script = "Swal.fire('¡Error!', 'El correo indicado ya esta registrado', 'error');";
                ScriptManager.RegisterStartupScript(this, GetType(), "MostrarAlerta", script, true);

            }
            
        }
    }
}