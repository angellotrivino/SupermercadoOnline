<%@ Page Language="C#" MasterPageFile="~/Presentacion/plantilla1.master" AutoEventWireup="true" CodeFile="~/LogicaPresentacion/Contactenos.aspx.cs" Inherits="Presentacion_contactenos" Title="Contactenos" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 48%;
        }
        .style4
        {
            width: 224px;
            text-align: center;
        }
        .style5
        {
            width: 100%;
        }
        .style6
        {
            width: 62px;
            text-align: center;
        }
        .style8
        {
            width: 69px;
        }
        .style9
        {
            width: 62px;
            height: 93px;
        }
        .style11
        {
            height: 93px;
        }
        .style12
        {
            width: 69px;
            height: 82px;
        }
        .style13
        {
            width: 425px;
            text-align: center;
            height: 82px;
        }
        .style14
        {
            height: 82px;
        }
        .style15
        {
            text-align: left;
        }
        .style16
        {
            width: 69px;
            height: 15px;
        }
        .style18
        {
            height: 15px;
        }
        .style22
        {
            width: 209px;
            text-align: center;
            height: 76px;
        }
        .style23
        {
            width: 30%;
            text-align: left;
        }
        .style24
        {
            height: 76px;
        }
        .style25
        {
            width: 62px;
            height: 75px;
            text-align: center;
        }
        .style26
        {
            width: 62px;
            height: 15px;
        }
        .style27
        {
            height: 23px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
    <table class="style5">
        <tr>
            <td class="style24">
                &nbsp;</td>
            <td class="style23">
                <asp:Button ID="B_Login" runat="server" onclick="B_Login_Click" 
                    style="color: #0000CC; font-weight: 700; background-color: #00FF00" 
                    Text="INICIAR SESSION" Height="37px" Width="187px" />
            </td>
            <td class="style15">
                <asp:Button ID="B_Catalogo" runat="server" onclick="B_Catalogo_Click" 
                    style="font-weight: 700; color: #00FF00; background-color: #0000CC" 
                    Text="CATALOGO" Height="34px" Width="117px" />
            </td>
        </tr>
        <tr>
            <td class="style27" colspan="3">
            </td>
        </tr>
        <tr>
            <td class="style27" bgcolor="Blue" colspan="3">
                    <asp:Label ID="L_TituloMensajeVisitante" runat="server" ForeColor="White" 
                    Text="MENSAJE O QUEJA AL SUPERMERCADO"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style27" colspan="3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style24">
                <asp:Label ID="L_Nombre" runat="server" Text="Nombre:"></asp:Label>
            </td>
            <td class="style23">
    <asp:TextBox ID="TB_Nombre" runat="server" Width="70%" Height="26px" 
                    ValidationGroup="VA" MaxLength="30" ></asp:TextBox>
            
    
                <a href="#">
            
    
                <span>
    
    
                    <asp:RequiredFieldValidator ID="RFV_Nombre" runat="server" 
                    ControlToValidate="TB_Nombre" ErrorMessage="*" ValidationGroup="VA"></asp:RequiredFieldValidator>
                    &nbsp;</span></a>&nbsp; <asp:RegularExpressionValidator ID="REV_letras" 
                    runat="server" ControlToValidate="TB_Nombre" ErrorMessage="Solo letras" 
                    ValidationExpression="^[A-Za-z&quot; &quot;ñÑ]*$" ValidationGroup="RU"></asp:RegularExpressionValidator>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td class="style15">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style25">
                <asp:Label ID="L_EMail" runat="server" Text="Correo:"></asp:Label>
            </td>
            <td class="style22">
    <asp:TextBox ID="Tb_email" runat="server" Width="70%" Height="26px" ValidationGroup="VA" MaxLength="25" 
                    ></asp:TextBox>
                <a href="#">
            
    
            <span>
    
    
                    <asp:RequiredFieldValidator ID="RFV_EMail" runat="server" 
                    ControlToValidate="Tb_email" ErrorMessage="*" ValidationGroup="VA"></asp:RequiredFieldValidator>
                    &nbsp;</span></a> 
                    <asp:RegularExpressionValidator ID="REV_correo" runat="server" 
                        ControlToValidate="Tb_email" ErrorMessage="Correo invalido. Ejemplo: nombre@direccion.co" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                        ValidationGroup="RU"></asp:RegularExpressionValidator>
            </td>
            <td class="style14">
                <br />
                <asp:Label ID="L_pais" runat="server" Text="Pais: Colombia"></asp:Label>
                <br />
                <asp:Label ID="L_ciudad" runat="server" Text="Ciudad: Facatativa"></asp:Label>
                <br />
                <asp:Label ID="L_Telefono" runat="server" Text="Telefono: 1800077549"></asp:Label>
                <br />
               <asp:Label ID="L_mail" runat="server" 
                    Text="  E-mail: supermercadoonline@hotmail.com" Font-Names="Arial"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style26">
                <asp:Label ID="L_Mensaje" runat="server" Text="Mensaje"></asp:Label>
&nbsp;<td class="style23" rowspan="2">
    <asp:TextBox ID="Tb_mensaje" runat="server" Height="169px" Width="336px" 
                    ValidationGroup="VA" MaxLength="200" TextMode="MultiLine"></asp:TextBox>
                <br />
            
    
            <span>
    
    
                <a href="#">
            
    
                    <asp:RequiredFieldValidator ID="RFV_Mensaje" runat="server" 
                    ControlToValidate="Tb_mensaje" ErrorMessage="MENSAJE OBLIGATORIO" 
                    ValidationGroup="VA"></asp:RequiredFieldValidator>
                    &nbsp;</span></td>
            <td class="style18">
            </td>
        </tr>
        <tr>
            <td class="style9">
                <br />
            </td>
            <td class="style11" style="text-align: center"> 
                <asp:Image ID="I_contactar" runat="server" 
                    ImageUrl="~/Imagenes/ImagenesWeb/contactenos.jpg" />
            </td>
        </tr>
        <tr>
            <td class="style6">
                </td>
            <td class="style23">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="#">
            
    
            <span>
    
    
    <asp:Button ID="B_Enviar" runat="server" Text="Enviar" onclick="B_Enviar_Click" 
                    ValidationGroup="VA" style="height: 26px" Height="36px" Width="90px" />
            </span>
    
            </td>
            <td>
            </td>
        </tr>
        <tr>
            <td class="style6">
                </td>
            <td class="style23">
                <br />
            </td>
            <td style="text-align: center">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                </td>
            <td class="style23">
                </td>
            <td>
                </td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
        </tr>
    </table>
      
    <table class="style3">
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <br />
    <br />
</asp:Content>

