<%@ Page Language="C#" MasterPageFile="~/Presentacion/Plantilla1.master" AutoEventWireup="true" CodeFile="~/LogicaPresentacion/Cajero.aspx.cs" Inherits="Presentacion_Cajero" Title="Menu Cajero" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style22
        {
            width: 50%;
            text-align: center;
        }
        .style23
        {
            width: 50%;
            text-align: center;
            height: 44px;
        }
        .style24
        {
            height: 44px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style16">
        <tr>
            <td class="style23">
            <asp:Button ID="B_CajeroConsulta" runat="server" Text="Consultar Pedidos" 
                Height="100%" onclick="B_CajeroConsulta_Click" Width="66%" 
                Font-Names="Showcard Gothic" ForeColor="Red" />
            </td>
            <td class="style24">
            <asp:Button ID="B_ActualizarDatos" runat="server" Text="Actualizar Datos" 
                Height="105%" onclick="B_ActualizarDatos_Click" Width="66%" 
                Font-Names="Showcard Gothic" ForeColor="Red" />
            </td>
        </tr>
        <tr>
            <td class="style22">
            <asp:Image ID="I_Pedido" runat="server" ImageUrl="~/Imagenes/ImagenesWeb/consulta_pedido.png" 
                Width="70%" style="text-align: center; margin-top: 17px;" 
                Height="50%" />
            </td>
            <td style="text-align: center">
            <asp:Image ID="I_ActualizarDatos" runat="server" ImageUrl="~/Imagenes/ImagenesWeb/actualizarDatos.png" 
                Width="330px" style="text-align: center; margin-top: 17px;" 
                Height="203px" />
            </td>
        </tr>
        <tr>
            <td class="style22">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style22">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

