<%@ Page Title="Loggin" Language="C#" MasterPageFile="~/Presentacion/plantilla1.master" AutoEventWireup="true" CodeFile="~/LogicaPresentacion/Login.aspx.cs" Inherits="Presentacion_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style18
    {
        width: 100%;
        height: 468px;
    }
    .auto-style26
    {
    	width: 100%;
        height: 100%;
    }
        .auto-style13
        {
            width: 2%;
        height: 469px;
    }
        .style17
        {
        width: 243px;
        height: 28px;
    }
    .auto-style31
    {
        height: 28px;
    }
        .auto-style24
    {
    	width: 100%;
        height: 190px;
    }
    .style22
    {
        width: 12%;
        height: 27px;
    }
    .style23
    {
        height: 27px;
        text-align: center;
    }
    .style24
    {
        width: 243px;
        height: 27px;
    }
    .style25
    {
        height: 27px;
    }
    .style26
    {
        height: 22px;
        text-align: center;
    }
    .style27
    {
        width: 15%;
        height: 22px;
    }
    .style28
    {
        width: 100%;
        height: 22px;
    }
    .style29
    {
        height: 15px;
        text-align: center;
    }
    .style30
    {
        width: 15%;
        height: 15px;
    }
    .style31
    {
        width: 100%;
        height: 15px;
    }
    .style32
    {
        height: 24px;
        text-align: center;
    }
    .style34
    {
        width: 100%;
        height: 24px;
    }
    .style35
    {
        width: 243px;
    }
    .style36
    {
        width: 243px;
        height: 15px;
    }
    .style37
    {
        width: 243px;
        height: 24px;
    }
    .style38
    {
        width: 243px;
        height: 22px;
    }
        .style39
        {
            width: 33%;
        }
        .style40
        {
            width: 33%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <table class="style16">
            <tr>
                <td class="style40">
        <asp:Button ID="B_contactenos" runat="server" Height="34px" onclick="B_contactenos_Click" 
            style="font-weight: 700; color: #0000FF; background-color: #00FF00" 
            Text="CONTACTENOS" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                <td class="style39">
                    <asp:Button ID="B_ManualUsuario" runat="server" BackColor="White" 
                        ForeColor="Red" Height="34px" onclick="B_ManualUsuario_Click" 
                        style="margin-top: 0px" Text="MANUAL USUARIO" Width="194px" />
                </td>
                <td>
                    <asp:LinkButton ID="LB_Catalogo" runat="server" onclick="LB_Catalogo_Click" 
            Font-Size="X-Large">CATALOGO</asp:LinkButton>
                </td>
            </tr>
        </table>
        <br />
        <table class="auto-style18">
            <tr>
                <td colspan="2" style="color: #3366FF; background-color: #0099FF; text-align: center;" class="auto-style26">
                    <asp:Label ID="L_0" runat="server" ForeColor="White" Text="INICIAR SESION"></asp:Label>
                </td>
                <td class="auto-style13" rowspan="17">
                    &nbsp;</td>
                <td colspan="2" style="text-align: center; background-color: #0099FF" class="auto-style26">
                    <asp:Label ID="L_1" runat="server" ForeColor="White" Text="REGISTRASE AHORA!"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2" class="auto-style26">
                    &nbsp;</td>
                <td colspan="2" class="auto-style26">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style12">
                    <asp:Label ID="L_Usuario" runat="server" Text="Usuario:"></asp:Label>
                </td>
                <td class="style14">
                    <asp:TextBox ID="TB_usuario" runat="server" MaxLength="30" Width="73%" 
                        ValidationGroup="IS"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RFV_usuario" runat="server" ControlToValidate="TB_usuario" ErrorMessage="*" ValidationGroup="IS"></asp:RequiredFieldValidator>
                    &nbsp;</td>
                <td class="style35">
                    <asp:Label ID="L_Nombres" runat="server" Text="Nombres:"></asp:Label>
                </td>
                <td class="auto-style26">
                    <asp:TextBox ID="TB_nombre" runat="server" MaxLength="20" Width="50%" ValidationGroup="RU"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RFV_nombre" runat="server" ControlToValidate="TB_nombre" ErrorMessage="*" ValidationGroup="RU"></asp:RequiredFieldValidator>
                    &nbsp;&nbsp;<asp:RegularExpressionValidator ID="REV_letrasNombre" 
                        runat="server" ControlToValidate="TB_nombre" ErrorMessage="Solo letras" 
                        ValidationExpression="^[A-Za-z&quot; &quot;ñÑ]*$" ValidationGroup="RU"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style12">
                    <asp:Label ID="L_ContraseñaLogin" runat="server" Text="Contraseña:"></asp:Label>
                </td>
                <td class="style14">
                    <asp:TextBox ID="TB_contraseña" runat="server" MaxLength="30" 
                        TextMode="Password" Width="73%" ValidationGroup="IS"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RFV_contraseñaLogin" runat="server" 
                        ControlToValidate="TB_contraseña" ErrorMessage="*" ValidationGroup="IS"></asp:RequiredFieldValidator>
                </td>
                <td class="style35">
                    <asp:Label ID="L_Apellidos" runat="server" Text="Apellidos:"></asp:Label>
                </td>
                <td class="auto-style26">
                    <asp:TextBox ID="TB_apellido" runat="server" MaxLength="30" ValidationGroup="RU" Width="50%"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RFV_apellido" runat="server" ControlToValidate="TB_apellido" ErrorMessage="*" SetFocusOnError="True" ValidationGroup="RU"></asp:RequiredFieldValidator>
                    &nbsp;
                    <asp:RegularExpressionValidator ID="REV_letrasApellidos" runat="server" 
                        ControlToValidate="TB_apellido" ErrorMessage="Solo letras" 
                        ValidationExpression="^[A-Za-z&quot; &quot;ñÑ]*$" ValidationGroup="RU"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style12">
                    &nbsp;</td>
                <td class="style14">
                    <asp:Button ID="B_inicio_sesion" runat="server" OnClick="B_LoginSesion_Click" Text="Inicio de sesión" ValidationGroup="IS" />
                </td>
                <td class="style35">
                    <asp:Label ID="L_Cedula" runat="server" Text="Numero de cedula:"></asp:Label>
                </td>
                <td class="auto-style26">
                    <asp:TextBox ID="TB_cedula" runat="server" MaxLength="7" ValidationGroup="RU" 
                        Width="50%"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RFV_cedula" runat="server" ControlToValidate="TB_cedula" ErrorMessage="*" SetFocusOnError="True" ValidationGroup="RU"></asp:RequiredFieldValidator>
                    &nbsp;
                    <asp:RegularExpressionValidator ID="REV_NumerosCedula" runat="server" 
                        ControlToValidate="TB_cedula" ErrorMessage="Solo numeros" 
                        ValidationExpression="^[0-9]*" ValidationGroup="RU"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style29">
                    </td>
                <td class="style30">
                    &nbsp;</td>
                <td class="style36">
                    <asp:Label ID="L_Direccion" runat="server" Text="Direccion de residencia:"></asp:Label>
                </td>
                <td class="style31">
                    <asp:TextBox ID="TB_direccion" runat="server" MaxLength="30" ValidationGroup="RU" Width="50%"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RFV_direccion" runat="server" ControlToValidate="TB_direccion" ErrorMessage="*" SetFocusOnError="True" ValidationGroup="RU"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style32" colspan="2">
                    <asp:LinkButton ID="LB_ContraseñaOlvido" runat="server" ForeColor="Red" 
                        onclick="LB_ContraseñaOlvido_Click">¿Olvido Contraseña?</asp:LinkButton>
                </td>
                <td class="style37">
                    <asp:Label ID="L_Correo" runat="server" Text="Correo Electronico:"></asp:Label>
                </td>
                <td class="style34">
                    <asp:TextBox ID="TB_correo" runat="server" MaxLength="30" ValidationGroup="RU" Width="50%"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RFV_correo" runat="server" ControlToValidate="TB_correo" ErrorMessage="*" SetFocusOnError="True" ValidationGroup="RU"></asp:RequiredFieldValidator>
                    &nbsp;
                    <asp:RegularExpressionValidator ID="REV_correo" runat="server" 
                        ControlToValidate="TB_correo" ErrorMessage="Correo invalido. Ejemplo: nombre@direccion.co" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                        ValidationGroup="RU"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style26">
                    </td>
                <td class="style27">
                    &nbsp;</td>
                <td class="style38">
                    <asp:Label ID="L_etiqueta7" runat="server" Text="Telefono:"></asp:Label>
                </td>
                <td class="style28">
                    <asp:TextBox ID="TB_telefono" runat="server" MaxLength="10" ValidationGroup="RU" Width="50%"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RFV_telefono" runat="server" ControlToValidate="TB_telefono" ErrorMessage="*" SetFocusOnError="True" ValidationGroup="RU"></asp:RequiredFieldValidator>
                    &nbsp;
                    <asp:RegularExpressionValidator ID="REV_Numeros1" runat="server" ControlToValidate="TB_telefono" ErrorMessage="Solo numeros" ValidationExpression="^[0-9]*" ValidationGroup="RU"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style22">
                    <asp:Label ID="L_idioma" runat="server" Text="Idioma:"></asp:Label>
                </td>
                <td class="style23">
                    &nbsp; 
                    <asp:DropDownList ID="ddl_idioma" runat="server" DataSourceID="ODS_idioma" 
                        DataTextField="nombre" DataValueField="id_idioma" AutoPostBack="True" 
                        onselectedindexchanged="ddl_idioma_SelectedIndexChanged">
                    </asp:DropDownList>
                    <asp:ObjectDataSource ID="ODS_idioma" runat="server" 
                        SelectMethod="llenarDDLIdioma" TypeName="LogicaC.Logica_idiomaControl">
                    </asp:ObjectDataSource>
                </td>
                <td class="style24">
                    <asp:Label ID="L_UsuarioIng" runat="server" Text="Usuario(Login):"></asp:Label>
                </td>
                <td class="style25">
                    <asp:TextBox ID="TB_usuarioR1" runat="server" MaxLength="30" ValidationGroup="RU" Width="50%"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RFV_usuarioR1" runat="server" ControlToValidate="TB_usuarioR1" ErrorMessage="*" SetFocusOnError="True" ValidationGroup="RU"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2" rowspan="7" class="auto-style24">
                    &nbsp;</td>
                <td class="style17">
                    <asp:Label ID="L_ContraseñaIng" runat="server" Text="Contraseña:"></asp:Label>
                </td>
                <td class="auto-style31">
                    <asp:TextBox ID="TB_contraseñaR1" runat="server" MaxLength="30" TextMode="Password" ValidationGroup="RU" Width="50%"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RFV_contraseñaIngNue" runat="server" 
                        ControlToValidate="TB_contraseñaR1" ErrorMessage="*" SetFocusOnError="True" 
                        ValidationGroup="RU"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style17">
                    <asp:Label ID="L_ContraseñaConfIngNue" runat="server" 
                        Text="Confirmar Contraseña:"></asp:Label>
                </td>
                <td class="auto-style31">
                    <asp:TextBox ID="TB_contraseñaR2" runat="server" MaxLength="30" TextMode="Password" ValidationGroup="RU" Width="50%"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RFV_contraseñaConfIngNue" runat="server" 
                        ControlToValidate="TB_contraseñaR2" ErrorMessage="*" SetFocusOnError="True" 
                        ValidationGroup="RU"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style17">
                    <asp:Label ID="L_Imagen" runat="server" Text="Imagen:"></asp:Label>
                </td>
                <td class="auto-style31">
                    <asp:FileUpload ID="FU_Imagen" runat="server" />
                    <asp:RequiredFieldValidator ID="RFV_FileUpload" runat="server" ControlToValidate="FU_Imagen" ErrorMessage="*" SetFocusOnError="True" ValidationGroup="RU"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style17">
                    &nbsp;</td>
                <td class="auto-style31">
                    <asp:Label ID="L_ErrorR" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style17">
                    &nbsp;</td>
                <td class="auto-style31">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style17">
                    &nbsp;</td>
                <td class="auto-style31">
                    <asp:Button ID="B_CrearCuenta" runat="server" OnClick="B_CrearCuenta_Click" Text="Crear Cuenta" ValidationGroup="RU" />
                </td>
            </tr>
            <tr>
                <td class="style17">
                    &nbsp;</td>
                <td class="auto-style31">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style13">
                    &nbsp;</td>
                <td class="style15">
                    &nbsp;</td>
                <td class="style17">
                    &nbsp;</td>
                <td class="auto-style31">
                    &nbsp;</td>
            </tr>
        </table>
    </p>
    <p>
    </p>
</asp:Content>

