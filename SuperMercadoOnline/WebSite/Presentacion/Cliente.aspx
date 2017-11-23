<%@ Page Language="C#" MasterPageFile="~/Presentacion/Plantilla1.master" AutoEventWireup="true" CodeFile="~/LogicaPresentacion/Cliente.aspx.cs" Inherits="Presentacion_Cliente" Title="CLIENTE" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style5
        {
            width: 50%;
        }
    .style6
    {
        height: 38px;
            text-align: center;
        }
    .style7
    {
        height: 38px;
            text-align: center;
        }
        .style26
        {
            width: 10%;
            height: 190px;
            text-align: center;
        }
        .style27
        {
            height: 190px;
            text-align: center;
        }
        .style30
        {
            width: 10%;
            height: 202px;
            text-align: center;
        }
        .style31
        {
            height: 202px;
            text-align: center;
        }
        .style32
        {
            width: 10%;
            height: 71px;
            text-align: center;
        }
        .style33
        {
            height: 71px;
            text-align: center;
        }
        .style34
        {
            width: 10%;
            height: 68px;
            text-align: center;
        }
        .style35
        {
            height: 68px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1" border="2">
    <tr>
        <td class="style6" colspan="2">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style6">
            <asp:Button ID="B_ClienteProducto" runat="server" Text="Productos" 
                Height="100%" onclick="B_ClienteProducto_Click" Width="66%" 
                Font-Names="Showcard Gothic" ForeColor="Red" />
        </td>
        <td class="style7">
            <asp:Button ID="B_ClienteCarro" runat="server" Text="Carro" 
                onclick="B_ClienteCarro_Click" Width="51%" Font-Names="Showcard Gothic" 
                ForeColor="Red" Height="100%" />
        </td>
    </tr>
    <tr>
        <td class="style5">
            <asp:Image ID="I_Productos" runat="server" ImageUrl="~/Imagenes/ImagenesWeb/Productos.jpg" 
                Width="330px" style="text-align: center; margin-top: 17px;" 
                Height="203px" />
        </td>
        <td style="text-align: center">
            <asp:Image ID="I_Carro" runat="server" Height="154px" 
                ImageUrl="~/Imagenes/ImagenesWeb/carrito de compras.jpg" Width="292px" 
                style="margin-top: 29px" />
        </td>
    </tr>
    <tr>
        <td class="style34">
            <br />
            <asp:Button ID="B_Facturas" runat="server" Text="FACTURAS PEDIDO" 
                Height="67%" onclick="B_Facturas_Click" Width="66%" 
                Font-Names="Showcard Gothic" ForeColor="Red" />
            <br />
        </td>
        <td class="style35">
            <br />
            <asp:Button ID="B_Contactar" runat="server" Text="Contactar" 
                Height="70%" onclick="B_Contactar_Click" Width="66%" 
                Font-Names="Showcard Gothic" ForeColor="Red" />
            <br />
            <br />
        </td>
    </tr>
    <tr>
        <td class="style26">
            <asp:Image ID="I_Facturas" runat="server" ImageUrl="~/Imagenes/ImagenesWeb/Recibos.jpg" 
                Width="330px" style="text-align: center; margin-top: 17px;" 
                Height="203px" />
        </td>
        <td class="style27">
            <asp:Image ID="I_Contactar" runat="server" ImageUrl="~/Imagenes/ImagenesWeb/contactar.png" 
                Width="330px" style="text-align: center; margin-top: 17px;" 
                Height="203px" />
        </td>
    </tr>
    <tr>
        <td class="style32">
            <asp:Button ID="B_ActualizarDatos" runat="server" Text="Actualizar Datos" 
                Height="58%" onclick="LB_ActualizarDatos_Click" Width="66%" 
                Font-Names="Showcard Gothic" ForeColor="Red" />
        </td>
        <td class="style33">
        </td>
    </tr>
    <tr>
        <td class="style30">
            <asp:Image ID="I_ActualizarDatos" runat="server" ImageUrl="~/Imagenes/ImagenesWeb/actualizarDatos.png" 
                Width="330px" style="text-align: center; margin-top: 17px;" 
                Height="203px" />
        </td>
        <td class="style31">
        </td>
    </tr>
</table>
</asp:Content>

