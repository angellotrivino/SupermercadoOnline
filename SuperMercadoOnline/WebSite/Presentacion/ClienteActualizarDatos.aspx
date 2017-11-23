<%@ Page Title="Actualizar Datos" Language="C#" MasterPageFile="~/Presentacion/plantilla1.master" AutoEventWireup="true" CodeFile="~/LogicaPresentacion/ClienteActualizarDatos.aspx.cs" Inherits="Presentacion_ClienteActualizarDatos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style12
        {
        width: 38%;
    }
        .auto-style15
    {
        width: 13%;
    }
    .auto-style33
    {
        width: 100%;
        height: 345px;
    }
    .auto-style34
    {
        width: 13%;
        height: 26px;
    }
    .auto-style35
    {
        width: 38%;
        height: 26px;
    }
    .auto-style36
    {
        height: 26px;
    }
    .auto-style40
    {
        width: 14%;
        height: 117px;
    }
    .auto-style43
    {
        width: 38%;
        height: 33px;
    }
    .auto-style45
    {
        width: 13%;
        height: 27px;
    }
    .auto-style46
    {
        width: 38%;
        height: 27px;
    }
    .auto-style47
    {
        height: 27px;
    }
    .auto-style48
    {
        width: 13%;
        height: 32px;
    }
    .auto-style49
    {
        width: 38%;
        height: 32px;
    }
    .auto-style50
    {
        height: 32px;
    }
    .auto-style51
    {
        width: 13%;
        height: 33px;
    }
    .auto-style52
    {
        height: 33px;
    }
    .auto-style53
    {
        width: 14%;
        height: 32px;
    }
    .auto-style54
    {
        width: 14%;
        height: 33px;
    }
    .auto-style55
    {
        width: 14%;
        height: 27px;
    }
        .style22
        {
            width: 634px;
        }
        .style23
        {
            width: 13%;
        }
        .style24
        {
            width: 38%;
        }
        .style25
        {
            width: 14%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <asp:ImageButton ID="IB_Atras" runat="server" Height="41px" 
            ImageUrl="~/Imagenes/ImagenesWeb/atras.png" onclick="IB_Atras_Click" 
            Width="50px" />
        <br />
        <table class="auto-style1">
            <tr>
                <td style="text-align: center; background-color: #0066FF; margin-left: 40px;" 
                    class="style22">
                    <asp:Label ID="L_TituloActualizarDatos" runat="server" ForeColor="White" 
                        Text="ACTUALIZAR DATOS"></asp:Label>
                </td>
            </tr>
        </table>
        <p>
                            <table class="auto-style33" __designer:mapid="6c1">
                                <tr __designer:mapid="6c2">
                                    <td class="auto-style48" __designer:mapid="6c3">
                                        &nbsp;</td>
                                    <td class="auto-style49" __designer:mapid="6c5">
                                        <asp:Button ID="B_MostrarDatos" runat="server" onclick="B_MostrarDatos_Click" 
                                            Text="MOSTRAR DATOS" />
                                    </td>
                                    <td class="auto-style53" __designer:mapid="6c7">
                                        &nbsp;</td>
                                    <td class="auto-style50" __designer:mapid="6c9">
                                        &nbsp;</td>
                                </tr>
                                <tr __designer:mapid="6c2">
                                    <td class="auto-style48" __designer:mapid="6c3">
                                        <asp:Label ID="L_Cedula" runat="server" Text="Numero de cedula:"></asp:Label>
                                    </td>
                                    <td class="auto-style49" __designer:mapid="6c5">
                                        <asp:TextBox ID="TB_cedula" runat="server" Enabled="False" MaxLength="7" 
                                            ValidationGroup="RU" Width="80%"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RFV_Cedula" runat="server" 
                                            ControlToValidate="TB_cedula" ErrorMessage="*" SetFocusOnError="True" 
                                            ValidationGroup="RU"></asp:RequiredFieldValidator>
                                        &nbsp;<asp:RegularExpressionValidator ID="REV_CedulaNumeros" runat="server" 
                                            ControlToValidate="TB_cedula" ErrorMessage="Solo numeros" 
                                            ValidationExpression="^[0-9]*" ValidationGroup="RU"></asp:RegularExpressionValidator>
                                    </td>
                                    <td class="auto-style53" __designer:mapid="6c7">
                                        <asp:Label ID="L_Nombres" runat="server" Text="Nombres:"></asp:Label>
                                    </td>
                                    <td class="auto-style50" __designer:mapid="6c9">
                                        <asp:TextBox ID="TB_nombre" runat="server" MaxLength="20" ValidationGroup="RU" 
                                            Width="80%"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RFV_nombres" runat="server" 
                                            ControlToValidate="TB_nombre" ErrorMessage="*" ValidationGroup="RU"></asp:RequiredFieldValidator>
                                        &nbsp;&nbsp;<asp:RegularExpressionValidator ID="REV_NombresLetras" runat="server" 
                                            ControlToValidate="TB_nombre" ErrorMessage="Solo letras" 
                                            ValidationExpression="^[A-Za-z&quot; &quot;ñÑ]*$" ValidationGroup="RU"></asp:RegularExpressionValidator>
                                    </td>
                                </tr>
                                <tr __designer:mapid="6cd">
                                    <td class="style23" __designer:mapid="6ce">
                                        <asp:Label ID="L_Apellidos" runat="server" Text="Apellidos:"></asp:Label>
                                    </td>
                                    <td class="style24" __designer:mapid="6d0">
                                        <asp:TextBox ID="TB_apellido" runat="server" MaxLength="30" 
                                            ValidationGroup="RU" Width="80%"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RFV_apellidos" runat="server" 
                                            ControlToValidate="TB_apellido" ErrorMessage="*" SetFocusOnError="True" 
                                            ValidationGroup="RU"></asp:RequiredFieldValidator>
                                        &nbsp;
                                        <asp:RegularExpressionValidator ID="REV_ApellidosLetras" runat="server" 
                                            ControlToValidate="TB_apellido" ErrorMessage="Solo letras" 
                                            ValidationExpression="^[A-Za-z&quot; &quot;ñÑ]*$" ValidationGroup="RU"></asp:RegularExpressionValidator>
                                    </td>
                                    <td class="style25" __designer:mapid="6d4">
                                        <asp:Label ID="L_Direccion" runat="server" Text="Direccion de residencia:"></asp:Label>
                                    </td>
                                    <td __designer:mapid="6d6">
                                        <asp:TextBox ID="TB_direccion" runat="server" MaxLength="30" 
                                            ValidationGroup="RU" Width="80%"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RFV_direccion" runat="server" 
                                            ControlToValidate="TB_direccion" ErrorMessage="*" SetFocusOnError="True" 
                                            ValidationGroup="RU"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr __designer:mapid="6d9">
                                    <td class="auto-style48" __designer:mapid="6da">
                                        <asp:Label ID="L_Correo" runat="server" Text="Correo Electronico:"></asp:Label>
                                    </td>
                                    <td class="auto-style49" __designer:mapid="6dc">
                                        <asp:TextBox ID="TB_correo" runat="server" MaxLength="30" ValidationGroup="RU" 
                                            Width="80%"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RFV_correo" runat="server" 
                                            ControlToValidate="TB_correo" ErrorMessage="*" SetFocusOnError="True" 
                                            ValidationGroup="RU"></asp:RequiredFieldValidator>
                                        &nbsp;
                                        <asp:RegularExpressionValidator ID="REV_correo" runat="server" 
                                            ControlToValidate="TB_correo" 
                                            ErrorMessage="Correo invalido. Ejemplo: nombre@direccion.co" 
                                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                                            ValidationGroup="RU"></asp:RegularExpressionValidator>
                                    </td>
                                    <td class="auto-style53" __designer:mapid="6e0">
                                        <asp:Label ID="L_Telefono" runat="server" Text="Telefono:"></asp:Label>
                                    </td>
                                    <td class="auto-style50" __designer:mapid="6e2">
                                        <asp:TextBox ID="TB_telefono" runat="server" MaxLength="20" 
                                            ValidationGroup="RU" Width="50%"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RFV_telefono" runat="server" 
                                            ControlToValidate="TB_telefono" ErrorMessage="*" SetFocusOnError="True" 
                                            ValidationGroup="RU"></asp:RequiredFieldValidator>
                                        &nbsp;
                                        <asp:RegularExpressionValidator ID="REV_TelefonoNumeros" runat="server" 
                                            ControlToValidate="TB_telefono" ErrorMessage="Solo numeros" 
                                            ValidationExpression="^[0-9]*" ValidationGroup="RU"></asp:RegularExpressionValidator>
                                    </td>
                                </tr>
                                <tr __designer:mapid="6e6">
                                    <td class="auto-style15" __designer:mapid="6e7">
                                        <asp:Label ID="L_Contraseña" runat="server" Text="Contraseña Actual:"></asp:Label>
                                    </td>
                                    <td class="auto-style12" __designer:mapid="6e9">
                                        <asp:TextBox ID="TB_contraseñaR1" runat="server" MaxLength="30" 
                                            TextMode="Password" ValidationGroup="RU" Width="80%"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RFV_contraseñaAct" runat="server" 
                                            ControlToValidate="TB_contraseñaR1" ErrorMessage="*" SetFocusOnError="True" 
                                            ValidationGroup="RU"></asp:RequiredFieldValidator>
                                    </td>
                                    <td class="auto-style54" __designer:mapid="6ec">
                                        <asp:Label ID="L_ContraseñaN" runat="server" Text="Contraseña Nueva:"></asp:Label>
                                    </td>
                                    <td class="auto-style52" __designer:mapid="6ee">
                                        <asp:TextBox ID="TB_contraseñaR2" runat="server" MaxLength="30" 
                                            TextMode="Password" ValidationGroup="RU" Width="80%"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr __designer:mapid="6f1">
                                    <td class="auto-style51" __designer:mapid="6f2">
                                        <asp:Label ID="L_ContraseñaNConf" runat="server" 
                                            Text="Confirmar Contraseña Nueva:"></asp:Label>
                                    </td>
                                    <td class="auto-style43" __designer:mapid="6f4">
                                        <asp:TextBox ID="TB_contraseñaR3" runat="server" MaxLength="30" 
                                            TextMode="Password" ValidationGroup="RU" Width="80%"></asp:TextBox>
                                    </td>
                                    <td class="auto-style54" __designer:mapid="6f7">
                                        <asp:Label ID="L_Imagen" runat="server" Text="Imagen:"></asp:Label>
                                    </td>
                                    <td class="auto-style52" __designer:mapid="6f9">
                                        <asp:FileUpload ID="FU_Imagen" runat="server" />
                                    </td>
                                </tr>
                                <tr __designer:mapid="6fc">
                                    <td class="auto-style34" __designer:mapid="6fd">
                                        <asp:Label ID="L_Login" runat="server" Text="Usuario(Login):"></asp:Label>
                                    </td>
                                    <td class="auto-style35" __designer:mapid="6ff">
                                        <asp:TextBox ID="TB_usuarioR1" runat="server" MaxLength="30" 
                                            ValidationGroup="RU" Width="80%"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RFV_usuarioR1" runat="server" 
                                            ControlToValidate="TB_usuarioR1" ErrorMessage="*" SetFocusOnError="True" 
                                            ValidationGroup="RU"></asp:RequiredFieldValidator>
                                    </td>
                                    <td class="auto-style40" rowspan="5" __designer:mapid="702">
                                        <asp:Image ID="I_Cliente" runat="server" Height="100px" Width="100px" 
                                            ImageUrl="~/Imagenes/ImagenesWeb/imagen_vacia.png" />
                                    </td>
                                    <td class="auto-style36" __designer:mapid="704">
                                        &nbsp;
                                    </td>
                                </tr>
                                <tr __designer:mapid="705">
                                    <td class="auto-style34" __designer:mapid="706">
                                        &nbsp;
                                    </td>
                                    <td class="auto-style35" __designer:mapid="707">
                                        &nbsp;
                                    </td>
                                    <td class="auto-style36" __designer:mapid="708">
                                        &nbsp;
                                    </td>
                                </tr>
                            </table>
        <p>
            
        <table class="auto-style33">
            <tr>
                <td class="auto-style34">&nbsp;</td>
                <td class="auto-style35">
                            <asp:Label ID="L_ErrorR" runat="server" ForeColor="Red"></asp:Label>
                            <br __designer:mapid="200" />
                            </td>
                <td class="auto-style36">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style34">
                    &nbsp;</td>
                <td class="auto-style35">
                            <asp:Button ID="B_ActualizarDatos" runat="server" 
                                OnClick="B_ActualizarDatos_Click" Text="Actualizar Datos" 
                                ValidationGroup="RU" />
                        </td>
                <td class="auto-style36">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style45">&nbsp;</td>
                <td class="auto-style46">&nbsp;</td>
                <td class="auto-style47">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style45">&nbsp;</td>
                <td class="auto-style46">&nbsp;</td>
                <td class="auto-style55">&nbsp;</td>
                <td class="auto-style47">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style45">&nbsp;</td>
                <td class="auto-style46">
                    &nbsp;</td>
                <td class="auto-style55">&nbsp;</td>
                <td class="auto-style47">&nbsp;</td>
            </tr>
        </table>
    </p>
    <p>
    </p>
</asp:Content>

