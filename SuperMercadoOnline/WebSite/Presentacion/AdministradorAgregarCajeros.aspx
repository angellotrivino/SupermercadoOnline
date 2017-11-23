<%@ Page Language="C#" MasterPageFile="~/Presentacion/plantilla1.master" AutoEventWireup="true" CodeFile="~/LogicaPresentacion/AdministradorAgregarCajeros.aspx.cs" Inherits="Presentacion_AdministradorAgregarCajeros" Title="AdministradorCajero" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style22
        {
        }
        .style1
        {
            width: 100%;
        }
        .auto-style19
        {
            width: 39%;
        }
        .auto-style27
        {
            text-align: left;
            }
        .auto-style21
        {
            width: 40%;
        }
        .auto-style26
        {
            text-align: center;
            background-color: #3366FF;
        }
        .auto-style22
        {
            width: 40%;
            text-align: right;
        }
        .auto-style25
        {
            text-align: center;
        }
        .auto-style33
    {
        width: 100%;
        height: 345px;
    }
    .auto-style48
    {
        }
    .auto-style49
    {
        width: 38%;
        height: 32px;
    }
    .auto-style53
    {
        width: 14%;
        height: 32px;
    }
    .auto-style50
    {
        height: 32px;
    }
        .auto-style15
    {
        width: 13%;
    }
        .auto-style12
        {
        width: 38%;
    }
        .auto-style54
    {
        width: 14%;
        height: 33px;
    }
    .auto-style52
    {
        height: 33px;
    }
    .auto-style51
    {
        width: 13%;
        height: 33px;
    }
    .auto-style43
    {
        width: 38%;
        height: 33px;
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
    .auto-style40
    {
        width: 14%;
        height: 117px;
    }
    .auto-style36
    {
        height: 26px;
    }
        .style23
        {
            width: 36%;
            height: 32px;
        }
        .style24
        {
            width: 36%;
        }
        .style25
        {
            width: 36%;
            height: 33px;
        }
        .style26
        {
            width: 36%;
            height: 26px;
        }
        .style27
        {
            height: 83px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style16">
        <tr>
            <td class="style22">
    <asp:ImageButton ID="IB_Atras" runat="server" Height="45px" 
        ImageUrl="~/Imagenes/ImagenesWeb/atras.png" onclick="IB_Atras_Click" 
        Width="53px" />
            </td>
        </tr>
        <tr>
            <td class="style22">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style22">
    <table class="style1">
        <tr>
            <td class="auto-style19">
                &nbsp;</td>
        </tr>
        </table>
    <p style="text-align: center; background-color: #0066FF;">
                <asp:Label ID="L_TituloAgreModCaj" runat="server" 
                    style="color: #FFFFFF; background-color: #0066FF">AGREGAR Y MODIFICAR CAJERO </asp:Label>
            </p>
    <table class="style1">
        <tr>
            <td class="style2" colspan="4">
                <asp:Label ID="L_ModCaj" runat="server" 
                    style="color: #FFFFFF; background-color: #0066FF">MODIFICAR CAJERO</asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style27">
                <asp:DropDownList ID="DDL_CajeroMod" runat="server" 
                    DataSourceID="ODS_ListarCajeros" DataTextField="nombre_usuario" 
                    ValidationGroup="ModificarCajero" 
                    DataValueField="id_usuario">
                </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RFV_DDL_CajeroMod" runat="server" 
                                ControlToValidate="DDL_CajeroMod" ErrorMessage="*" InitialValue="0" 
                                ValidationGroup="ModificarCajero"></asp:RequiredFieldValidator>
                </td>
            <td class="auto-style21">
                            <asp:ObjectDataSource ID="ODS_ListarCajeros" runat="server" 
                                SelectMethod="listarcajeros" TypeName="LogicaC.LAAgregarCajero">
                                <SelectParameters>
                                    <asp:SessionParameter Name="idio" SessionField="idioma" Type="Int32" />
                                </SelectParameters>
                            </asp:ObjectDataSource>
                </td>
            <td class="auto-style9">
                &nbsp;</td>
            <td class="auto-style19">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style27">
                <asp:Button ID="B_Modificar" runat="server" Text="Modificar" 
                    ValidationGroup="ModificarCajero" OnClick="B_Modificar_Click" />
                </td>
            <td class="auto-style21">
                &nbsp;&nbsp;
                </td>
            <td class="auto-style9">
                &nbsp;</td>
            <td class="auto-style19">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style26" colspan="4">
                <asp:Label ID="L_TituloAgreCajero" runat="server" BackColor="Red" 
                    style="text-align: center; color: #FFFFFF; background-color: #0066FF;">AGREGAR 
                Y ACTUALIZAR CAJERO</asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style27" colspan="4">
                            <table class="auto-style33" __designer:mapid="6c1">
                                <tr __designer:mapid="6c2">
                                    <td class="auto-style48" __designer:mapid="6c3" rowspan="4">
                            <table class="auto-style33" __designer:mapid="6c1">
                                <tr __designer:mapid="6c2">
                                    <td class="auto-style48" __designer:mapid="6c3">
                                        <asp:Label ID="L_Cedula" runat="server" Text="Numero de cedula:"></asp:Label>
                                    </td>
                                    <td class="style23" __designer:mapid="6c5">
                                        <asp:TextBox ID="TB_cedula" runat="server" MaxLength="7" 
                                            ValidationGroup="AgregarCajero" Width="80%"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RFV_Cedula" runat="server" 
                                            ControlToValidate="TB_cedula" ErrorMessage="*" SetFocusOnError="True" 
                                            ValidationGroup="AgregarCajero"></asp:RequiredFieldValidator>
                                        &nbsp;<asp:RegularExpressionValidator ID="REV_CedulaNumeros" runat="server" 
                                            ControlToValidate="TB_cedula" ErrorMessage="Solo numeros" 
                                            ValidationExpression="^[0-9]*" ValidationGroup="AgregarCajero"></asp:RegularExpressionValidator>
                                    </td>
                                    <td class="auto-style53" __designer:mapid="6c7">
                                        <asp:Label ID="L_Nombres" runat="server" Text="Nombres:"></asp:Label>
                                    </td>
                                    <td class="auto-style50" __designer:mapid="6c9">
                                        <asp:TextBox ID="TB_nombre" runat="server" MaxLength="20" ValidationGroup="AgregarCajero" 
                                            Width="80%"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RFV_nombres" runat="server" 
                                            ControlToValidate="TB_nombre" ErrorMessage="*" 
                                            ValidationGroup="AgregarCajero"></asp:RequiredFieldValidator>
                                        &nbsp;&nbsp;<asp:RegularExpressionValidator ID="REV_NombresLetras" runat="server" 
                                            ControlToValidate="TB_nombre" ErrorMessage="Solo letras" 
                                            ValidationExpression="^[A-Za-z&quot; &quot;ñÑ]*$" ValidationGroup="RU"></asp:RegularExpressionValidator>
                                    </td>
                                </tr>
                                <tr __designer:mapid="6cd">
                                    <td class="auto-style48" __designer:mapid="6ce">
                                        <asp:Label ID="L_Apellidos" runat="server" Text="Apellidos:"></asp:Label>
                                    </td>
                                    <td class="style23" __designer:mapid="6d0">
                                        <asp:TextBox ID="TB_apellido" runat="server" MaxLength="30" 
                                            ValidationGroup="AgregarCajero" Width="80%"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RFV_apellidos" runat="server" 
                                            ControlToValidate="TB_apellido" ErrorMessage="*" SetFocusOnError="True" 
                                            ValidationGroup="AgregarCajero"></asp:RequiredFieldValidator>
                                        &nbsp;
                                        <asp:RegularExpressionValidator ID="REV_ApellidosLetras" runat="server" 
                                            ControlToValidate="TB_apellido" ErrorMessage="Solo letras" 
                                            ValidationExpression="^[A-Za-z&quot; &quot;ñÑ]*$" 
                                            ValidationGroup="AgregarCajero"></asp:RegularExpressionValidator>
                                    </td>
                                    <td class="auto-style53" __designer:mapid="6d4">
                                        <asp:Label ID="L_Direccion" runat="server" Text="Direccion de residencia:"></asp:Label>
                                    </td>
                                    <td class="auto-style50" __designer:mapid="6d6">
                                        <asp:TextBox ID="TB_direccion" runat="server" MaxLength="30" 
                                            ValidationGroup="AgregarCajero" Width="80%"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RFV_direccion" runat="server" 
                                            ControlToValidate="TB_direccion" ErrorMessage="*" SetFocusOnError="True" 
                                            ValidationGroup="AgregarCajero"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr __designer:mapid="6d9">
                                    <td class="auto-style48" __designer:mapid="6da">
                                        <asp:Label ID="L_Correo" runat="server" Text="Correo Electronico:"></asp:Label>
                                    </td>
                                    <td class="style23" __designer:mapid="6dc">
                                        <asp:TextBox ID="TB_correo" runat="server" MaxLength="30" ValidationGroup="AgregarCajero" 
                                            Width="80%"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RFV_correo" runat="server" 
                                            ControlToValidate="TB_correo" ErrorMessage="*" SetFocusOnError="True" 
                                            ValidationGroup="AgregarCajero"></asp:RequiredFieldValidator>
                                        &nbsp;
                                        <asp:RegularExpressionValidator ID="REV_correo" runat="server" 
                                            ControlToValidate="TB_correo" 
                                            ErrorMessage="Correo invalido. Ejemplo: nombre@direccion.co" 
                                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                                            ValidationGroup="AgregarCajero"></asp:RegularExpressionValidator>
                                    </td>
                                    <td class="auto-style53" __designer:mapid="6e0">
                                        <asp:Label ID="L_Telefono" runat="server" Text="Telefono:"></asp:Label>
                                    </td>
                                    <td class="auto-style50" __designer:mapid="6e2">
                                        <asp:TextBox ID="TB_telefono" runat="server" MaxLength="20" 
                                            ValidationGroup="AgregarCajero" Width="50%"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RFV_telefono" runat="server" 
                                            ControlToValidate="TB_telefono" ErrorMessage="*" SetFocusOnError="True" 
                                            ValidationGroup="AgregarCajero"></asp:RequiredFieldValidator>
                                        &nbsp;
                                        <asp:RegularExpressionValidator ID="REV_TelefonoNumeros" runat="server" 
                                            ControlToValidate="TB_telefono" ErrorMessage="Solo numeros" 
                                            ValidationExpression="^[0-9]*" ValidationGroup="AgregarCajero"></asp:RegularExpressionValidator>
                                    </td>
                                </tr>
                                <tr __designer:mapid="6e6">
                                    <td class="auto-style15" __designer:mapid="6e7">
                                        <asp:Label ID="L_ContraseñaN" runat="server" Text="Contraseña Nueva:"></asp:Label>
                                    </td>
                                    <td class="style24" __designer:mapid="6e9">
                                        <asp:TextBox ID="TB_contraseñaR2" runat="server" MaxLength="30" 
                                            TextMode="Password" ValidationGroup="AgregarCajero" Width="80%"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RFV_ContraseñaN" runat="server" 
                                            ControlToValidate="TB_contraseñaR2" ErrorMessage="*" SetFocusOnError="True" 
                                            ValidationGroup="AgregarCajero"></asp:RequiredFieldValidator>
                                    </td>
                                    <td class="auto-style54" __designer:mapid="6ec">
                                        <asp:Label ID="L_ContraseñaNConf" runat="server" 
                                            Text="Confirmar Contraseña Nueva:"></asp:Label>
                                    </td>
                                    <td class="auto-style52" __designer:mapid="6ee">
                                        <asp:TextBox ID="TB_contraseñaR3" runat="server" MaxLength="30" 
                                            TextMode="Password" ValidationGroup="AgregarCajero" Width="80%"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RFV_ContraseñaNConf" runat="server" 
                                            ControlToValidate="TB_contraseñaR3" ErrorMessage="*" SetFocusOnError="True" 
                                            ValidationGroup="AgregarCajero"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr __designer:mapid="6f1">
                                    <td class="auto-style51" __designer:mapid="6f2">
                                        <asp:Label ID="L_Imagen" runat="server" Text="Imagen:"></asp:Label>
                                    </td>
                                    <td class="style25" __designer:mapid="6f4">
                                        <asp:FileUpload ID="FU_Imagen" runat="server" />
                                        <asp:RequiredFieldValidator ID="RFV_Imagen" runat="server" 
                                            ControlToValidate="FU_Imagen" ErrorMessage="*" SetFocusOnError="True" 
                                            ValidationGroup="AgregarCajero"></asp:RequiredFieldValidator>
                                    </td>
                                    <td class="auto-style54" __designer:mapid="6f7">
                                        <asp:Label ID="L_Login" runat="server" Text="Usuario(Login):"></asp:Label>
                                    </td>
                                    <td class="auto-style52" __designer:mapid="6f9">
                                        <asp:TextBox ID="TB_usuarioR1" runat="server" MaxLength="30" 
                                            ValidationGroup="AgregarCajero" Width="80%"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RFV_usuarioR1" runat="server" 
                                            ControlToValidate="TB_usuarioR1" ErrorMessage="*" SetFocusOnError="True" 
                                            ValidationGroup="AgregarCajero"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr __designer:mapid="6fc">
                                    <td class="auto-style34" __designer:mapid="6fd">
                                        <asp:Image ID="I_Cajero" runat="server" Height="100px" Width="100px" 
                                            ImageUrl="~/Imagenes/ImagenesWeb/imagen_vacia.png" />
                                    </td>
                                    <td class="style26" __designer:mapid="6ff">
                                        &nbsp;</td>
                                    <td class="auto-style40" rowspan="5" __designer:mapid="702">
                                        &nbsp;</td>
                                    <td class="auto-style36" __designer:mapid="704">
                                        &nbsp;
                                    </td>
                                </tr>
                                <tr __designer:mapid="705">
                                    <td class="auto-style34" __designer:mapid="706">
                                        &nbsp;
                                    </td>
                                    <td class="style26" __designer:mapid="707">
                                        &nbsp;
                                    </td>
                                    <td class="auto-style36" __designer:mapid="708">
                                        &nbsp;
                                    </td>
                                </tr>
                            </table>
                                    </td>
                                </tr>
                                </table>
                </td>
        </tr>
        <tr>
            <td class="auto-style27">
                &nbsp;</td>
            <td class="auto-style22">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="B_Actualizar" runat="server" Text="Actualizar" 
                    ValidationGroup="AgregarCajero" Visible="False" OnClick="B_Actualizar_Click" />
                &nbsp;&nbsp;
                <asp:Button ID="B_Cancelar" runat="server" Text="Cancelar" 
                    ValidationGroup="CancelarCajero" Visible="False" OnClick="B_Cancelar_Click" />
                </td>
            <td class="auto-style9">
                &nbsp;</td>
            <td class="auto-style19">
                &nbsp;&nbsp;
                </td>
        </tr>
        </table>
    <table class="style1">
        <tr>
            <td class="auto-style25">
                <asp:Button ID="B_AgregarCajero" runat="server" onclick="B_Agregar_Click" 
                    Text="Agregar Cajero" ValidationGroup="AgregarCajero" />
            </td>
        </tr>
        </table>
    <p style="text-align: center; background-color: #0066FF;">
                <asp:Label ID="L_TituloMostElimCajero" runat="server" BackColor="Red" 
                    style="text-align: center; color: #FFFFFF; background-color: #0066FF;">MOSTRAR 
                Y ELIMINAR CAJERO</asp:Label>
                </p>
            </td>
        </tr>
        <tr>
            <td class="style22">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style27">
                <asp:GridView ID="GV_Cajero" runat="server" AutoGenerateColumns="False" 
                    BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
                    CellPadding="3" DataKeyNames="id_usuario" DataSourceID="ODS_MostrarCajeros" 
                    ForeColor="Black" GridLines="Vertical" 
                    onselectedindexchanged="GV_Cajero_SelectedIndexChanged" 
                    ondatabound="GV_Cajero_DataBound" onrowdatabound="GV_Cajero_RowDataBound">
                    <Columns>
                        <asp:TemplateField HeaderText="Codigo">
                            <ItemTemplate>
                                <asp:Label ID="L_Codigo" runat="server" Text='<%# Eval("id_usuario") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Imagen">
                            <ItemTemplate>
                                <asp:Image ID="I_Cajero" runat="server" Height="115px" 
                                    ImageUrl='<%# Eval("imagen_usuario") %>' Width="95px" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Nombres">
                            <ItemTemplate>
                                <asp:Label ID="L_Nombres" runat="server" Text='<%# Eval("nombres_usuario") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Apellidos">
                            <ItemTemplate>
                                <asp:Label ID="L_Apellidos" runat="server" 
                                    Text='<%# Eval("apellidos_usuario") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Direccion">
                            <ItemTemplate>
                                <asp:Label ID="L_Direccion" runat="server" 
                                    Text='<%# Eval("direccion_usuario") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Telefono">
                            <ItemTemplate>
                                <asp:Label ID="L_Telefono" runat="server" Text='<%# Eval("telefono_usuario") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Correo">
                            <ItemTemplate>
                                <asp:Label ID="L_Correo" runat="server" Text='<%# Eval("email_usuario") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Usuario">
                            <ItemTemplate>
                                <asp:Label ID="L_Usuario" runat="server" Text='<%# Eval("nick_usuario") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Contraseña">
                            <ItemTemplate>
                                <asp:Label ID="L_Contraseña" runat="server" Text='<%# Eval("pass_usuario") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Eliminar" ShowHeader="False">
                            <ItemTemplate>
                                <asp:LinkButton ID="LB_Eliminar" runat="server" CausesValidation="False" 
                                    CommandName="Select" Text='<%# Eval("Eliminar") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                </asp:GridView>
                <asp:ObjectDataSource ID="ODS_MostrarCajeros" runat="server" 
                    SelectMethod="mostrarcajeros" TypeName="LogicaC.LAAgregarCajero">
                    <SelectParameters>
                        <asp:SessionParameter DefaultValue="" Name="idio" SessionField="idioma" 
                            Type="Int32" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </td>
        </tr>
        <tr>
            <td class="style22">
                &nbsp;</td>
        </tr>
        </table>
    <br />
    </asp:Content>

