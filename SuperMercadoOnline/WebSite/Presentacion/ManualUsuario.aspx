<%@ Page Language="C#" MasterPageFile="~/Presentacion/Plantilla1.master" AutoEventWireup="true" CodeFile="~/LogicaPresentacion/ManualUsuario.aspx.cs" Inherits="Presentacion_ManualUsuario" Title="Manual de usuario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style22
        {
            text-align: justify;
        }
        .style23
        {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <table class="style16">
        <tr>
            <td style="text-align: left">
    <asp:ImageButton ID="IB_AtrasPrin" runat="server" Height="47px" 
        ImageUrl="~/Imagenes/ImagenesWeb/atras.png" onclick="IB_Atras_Click" 
        Width="52px" />
            </td>
        </tr>
        <tr>
            <td style="text-align: center">
                <asp:Label ID="L_ManualUsuario" runat="server" Font-Bold="True" 
                    Font-Italic="True" Font-Size="X-Large" ForeColor="Red" Text="MANUAL DE USUARIO"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style23">
                </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="L_Catalogo" runat="server" Font-Bold="True" Font-Size="Large" 
                    ForeColor="#3333FF" Text="CATALOGO"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Image ID="I_catalogo" runat="server" Height="222px" 
                    ImageUrl="~/Imagenes/ImagenesWeb/catalogo_manual_usuario.png" 
                    Width="606px" style="margin-bottom: 107px" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <p class="style22">
                    <span style="font-size:12.0pt;mso-bidi-font-size:11.0pt;font-family:&quot;Arial&quot;,sans-serif">
                    <asp:Label ID="L_TextoCatalogo" runat="server" 
                        Text="En el catálogo general se encuentra los productos que están en venta, puede buscar un producto en especial o dejar un comentario o mensaje, dándole clic en el botón contáctenos, o iniciar sesión si tiene una cuenta existente."></asp:Label>
                    <o:p></o:p></span></p>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="L_InicioSesion" runat="server" Font-Bold="True" Font-Size="Large" 
                    ForeColor="#3333FF" Text="INICIO DE SESION"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Image ID="I_Login" runat="server" Height="277px" 
                    ImageUrl="~/Imagenes/ImagenesWeb/login_manual_usuario.png" Width="638px" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <p class="MsoNormal">
                    <b style="mso-bidi-font-weight:normal">
                    <span style="font-size:12.0pt;mso-bidi-font-size:
11.0pt;font-family:&quot;Arial&quot;,sans-serif"><o:p>&nbsp;<asp:Label ID="L_InicioSesionSub" 
                        runat="server" BackColor="Blue" ForeColor="White" Text="INICIO DE SESION"></asp:Label>
                    </o:p></span></b></p>
                <p class="MsoNormal">
                    <span style="font-size:12.0pt;mso-bidi-font-size:11.0pt;font-family:&quot;Arial&quot;,sans-serif">
                    <asp:Label ID="L_TextoInicioSesion" runat="server" 
                        Text="Si el visitante se encuentra registrado actualmente, puede acceder con el usuario y la contraseña."></asp:Label>
                    </span></p>
                <p class="MsoNormal">
                    <b style="mso-bidi-font-weight:normal">
                    <span style="font-size: 12.0pt; mso-bidi-font-size: 11.0pt; font-family: &quot;Arial&quot;,sans-serif; color: white; mso-themecolor: background1; background: blue; mso-highlight: blue">
                    <o:p><b style="mso-bidi-font-weight:normal">
                    <span style="font-size:12.0pt;mso-bidi-font-size:
11.0pt;font-family:&quot;Arial&quot;,sans-serif">
                    <asp:Label ID="L_RegistreseSub" runat="server" BackColor="Blue" 
                        ForeColor="White" Text="REGISTRESE AHORA!"></asp:Label>
                    </span></b></o:p></span></b></p>
                <p class="MsoNormal">
                    <span style="font-size:12.0pt;mso-bidi-font-size:11.0pt;font-family:&quot;Arial&quot;,sans-serif">
                    <asp:Label ID="L_TextoRegistrese" runat="server" 
                        Text="Si el visitante es nuevo en el sitio web puede registrarse de manera gratuita, debe ingresar como mínimo los nombres, apellidos, número de cedula, dirección de residencia, correo electrónico, teléfono, usuario (Login), contraseña y una imagen del usuario."></asp:Label>
                    </span></p>
                <p class="MsoNormal">
                    &nbsp;</p>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="L_Contactenos" runat="server" Font-Bold="True" Font-Size="Large" 
                    ForeColor="#3333FF" Text="CONTACTENOS"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Image ID="I_Contactenos" runat="server" Height="261px" 
                    ImageUrl="~/Imagenes/ImagenesWeb/contactenos_manual_usuario.png" 
                    Width="638px" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <p class="style22">
                    &nbsp;</p>
                <p class="style22">
                    <o:p>
                    <span style="font-size:12.0pt;mso-bidi-font-size:11.0pt;font-family:&quot;Arial&quot;,sans-serif">
                    <asp:Label ID="L_TextoContactenos" runat="server" 
                        Text="En este formulario el visitante puede dejar un mensaje de las opiniones que tenga, referente al sitio web. Recordando que el nombre, e-mail y el mensaje son campos obligatorios."></asp:Label>
                    </span></o:p>
                </p>
                <p class="style22">
                    <o:p></o:p>
                </p>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="L_MenuClieOIni" runat="server" Font-Bold="True" Font-Size="Large" 
                    ForeColor="#3333FF" Text="MENU CLIENTE O INICIO CLIENTE"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Image ID="I_InicioCliente" runat="server" Height="224px" 
                    ImageUrl="~/Imagenes/ImagenesWeb/inicio_cliente_manual_usuario.png" 
                    Width="609px" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <p class="style22">
                    <span style="font-size:12.0pt;mso-bidi-font-size:11.0pt;font-family:&quot;Arial&quot;,sans-serif">
                    <asp:Label ID="L_TextoMenuCliente" runat="server" 
                        Text="Al iniciar sesión el cliente, podrá ver un formulario donde podrá agregar sus productos a comprar, mirar sus productos actuales en el carro de compras o actualizar sus datos personales."></asp:Label>
                    </span></p>
                <p class="style22">
                    &nbsp;</p>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="L_DatosUsuario" runat="server" Font-Bold="True" Font-Size="Large" 
                    ForeColor="#3333FF" Text="DATOS DE USUARIO"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Image ID="I_DatosUsuario" runat="server" Height="57px" 
                    ImageUrl="~/Imagenes/ImagenesWeb/datos_usuario_manual_usuario.png" 
                    Width="713px" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <p class="style22">
                    &nbsp;</p>
                <p class="style22">
                    <o:p>
                    <span style="font-size:12.0pt;mso-bidi-font-size:11.0pt;font-family:&quot;Arial&quot;,sans-serif">
                    <asp:Label ID="L_TextoDatosUsuario" runat="server" 
                        Text="Al iniciar sesión se mostrar la foto del cliente, nombres y apellidos del usuario, email, tipo de usuario: Cliente, un botonlink para cerrar sesión si lo desea."></asp:Label>
                    </span></o:p></p>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="L_AgregarProductos" runat="server" Font-Bold="True" Font-Size="Large" 
                    ForeColor="#3333FF" Text="AGREGAR PRODUCTOS"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Image ID="I_AgregarProductos" runat="server" Height="295px" 
                    ImageUrl="~/Imagenes/ImagenesWeb/agregar_producto_manual_usuario.png" 
                    Width="606px" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <p class="style22">
                    &nbsp;</p>
                <p class="style22">
                    <o:p>
                    <span style="font-size:12.0pt;mso-bidi-font-size:11.0pt;font-family:&quot;Arial&quot;,sans-serif">
                    <asp:Label ID="L_TextoAgregarProductos" runat="server" 
                        Text="En este formulario el cliente podrá apartar sus productos al carrito de compras, pero recordando que no puede superar la cantidad establecida, también puede buscar un producto en especial, ver su carrito o devolverse a la página de inicio del cliente."></asp:Label>
                    </span></o:p></p>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="L_CarritoCompras" runat="server" Font-Bold="True" Font-Size="Large" 
                    ForeColor="#3333FF" Text="CARRITO DE COMPRAS"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Image ID="I_carritoCompras" runat="server" Height="225px" 
                    ImageUrl="~/Imagenes/ImagenesWeb/carrito_compras_manual_usuario.png" 
                    Width="550px" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <p class="style22">
                    &nbsp;</p>
                <p class="style22">
                    <o:p>
                    <span style="font-size:12.0pt;mso-bidi-font-size:11.0pt;font-family:&quot;Arial&quot;,sans-serif">
                    <asp:Label ID="L_TextoCarritoCompras" runat="server" 
                        Text="En este formulario el cliente puede apartar sus productos o comprarlos, puede editar su carrito y eliminar un producto que no desee, puede devolverse a la página de inicio del cliente y le muestra el precio total a pagar o total pedido."></asp:Label>
                    </span></o:p></p>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="L_ActualizarDatos" runat="server" Font-Bold="True" Font-Size="Large" 
                    ForeColor="#3333FF" Text="ACTUALIZAR DATOS"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Image ID="i_ActualizarDatos" runat="server" Height="295px" 
                    ImageUrl="~/Imagenes/ImagenesWeb/actualizar_datos_manual_usuario.png" 
                    Width="606px" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <p class="style22">
                    <o:p>
                    <span style="font-size:12.0pt;mso-bidi-font-size:11.0pt;font-family:&quot;Arial&quot;,sans-serif">
                    <asp:Label ID="L_TextoActualizarDatos" runat="server" 
                        Text="Acá el cliente puede modificar sus datos personales (nombres, apellidos, número de cedula, dirección de residencia, correo electrónico, teléfono, usuario (Login), contraseña y la imagen)."></asp:Label>
                    </span></o:p></p>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
    <asp:ImageButton ID="IB_Atras" runat="server" Height="47px" 
        ImageUrl="~/Imagenes/ImagenesWeb/atras.png" onclick="IB_Atras_Click" 
        Width="52px" />
                </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>


</asp:Content>


