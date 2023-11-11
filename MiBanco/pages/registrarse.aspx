<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="registrarse.aspx.cs" Inherits="MiBanco.pages.registrarse" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <script>
        function validarContrasena() {
            const contrasenaInput = document.getElementById('<%= txtcontrasena.ClientID %>');
            if (contrasenaInput) {
                const contrasena = contrasenaInput.value;
                const longitudValida = contrasena.length >= 10;
                const contieneMayuscula = /[A-Z]/.test(contrasena);
                const contieneNumero = /\d/.test(contrasena);
                const noConsecutivos = !/(.)\1{1,}/.test(contrasena);
                const mensajes = document.getElementsByClassName("mensaje");
                const mensaje = mensajes.length > 0 ? mensajes[0] : null;
                if (longitudValida && contieneMayuscula && contieneNumero && noConsecutivos) {
                    mensaje.innerHTML = "Contraseña válida";
                    mensaje.style.color = "green";
                } else {
                    mensaje.innerHTML = "La contraseña debe cumplir con los siguientes requisitos:<br>";
                    if (!longitudValida) {
                        mensaje.innerHTML += " - Debe tener al menos 10 caracteres<br>";
                    }
                    if (!contieneMayuscula) {
                        mensaje.innerHTML += " - Debe contener al menos una letra mayúscula<br>";
                    }
                    if (!contieneNumero) {
                        mensaje.innerHTML += " - Debe contener al menos un número<br>";
                    }
                    if (!noConsecutivos) {
                        mensaje.innerHTML += " - No debe tener caracteres consecutivos<br>";
                    }
                    mensaje.style.color = "red";
                }


                // Habilitar o deshabilitar el botón de envío
                const botonEnvio = document.getElementById('<%= btnRegistrar.ClientID %>');
                botonEnvio.disabled = !(longitudValida && contieneMayuscula && contieneNumero && noConsecutivos);
            }
        }
    </script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
        integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script defer src="https://use.fontawesome.com/releases/v5.15.4/js/solid.js"
        integrity="sha384-/BxOvRagtVDn9dJ+JGCtcofNXgQO/CCCVKdMfL115s3gOgQxWaX/tSq5V8dRgsbc"
        crossorigin="anonymous"></script>
    <script defer src="https://use.fontawesome.com/releases/v5.15.4/js/fontawesome.js"
        integrity="sha384-dPBGbj4Uoy1OOpM4+aRGfAOc0W37JkROT+3uynUgTHZCHZNMHfGXsmmvYTffZjYO"
        crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />

    <link rel="stylesheet" href="../Content/loginstyle.css">


    <div class="container d-flex align-items-center justify-content-center">
        <div class="row">
            <h1 class="display-6 text-center">Crear Cuenta</h1>
            <hr class="divider" />
            <div class="col-md-5 offset-md-4">
                <div class="form-group">
                    <label for="txtidentificacion">Identificación</label>
                    <asp:TextBox ID="txtidentificacion" runat="server" CssClass="form-control" MaxLength="11" Placeholder="Escriba su identificación" Required="true" pattern="[0-9]{1}-[0-9]{4}-[0-9]{4}" />
                    <small id="idHelp" class="form-text text-muted">El formato debe ser #-####-####</small>
                </div>

                <div class="form-group">
                    <label for="txtnombre">Nombre</label>
                    <asp:TextBox  style="min-width: 200px;" ID="txtnombre" runat="server" CssClass="form-control" MaxLength="20" Placeholder="Escriba su nombre" Required="true" />
                </div>

                <div class="form-group">
                    <label for="txtapellidos">Apellidos</label>
                    <asp:TextBox ID="txtapellidos" runat="server" CssClass="form-control" MaxLength="50" Placeholder="Escriba sus apellidos" Required="true" />
                </div>

                <div class="form-group">
                    <label for="txtcorreo">Correo Electrónico</label>
                    <asp:TextBox ID="txtcorreo" runat="server" CssClass="form-control" Placeholder="alguien@ejemplo.com" Required="true" />
                </div>

                <div class="form-group">
                    <label for="txtcontrasena">Contraseña</label>
                    <asp:TextBox ID="txtcontrasena" runat="server" CssClass="form-control" TextMode="Password" Placeholder="Contraseña" MinLength="10" Required="true" onkeyup="validarContrasena()" />
                    <small id="proHelp" class="form-text text-muted">Tamaño mínimo 10 caracteres, debe incluir al menos una mayúscula y al menos un número y números no consecutivos como (11111 o 22222)</small>
                    <div>
                        <span id="mensaje" style="color: red;"></span>
                    </div>
                </div>

                <div class="form-group mt-4 mb-4">
                    <asp:Button ID="btnRegistrar" runat="server" Text="Registrarme" CssClass="btn btn-primary" Enable="false" Style="background-color: blue;" />
                </div>
            </div>
        </div>
    </div>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>

</asp:Content>
