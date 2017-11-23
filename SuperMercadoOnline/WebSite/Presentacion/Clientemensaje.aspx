<%@ Page Language="C#" MasterPageFile="~/Presentacion/plantilla1.master" AutoEventWireup="true" CodeFile="~/LogicaPresentacion/Clientemensaje.aspx.cs" Inherits="Presentacion_Clientemensaje" Title="Contactenos" %>



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
            width: 69px;
            text-align: center;
        }
        .style7
        {
            width: 425px;
            text-align: center;
        }
        .style8
        {
            width: 69px;
        }
        .style9
        {
            width: 69px;
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
        .style17
        {
            width: 425px;
            text-align: center;
        }
        .style18
        {
            height: 15px;
        }
        .style22
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ImageButton ID="IB_Atras" runat="server" Height="47px" 
        ImageUrl="~/Imagenes/ImagenesWeb/atras.png" onclick="IB_Atras_Click" 
        Width="52px" />
    <br />
    <table class="style22">
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="Blue" style="text-align: center">
                <asp:Label ID="L_TituloMensaje" runat="server" ForeColor="White" 
                    Text="INGERESE EL MENSAJE O QUEJA QUE TENGA!"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <table class="style5">
        <tr>
            <td class="style8">
                <asp:Label ID="L_nombre" runat="server" Text="Nombre:" Font-Names="Jokerman"></asp:Label>
                </td>
            <td class="style7">
    <asp:TextBox ID="Tb_usuario" runat="server" Width="323px" Height="26px" 
                    ValidationGroup="VA" Font-Names="Jokerman" MaxLength="29"></asp:TextBox>
            
    
                <span>                
            
    
                    <asp:RequiredFieldValidator ID="RFV_usuario" runat="server" 
                    ControlToValidate="Tb_usuario" ErrorMessage="*" ValidationGroup="VA" Font-Names="Jokerman"></asp:RequiredFieldValidator>
                    &nbsp;<asp:RegularExpressionValidator ID="REV_letras" 
                    runat="server" ControlToValidate="Tb_usuario" ErrorMessage="Solo letras" 
                    ValidationExpression="^[A-Za-z&quot; &quot;ñÑ]*$" ValidationGroup="RU"></asp:RegularExpressionValidator>
                </span></td>
            <td class="style15">
            <asp:Label ID="L_contactenos" runat="server" Text="Contactenos" Font-Names="Jokerman"></asp:Label>
                </td>
        </tr>
        <tr>
            <td class="style12">
                 <asp:Label ID="L_email" runat="server" Text="E-mail:" Font-Names="Jokerman"></asp:Label></td>
            <td class="style13">
    <asp:TextBox ID="Tb_email" runat="server" Width="329px" Height="26px" ValidationGroup="VA" MaxLength="29" 
                    ></asp:TextBox>
                       
    
            
    
    
                    <asp:RequiredFieldValidator ID="RFV_email" runat="server" 
                    ControlToValidate="Tb_email" ErrorMessage="*" ValidationGroup="VA"></asp:RequiredFieldValidator>
                    &nbsp;
            
    
         
    
    
                    <asp:RegularExpressionValidator ID="REV_correo" runat="server" 
                        ControlToValidate="Tb_email" ErrorMessage="Correo invalido. Ejemplo: nombre@direccion.co" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                        ValidationGroup="RU"></asp:RegularExpressionValidator>
            
            </td>
            <td class="style14" >
             <asp:Label ID="L_pais" runat="server" Text="Pais: Colombia" Font-Names="Jokerman"></asp:Label><br />
             <asp:Label ID="L_ciudad" runat="server" Text=" Ciudad: Facatativa" Font-Names="Jokerman"></asp:Label><br />
              <asp:Label ID="L_telefono" runat="server" Text="  Telefono: 1800077549" Font-Names="Jokerman"></asp:Label><br />
               <asp:Label ID="L_mail" runat="server" Text="  E-mail: supermercadoonline@hotmail.com" Font-Names="Jokerman"></asp:Label><br />
                
            </td>
        </tr>
        <tr>
            <td class="style16">
                 <asp:Label ID="L_Mensaje" runat="server" Text="Mensaje:" Font-Names="Jokerman"></asp:Label> </td>
            <td class="style17" rowspan="2">
    <asp:TextBox ID="Tb_mensaje" runat="server" Height="169px" Width="336px" 
                    ValidationGroup="VA" TextMode="MultiLine"></asp:TextBox>
                
            
    
                <span>
    
    
                    &nbsp;<a href="#"><asp:RequiredFieldValidator ID="RFV_Mensaje" runat="server" 
                    ControlToValidate="Tb_mensaje" ErrorMessage="MENSAJE OBLIGATORIO" 
                    ValidationGroup="VA"></asp:RequiredFieldValidator>
                    </span></td>
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
            <td class="style7">
               
            
    
            <span>
    
    
    <asp:Button ID="B_Enviar" runat="server" Text="Enviar" onclick="B_enviar_Click" 
                    ValidationGroup="VA" Font-Names="Jokerman" BackColor="#CCCCCC" 
                    BorderColor="Black" BorderStyle="Double" BorderWidth="5px" Width="125px" 
                    style="height: 38px" />
            </span>
    
            </td>
            <td>
            </td>
        </tr>
        <tr>
            <td class="style6">
                </td>
            <td class="style7">
                <br />
            </td>
            <td style="text-align: center">
                <br />
               
                </td>
        </tr>
        <tr>
            <td class="style6">
                </td>
            <td class="style7">
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

