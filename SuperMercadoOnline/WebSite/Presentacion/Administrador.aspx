<%@ Page Language="C#" MasterPageFile="~/Presentacion/Plantilla1.master" AutoEventWireup="true" CodeFile="~/LogicaPresentacion/Administrador.aspx.cs" Inherits="Presentacion_Administrador" Title="ADMINISTRADOR" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style5
        {
            width: 25%;
        }
        .style8
        {
            width: 100%;
            text-align: center;
        }
    .style10
    {
        width: 100%;
        height: 63px;
    }
    .style11
    {
        width: 25%;
        height: 153px;
            text-align: center;
        }
    .style12
    {
        width: 232px;
        height: 153px;
    }
        .style13
        {
            width: 219px;
            height: 75px;
        }
        .style14
        {
            width: 219px;
            height: 75px;
            text-align: center;
        }
        .style18
        {
            width: 249px;
            height: 75px;
        }
        .style19
        {
            width: 33%;
            height: 75px;
            text-align: center;
        }
        .style20
        {
            width: 216px;
            height: 75px;
        }
        .style21
        {
            width: 216px;
            height: 75px;
            text-align: center;
        }
        .style22
        {
            width: 25%;
            height: 75px;
        }
        .style23
        {
            width: 341px;
            height: 75px;
            text-align: center;
        }
        .style24
        {
            width: 33%;
            height: 76px;
        }
        .style25
        {
            width: 33%;
            height: 76px;
            text-align: center;
        }
        .style26
        {
            width: 249px;
            height: 75px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1" border="2">
        <tr>
            <td class="style22">
                <asp:Button ID="B_InsertarProductos" runat="server" Text="Insertar Productos y eliminar" 
                    onclick="B_InsertarProductos_Click" Font-Names="Showcard Gothic" 
                    ForeColor="Red" Height="42px" Width="239px" />
            </td>
            <td class="style24">
                <asp:Button ID="B_InsertarProveedores" runat="server" Text="Insertar, modificar, eliminar proveedor" 
                    onclick="B_InsertarProveedores_Click" Font-Names="Showcard Gothic" 
                    ForeColor="Red" Width="102%" Height="44px" />
            </td>
            <td class="style18">
                <asp:Button ID="B_AdquirirProducto" runat="server" Text="Adquirir Producto Proveedor" 
                    onclick="B_AdquirirProducto_Click" Font-Names="Showcard Gothic" 
                    ForeColor="Red" Width="104%" Height="47%" />
            </td>
        </tr>
        <tr>
            <td class="style22">
                <asp:Image ID="I_ProductoNuevo" runat="server" ImageUrl="~/Imagenes/ImagenesWeb/Producto_Nuevo.jpg" 
                    Width="188px" Height="134px" style="text-align: center" />
                </td>
            <td class="style24">
                <asp:Image ID="I_Proveedor" runat="server" Height="125px" 
                    ImageUrl="~/Imagenes/ImagenesWeb/proveedor_servicios.jpg" Width="224px" />
                </td>
            <td class="style18">
                <asp:Image ID="I_AdquirirProducto" runat="server" Height="124px" 
                    ImageUrl="~/Imagenes/ImagenesWeb/icon-desarrollo-proveedores.png" 
                    Width="166px" />
                </td>
        </tr>
        <tr>
            <td class="style23">
                <asp:Button ID="B_GenerarReportes" runat="server" Text="Generar Reportes" 
                    onclick="B_GenerarReportes_Click" Font-Names="Showcard Gothic" 
                    ForeColor="Red" Width="133px" />
            </td>
            <td class="style25">
                <asp:Button ID="B_Cajeros" runat="server" Text="Insertar, modificar, eliminar cajero" 
                    onclick="B_Cajeros_Click" Font-Names="Showcard Gothic" 
                    ForeColor="Red" Width="293px" />
            </td>
            <td class="style26">
            <asp:Button ID="B_ActualizarDatos" runat="server" Text="Actualizar Datos" 
                Height="50%" onclick="B_ActualizarDatos_Click" Width="100%" 
                Font-Names="Showcard Gothic" ForeColor="Red" />
            </td>
        </tr>
        <tr>
            <td class="style23">
                <asp:Image ID="I_Reportes" runat="server" Height="124px" 
                    ImageUrl="~/Imagenes/ImagenesWeb/report1.jpg" Width="206px" />
            </td>
            <td class="style25">
                <asp:Image ID="I_Cajero" runat="server" Height="124px" 
                    ImageUrl="~/Imagenes/ImagenesWeb/cajero.jpg" Width="171px" />
            </td>
            <td class="style26">
            <asp:Image ID="I_ActualizarDatos" runat="server" ImageUrl="~/Imagenes/ImagenesWeb/actualizarDatos.png" 
                Width="212px" style="text-align: center; margin-top: 17px;" 
                Height="142px" />
            </td>
        </tr>
        <tr>
            <td class="style23">
                <asp:Button ID="B_MensajesClientes" runat="server" Text="MENSAJES" 
                    onclick="B_MensajesClientes_Click" Font-Names="Showcard Gothic" 
                    ForeColor="Red" Width="133px" Height="33px" />
            </td>
            <td class="style25">
                <asp:Button ID="B_idioma" runat="server" Text="CREAR Y EDITAR IDIOMA" 
                    onclick="B_MensajesClientes_Click" Font-Names="Showcard Gothic" 
                    ForeColor="Red" Width="255px" Height="33px" 
                    PostBackUrl="~/Presentacion/nuevo_idioma.aspx" />
            </td>
            <td class="style26">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style23">
                <asp:Image ID="I_Mensajes" runat="server" Height="200px" 
                    ImageUrl="~/Imagenes/ImagenesWeb/contactenos.jpg" Width="206px" />
            </td>
            <td class="style25">
                <asp:Image ID="I_Mensajes0" runat="server" Height="200px" 
                    ImageUrl="~/Imagenes/ImagenesWeb/b_idiomanuevo.jpg" Width="206px" />
            </td>
            <td class="style26">
                &nbsp;</td>
        </tr>
        </table>
    <br />
</asp:Content>

