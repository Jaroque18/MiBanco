<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="anfitriontransacciones.aspx.cs" Inherits="MiBanco.pages.anfitriontransacciones" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <div class="d-flex align-items-center justify-content-center" style="min-height: 20rem;">

        <div class="col-lg-6 col-md-12 col-sm-12">
            <h1 style="color: #f58809; margin-bottom: 5px;">Sus transacciones</h1>
            <div class="row">
                <div class="table-responsive">
                    <table class="table">
                        <thead class="table-dark table-bordered" style="background-color: blue;">
                            <tr>
                                <th scope="col"># Transacción</th>
                                <th scope="col">Huésped / Cuenta</th>
                                <th scope="col">Fecha</th>
                                <th scope="col">Monto</th>
                            </tr>
                        </thead>
                        <tbody>
                            <asp:Repeater ID="rptDatosUsuarios" runat="server">
                                <ItemTemplate>
                                    <!-- Agrega esta línea para iniciar una nueva fila por cada elemento -->
                                    <tr>
                                        <td><%# Eval("IdTransaccion") %></td>
                                        <td><%# Eval("Huesped") %></td>
                                        <td><%# Eval("Fechar") %></td>
                                        <td><%# Eval("Total") %></td>
                                    </tr>
                                    <!-- Cierra la fila aquí -->
                                </ItemTemplate>
                            </asp:Repeater>
                        </tbody>
                    </table>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-5 col-md-12 col-sm-12">
                     <asp:Button ID="btnVerTransacciones" runat="server" style="background-color: #1a2954; border-color: #1a2954;" Text="Regresar" CssClass="btn btn-primary" OnClick="btnRegresar_Click" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
