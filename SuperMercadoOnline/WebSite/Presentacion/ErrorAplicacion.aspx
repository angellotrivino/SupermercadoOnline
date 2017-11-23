<%@ Page Language="C#" AutoEventWireup="true" CodeFile="~/LogicaPresentacion/ErrorAplicacion.aspx.cs" Inherits="Presentacion_ErrorAplicacion" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Pagina fuera de servicio</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            height: 424px;
            text-align: center;
        }
        .style3
        {
            height: 424px;
            text-align: center;
            width: 15%;
        }
        .style4
        {
            height: 100%;
            text-align: center;
            width: 60%;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <table class="style1">
        <tr>
            <td colspan="3" style="text-align: center">
                <asp:Image ID="I_paginafueraS" runat="server" 
                    ImageUrl="~/Imagenes/ImagenesWeb/pagina fuera de servicio.png" />
            </td>
        </tr>
        <tr>
            <td class="style3">
            </td>
            <td class="style4">
                <asp:Image ID="I_ErrorAplicacion" runat="server" Height="100%" 
                    ImageUrl="~/Imagenes/ImagenesWeb/erroraplicacion2.jpg" Width="100%" />
            </td>
            <td class="style2">
            </td>
        </tr>
        <tr>
            <td colspan="3" style="text-align: center">
                <asp:Image ID="I_VuelvaPronto" runat="server" 
                    ImageUrl="~/Imagenes/ImagenesWeb/vuelva pronto.png" />
            </td>
        </tr>
        <tr>
            <td colspan="3">
                &nbsp;</td>
        </tr>
    </table>
    </form>
    </body>
</html>
