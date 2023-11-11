<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="anfitriontransacciones.aspx.cs" Inherits="MiBanco.pages.anfitriontransacciones" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <div class="d-flex align-items-center justify-content-center" style="min-height: 20rem;">
        
            <div class="col-lg-6 col-md-12 col-sm-12">
                <h1 style="color: blue; margin-bottom: 5px;">Sus transacciones</h1>
                <div class="row">
                    <div class="table-responsive">
                        <table class="table">
                            <thead class="table-dark table-bordered" style="background-color: blue;">
                                <tr>
                                    <th scope="col"># Transacción</th>
                                    <th scope="col">Huésped</th>
                                    <th scope="col">Fecha</th>
                                    <th scope="col">Monto</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th scope="row">1</th>
                                    <td>Mark</td>
                                    <td>Otto</td>
                                    <td>@mdo</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-5 col-md-12 col-sm-12">
                    <button class="btn btn-primary" style="background-color: blue;">Regresar</button>
                </div>
                </div>
            </div> 
    </div>
</asp:Content>
