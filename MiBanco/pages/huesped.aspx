<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="huesped.aspx.cs" Inherits="MiBanco.pages.huesped" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script defer src="https://use.fontawesome.com/releases/v5.15.4/js/solid.js" integrity="sha384-/BxOvRagtVDn9dJ+JGCtcofNXgQO/CCCVKdMfL115s3gOgQxWaX/tSq5V8dRgsbc" crossorigin="anonymous"></script>
    <script defer src="https://use.fontawesome.com/releases/v5.15.4/js/fontawesome.js" integrity="sha384-dPBGbj4Uoy1OOpM4+aRGfAOc0W37JkROT+3uynUgTHZCHZNMHfGXsmmvYTffZjYO" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
    <style>
        #seccionEdicion {
            display: none;
            color: black;
            border: 2px dotted blue; /* Color del borde */
            padding: 20px; /* Espacio interior para que no esté pegado el contenido al borde */
            margin-top: 20px; /* Espacio exterior superior */
            border-radius: 10px; /* Bordes redondeados */
            background-color: mintcream; /* Color de fondo */
        }
    </style>



    <div class="d-flex align-items-center justify-content-center" style="min-height: 10rem;">

        <div class="col-lg-4 col-md-4 col-sm-4">
            <h1 style="color: #f58809;">Información de la cuenta</h1>
            <asp:Label ID="Label1" runat="server" Text="" Style="color: #1a2954; font-size: 25px;"></asp:Label>
            <div class="row">
                <label for="lblCuenta" style="color: #1a2954; font-size: 20px;">Número de cuenta:</label>
                <asp:Label ID="lblCuenta" runat="server" Text="" class="form-control"></asp:Label>
            </div>

            <div class="row">
                <label for="lblCVV" style="color: #1a2954; font-size: 20px;">CVV:</label>
                <asp:Label ID="lblCVV" runat="server" class="form-control">###</asp:Label>
            </div>
            
                    <div class="row">
                        <label for="lblSaldo" style="color: #1a2954; font-size: 20px;">Saldo disponible:</label>
                        <asp:Label ID="lblSaldo" runat="server" class="form-control">###</asp:Label>
                    </div>
                
            <div class="row mt-2 mb-2">
                <button class="btn btn-primary" onclick="prepararEdicion(); return false;" style="background-color: #1a2954; border-color: #1a2954;">
                    <i class="fa-solid fa-plus" style="color: white; margin-right: 2px; background-color: #1a2954;"></i>Agregar Fondos
                </button>
            </div>

            <div class="row mt-2 mb-2">
                <div id="seccionEdicion" style="display: none; color: black">
                    <!-- Formulario de Edición -->

                    <!-- Agrega más campos según sea necesario -->
                    <div class="row justify-content-center">
                        <asp:HiddenField ID="hiddenField1" runat="server" />
                        <asp:Label ID="lblNombre" runat="server" AssociatedControlID="txtFondos" CssClass="form-label">Fondos a agregar:</asp:Label>
                        <asp:TextBox runat="server" type="number" CssClass="form-control" ID="txtFondos"></asp:TextBox>
                    </div>

                    <div class="row" style="margin-top: 5px; margin-top: 10px;">
                        <asp:Button ID="Button1" OnClick="Button1_Click" runat="server" Text="Cargar Fondos" Style="background-color: #1a2954; border-color: #1a2954;" CssClass="btn btn-primary me-2" />
                    </div>
                    <div class="row" style="margin-top: 5px; margin-top: 10px;">
                        <button type="button" onclick="ocultarSeccionEdicion()" class="btn btn-secondary">Cancelar</button>
                    </div>
                </div>


            </div>
        </div>


    </div>




    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>

    <script type="text/javascript">

        function prepararEdicion() {
            mostrarSeccionEdicion();

        }

        function mostrarSeccionEdicion() {
            document.getElementById('seccionEdicion').style.display = 'block';
        }

        function ocultarSeccionEdicion() {
            document.getElementById('seccionEdicion').style.display = 'none';
        }



    </script>
</asp:Content>
