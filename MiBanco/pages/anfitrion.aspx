<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="anfitrion.aspx.cs" Inherits="MiBanco.pages.anfitrion" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <link href="Content/loginstyle.css" rel="stylesheet" />
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


    <div class="d-flex align-items-center justify-content-center" style="min-height: 10rem;">

        <div class="col-lg-4 col-md-4 col-sm-4">
            <h1 style="color:#f58809;">Información de la cuenta</h1>
            <asp:Label id="Label1" runat="server" Text="" style="color:  #1a2954; font-size: 25px;"></asp:Label>
            <div class="row">
                <label for="lblCuenta" style="color:  #1a2954; font-size: 20px;">Número de cuenta:</label>
                <asp:Label id="lblCuenta" runat="server" Text="" class="form-control"></asp:Label>
            </div>




            <div class="row">
                <label for="lblCVV" style="color:  #1a2954; font-size: 20px;">CVV:</label>
               <asp:Label id="lblCVV" runat="server" class="form-control">###</asp:Label>
            </div>



            <div class="row">
                <label for="lblSaldo" style="color:  #1a2954; font-size: 20px;">Saldo disponible:</label>
                <asp:Label id="lblSaldo" runat="server" class="form-control">###</asp:Label>
            </div>



            <div class="row mt-2 mb-2">
                <asp:Button ID="btnVerTransacciones" runat="server" Text="Ver Transacciones" CssClass="btn btn-primary" style="background-color:  #1a2954 !important; border-color:  #1a2954 !important;" OnClick="btnVerTransacciones_Click" />

            </div>


        </div>

    </div>



    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>
</asp:Content>
