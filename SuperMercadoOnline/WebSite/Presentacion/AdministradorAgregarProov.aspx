<%@ Page Language="C#" MasterPageFile="~/Presentacion/plantilla1.master" AutoEventWireup="true" CodeFile="~/LogicaPresentacion/AdministradorAgregarProov.aspx.cs" Inherits="Presentacion_AgregarProov" Title="Agregar Proveedor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
        }
        .style4
        {            text-align: left;
        }
        .style5
        {
            width: 50%;
        }
        .style6
        {
        }
        .style8
        {
        }
        .auto-style1
        {
            width: 40%;
        }
        .auto-style2
        {
            width: 18%;
        }
        .auto-style12
        {
            width: 36%;
        }
        .auto-style13
        {
            text-align: left;
        }
        .auto-style19
        {
            width: 39%;
        }
        .auto-style20
        {
            text-align: left;
            }
        .auto-style21
        {
            width: 40%;
        }
        .auto-style22
        {
            width: 40%;
            text-align: right;
        }
        .auto-style23
        {
            text-align: center;
            background-color: #0066FF;
        }
        .auto-style24
        {
            width: 8%;
        }
        .auto-style25
        {
            text-align: center;
        }
        .auto-style26
        {
            text-align: center;
            background-color: #3366FF;
        }
        .auto-style27
        {
            text-align: left;
            width: 10%;
        }
        .style22
        {
            text-align: left;
            width: 101%;
            height: 22px;
        }
        .style23
        {
            text-align: left;
            height: 22px;
            width: 231px;
        }
        .style24
        {
            text-align: left;
            width: 231px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td class="auto-style20">
                <asp:ImageButton ID="IB_Atras" runat="server" Height="53px" 
                    ImageUrl="~/Imagenes/ImagenesWeb/atras.png" onclick="IB_Atras_Click" 
                    Width="64px" />
            </td>
            <td class="auto-style21">
                &nbsp;</td>
            <td class="auto-style5">
                &nbsp;</td>
            <td class="auto-style19">
                &nbsp;</td>
        </tr>
        </table>
    <p style="text-align: center; background-color: #0066FF;">
                <asp:Label ID="L_TituloAgreModProov" runat="server" 
                    style="color: #FFFFFF; background-color: #0066FF">AGREGAR 
                Y MODIFICAR PROVEEDOR </asp:Label>
            </p>
    <table class="style1">
        <tr>
            <td class="style2" colspan="5">
                <asp:Label ID="L_ModProov" runat="server" 
                    style="color: #FFFFFF; background-color: #0066FF">MODIFICAR 
                PROVEEDOR </asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style27">
                <asp:DropDownList ID="DDL_ProveedorMod" runat="server" 
                    DataSourceID="ODS_ListarProveedores" DataTextField="nombre_proveedor" 
                    ValidationGroup="Modificar" 
                    DataValueField="id_proveedor">
                </asp:DropDownList>
                </td>
            <td class="auto-style21">
                            <asp:RequiredFieldValidator ID="RFV_DDL_ProveedorMod" runat="server" 
                                ControlToValidate="DDL_ProveedorMod" ErrorMessage="*" InitialValue="0" 
                                ValidationGroup="ModificarProducto"></asp:RequiredFieldValidator>
                </td>
            <td class="auto-style9">
                &nbsp;</td>
            <td class="auto-style19" colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style27">
                <asp:Button ID="B_Modificar" runat="server" Text="Modificar" ValidationGroup="ModificarProveedor" OnClick="B_Modificar_Click" />
                </td>
            <td class="auto-style21">
                &nbsp;&nbsp;
                </td>
            <td class="auto-style9">
                &nbsp;</td>
            <td class="auto-style19" colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style26" colspan="5">
                <asp:Label ID="L_TituloActualizarProve" runat="server" 
                    style="color: #FFFFFF; background-color: #0066FF">AGREGAR Y ACTUALIZAR 
                PROVEEDOR </asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style27">
                <asp:Label ID="L_Nit" runat="server" CssClass="label2">NIT:</asp:Label>
                </td>
            <td class="auto-style21">
                    <asp:TextBox ID="TB_NIT" runat="server" MaxLength="7" 
                        ValidationGroup="Agregar Proveedor" Width="50%"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFV9" runat="server" 
                    ControlToValidate="TB_NIT" ErrorMessage="*" 
                    SetFocusOnError="True" ValidationGroup="Agregar Proveedor"></asp:RequiredFieldValidator>
                    &nbsp;
                    <asp:RegularExpressionValidator ID="REV_NumerosNit" runat="server" 
                        ControlToValidate="TB_NIT" ErrorMessage="Solo numeros" 
                        ValidationExpression="^[0-9]*" ValidationGroup="Agregar Proveedor"></asp:RegularExpressionValidator>
                </td>
            <td class="auto-style9">
                &nbsp;</td>
            <td class="auto-style19" colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style27">
                <asp:Label ID="L_Nombre" runat="server" CssClass="label2">Nombre:</asp:Label>
                &nbsp;</td>
            <td class="auto-style21">
                <asp:TextBox ID="TB_Nombre" runat="server" EnableTheming="True" 
                    MaxLength="30" ValidationGroup="Agregar Proveedor" Width="50%"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFV_Nombre" runat="server" 
                    ControlToValidate="TB_Nombre" ErrorMessage="*" 
                    SetFocusOnError="True" ValidationGroup="Agregar Proveedor"></asp:RequiredFieldValidator>
                &nbsp;</td>
            <td class="auto-style9">
                <asp:Label ID="L_EMail" runat="server" CssClass="label2">E-Mail:</asp:Label>
                </td>
            <td class="auto-style19" colspan="2">
                <asp:TextBox ID="TB_Email" runat="server" MaxLength="30" 
                    ValidationGroup="Agregar Proveedor" Width="40%"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFV_Email" runat="server" 
                    ControlToValidate="TB_Email" ErrorMessage="*" SetFocusOnError="True" 
                    ValidationGroup="Agregar Proveedor"></asp:RequiredFieldValidator>
                &nbsp;<asp:RegularExpressionValidator ID="REV_Correo" runat="server" 
                    ControlToValidate="TB_Email" ErrorMessage="Ej: motas@mail.co" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                    ValidationGroup="VG_1"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style27">
                &nbsp;</td>
            <td class="auto-style21">
                &nbsp;</td>
            <td class="auto-style9">
                &nbsp;</td>
            <td class="auto-style9" rowspan="2">
                <asp:Image ID="I_Logo" runat="server" Height="60px" Visible="False" Width="60px" />
                </td>
            <td class="auto-style19">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style27">
                <asp:Label ID="L_Direccion" runat="server" CssClass="label2">Direccion:</asp:Label>
                </td>
            <td class="auto-style21">
                <asp:TextBox ID="TB_Direccion" 
                    runat="server" MaxLength="30" 
                    ValidationGroup="Agregar Proveedor" Width="50%"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFV_Direccion" runat="server" 
                    ControlToValidate="TB_Direccion" ErrorMessage="* " 
                    SetFocusOnError="True" ValidationGroup="Agregar Proveedor"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style9">
                <asp:Label ID="L_Imagen" runat="server" CssClass="label2">Imagen:</asp:Label>
                </td>
            <td class="auto-style19">
                <asp:FileUpload ID="FU_Logo" runat="server" />
                <asp:RequiredFieldValidator ID="RFV_Imagen" runat="server" ControlToValidate="FU_Logo" 
                    ErrorMessage="* " SetFocusOnError="True" 
                    ValidationGroup="Agregar Proveedor"></asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr>
            <td class="auto-style27">
                <asp:Label ID="L_Telefono" runat="server" CssClass="label2">Telefono:</asp:Label>
                </td>
            <td class="auto-style21">
                <asp:TextBox ID="TB_Telefono" 
                    runat="server" MaxLength="10" ValidationGroup="Agregar Proveedor" 
                    Width="50%"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFV_Telefono" runat="server" 
                    ControlToValidate="TB_Telefono" ErrorMessage="*" 
                    SetFocusOnError="True" ValidationGroup="Agregar Proveedor"></asp:RequiredFieldValidator>
                &nbsp;<asp:RegularExpressionValidator ID="REV_Telefono" runat="server" ControlToValidate="TB_Telefono" ErrorMessage="Numero de telefono de 10 digitos" SetFocusOnError="True" ValidationExpression="\d{10}" ValidationGroup="VG_1"></asp:RegularExpressionValidator>
            </td>
            <td class="style4" colspan="3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style27">
                &nbsp;</td>
            <td class="auto-style22">
                &nbsp;
                </td>
            <td class="auto-style9">
                &nbsp;</td>
            <td class="auto-style19" colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style27">
                &nbsp;</td>
            <td class="auto-style22">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="B_Actualizar" runat="server" Text="Actualizar" ValidationGroup="Agregar Proveedor" Visible="False" OnClick="B_Actualizar_Click" />
                <asp:Button ID="B_Cancelar" runat="server" Text="Cancelar" ValidationGroup="CancelarProveedor" Visible="False" OnClick="B_Cancelar_Click" />
                </td>
            <td class="auto-style9">
                &nbsp;</td>
            <td class="auto-style19" colspan="2">
                &nbsp;&nbsp;
                </td>
        </tr>
        </table>
    <table class="style1">
        <tr>
            <td class="auto-style25">
                <asp:Button ID="B_AgregarProveedor" runat="server" onclick="B_Agregar_Click" 
                    Text="Agregar Proveedor" ValidationGroup="Agregar Proveedor" />
            </td>
        </tr>
        </table>
    <p style="text-align: center">
        &nbsp;</p>
    <table class="style1">
        <tr>
            <td class="style2">
                &nbsp;</td>
        </tr>
        </table>
    <p style="text-align: center; background-color: #0066FF;">
                <asp:Label ID="L_TituloAgreProdProve" runat="server" BackColor="Red" 
                    style="text-align: center; color: #FFFFFF; background-color: #0066FF;">AGREGAR 
                RELACION DE PRODUCTOS CON PROVEEDOR</asp:Label>
            </p>
    <table class="style1">
        <tr>
            <td class="style6" colspan="4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style24">
                &nbsp;</td>
            <td class="auto-style12">
                &nbsp;</td>
            <td class="auto-style2">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style24">
                <asp:Label ID="L_Producto" runat="server" CssClass="label2">Producto:</asp:Label>
                </td>
            <td class="auto-style12">
                <asp:DropDownList ID="DDL_Producto" runat="server" 
                    DataSourceID="ODS_ListarProductos" DataTextField="nombre_producto" 
                    ValidationGroup="AgregarProducto" 
                    DataValueField="id_producto">
                </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RFV_DDL_Producto" runat="server" 
                                ControlToValidate="DDL_Producto" ErrorMessage="*" InitialValue="0" 
                                ValidationGroup="AgregarProducto"></asp:RequiredFieldValidator>
                <asp:ObjectDataSource ID="ODS_ListarProductos" runat="server" 
                    SelectMethod="listarproducto" TypeName="LogicaC.LAAgregarProveedor">
                    <SelectParameters>
                        <asp:SessionParameter Name="idio" SessionField="idioma" Type="Int32" />
                    </SelectParameters>
                </asp:ObjectDataSource>
                </td>
            <td class="auto-style2">
                <asp:Label ID="L_PrecioProdProv" runat="server" CssClass="label2">Precio Producto Proveedor:</asp:Label>
                </td>
            <td class="style2">
                <asp:TextBox ID="TB_PrecioProducto" runat="server" MaxLength="8" 
                    ValidationGroup="AgregarProducto" Width="30%"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFV_PrecioProdProv" runat="server" 
                    ControlToValidate="TB_PrecioProducto" ErrorMessage="* " 
                    SetFocusOnError="True" ValidationGroup="AgregarProducto"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="REV_NumerosPrecioPrProv" runat="server" 
                    ControlToValidate="TB_PrecioProducto" 
                    ErrorMessage="Solo numeros y decimales (,)" ValidationExpression="^[0-9,]*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style24">
                &nbsp;</td>
            <td class="auto-style12">
                &nbsp;</td>
            <td class="auto-style2">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style24">
                <asp:Label ID="L_Proveedor" runat="server" CssClass="label2">Proveedor</asp:Label>
                </td>
            <td class="auto-style12">
                <asp:DropDownList ID="DDL_Proveedor" runat="server" 
                    DataSourceID="ODS_ListarProveedores" DataTextField="nombre_proveedor" 
                    ValidationGroup="AgregarProducto" 
                    DataValueField="id_proveedor">
                </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RFV_DDL_Proveedor" runat="server" 
                                ControlToValidate="DDL_Proveedor" ErrorMessage="*" InitialValue="0" 
                                ValidationGroup="AgregarProducto"></asp:RequiredFieldValidator>
                <asp:ObjectDataSource ID="ODS_ListarProveedores" runat="server" 
                    SelectMethod="listarproveedores" TypeName="LogicaC.LAAgregarProveedor">
                    <SelectParameters>
                        <asp:SessionParameter Name="idio" SessionField="idioma" Type="Int32" />
                    </SelectParameters>
                </asp:ObjectDataSource>
                </td>
            <td class="style8" colspan="2">
                <asp:Button ID="B_AgregarProducto" runat="server" Text="Agregar Producto" 
                    ValidationGroup="AgregarProducto" 
                    onclick="B_AgregarProductoProveedor_Click" />
                                    </td>
        </tr>
        <tr>
            <td class="auto-style24">
                &nbsp;</td>
            <td class="auto-style12">
                &nbsp;</td>
            <td class="auto-style2">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style25" colspan="4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2" colspan="4">
                &nbsp;</td>
        </tr>
    </table>
    <p>
                &nbsp;</p>
    <p>
    </p>
    <table class="style1">
        <tr>
            <td class="auto-style23" colspan="2">
                &nbsp;&nbsp;&nbsp;
                <asp:Label ID="L_TituloMostProveYProducProve" runat="server" BackColor="Red" 
                    style="text-align: center; color: #FFFFFF; background-color: #0066FF;">MOSTRAR 
                PROVEEDOR Y SELECCIONE PARA MOSTRAR LA RELACION PRODUCTO CON PROVEEDOR</asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style23">
                </td>
            <td class="style22">
                </td>
        </tr>
        <tr>
            <td class="auto-style13" colspan="2">
                <asp:GridView ID="GV_Proveedor" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" DataSourceID="MostrarProveedor" ForeColor="#333333" AllowPaging="True" AllowSorting="True" 
                    DataKeyNames="id_proveedor" 
                    onselectedindexchanged="GV_Proveedor_SelectedIndexChanged" Height="50%" 
                    HorizontalAlign="Center" Width="60%" UseAccessibleHeader="False" EnableModelValidation="True" PageSize="5" GridLines="None">
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <Columns>
                        <asp:TemplateField HeaderText="Seleccione" ShowHeader="False">
                            <ItemTemplate>
                                <asp:LinkButton ID="LB_Seleccionar" runat="server" CausesValidation="false" 
                                    CommandName="Select" onclick="LB_Seleccionar_Click" Text="Seleccione"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Imagen">
                            <ItemTemplate>
                                <asp:Image ID="I_Proveedor" runat="server" ImageUrl='<%# Eval("logo_proveedor") %>' 
                                    Height="70px" Width="70px" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Nombre">
                            <ItemTemplate>
                                <asp:Label ID="L_Nombre" runat="server" Text='<%# Bind("nombre_proveedor") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Direccion">
                            <ItemTemplate>
                                <asp:Label ID="L_Direccion" runat="server" 
                                    Text='<%# Bind("direccion_proveedor") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Telefono">
                            <ItemTemplate>
                                <asp:Label ID="L_Telefono" runat="server" 
                                    Text='<%# Bind("telefono_proveedor") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="EMail">
                            <ItemTemplate>
                                <asp:Label ID="L_EMail" runat="server" Text='<%# Bind("email_proveedor") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Eliminar" ShowHeader="False">
                            <ItemTemplate>
                                <asp:ImageButton ID="IB_EliminarProveedor" runat="server" Height="40px" 
                                    ImageUrl="~/Imagenes/ImagenesWeb/Eliminar.jpg" onclick="IB_EliminarProveedor_Click" 
                                    onclientclick="GV_Proveedor_RowDeleting" Width="40px" 
                                    CommandName="Select" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#999999" />
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                </asp:GridView>
                <br />
                <asp:ObjectDataSource ID="MostrarProveedor" runat="server" 
                    SelectMethod="mostrarproveedor" TypeName="LogicaC.LAAgregarProveedor"></asp:ObjectDataSource>
                <br />
            </td>
        </tr>
        <tr>
            <td class="style24">
                <br />
            </td>
        </tr>
        <tr>
            <td class="style2" colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="L_Mensaje" runat="server" Font-Names="Comic Sans MS" 
            Font-Size="X-Large" ForeColor="Red"></asp:Label>
                </td>
        </tr>
        <tr>
            <td class="style2" colspan="2">
                <asp:DataList ID="DL_Producto" runat="server" CellPadding="4" 
                    DataKeyField="id_producto" DataSourceID="ODS_ProductosProveedor" 
                    GridLines="Both" 
                    RepeatColumns="5" RepeatDirection="Horizontal" Height="30%" Width="95%" 
                    ForeColor="#333333" onitemcommand="DL_Producto_ItemCommand" 
                    onitemdatabound="DL_Producto_ItemDataBound">
                    <AlternatingItemStyle BackColor="White" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <ItemStyle BackColor="#EFF3FB" />
                    <ItemTemplate>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                        <asp:Image ID="I_Producto" runat="server" Height="100px" 
                            ImageUrl='<%# Eval("imagen_producto") %>' Width="100px" />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="L_idProducto" runat="server" Text='<%# Eval("id_producto") %>' Visible="False"></asp:Label>
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="L_nombreProducto" runat="server" Text='<%# Eval("nombre_producto") %>'></asp:Label>
                        &nbsp;<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label6" runat="server" Text="$"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="L_PrecioProducto" runat="server" Text='<%# Eval("precio_producto") %>'></asp:Label>
                        <br />
                        &nbsp;&nbsp; &nbsp;<asp:Label ID="L_TituloPrecioProductoMod" runat="server" 
                            Text="Precio a Modificar: "></asp:Label>
                        &nbsp;<asp:TextBox ID="TB_PrecioProducto" runat="server" MaxLength="10" 
                            Width="68px"></asp:TextBox>
                        &nbsp;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RegularExpressionValidator 
                            ID="DL_REV_NumerosProducto" runat="server" 
                            ControlToValidate="TB_PrecioProducto" 
                            ErrorMessage="Solo numeros y decimales (,)" ValidationExpression="^[0-9,]*"></asp:RegularExpressionValidator>
                        <br />
                        &nbsp;
                        <asp:LinkButton ID="LB_ActualizarPrecio" runat="server" 
                            OnClick="LB_ActualizarPrecio_Click" ValidationGroup="ModificarPrecio">Actualizar 
                        Precio</asp:LinkButton>
                        &nbsp;
                        <asp:LinkButton ID="LB_EliminarProducto" runat="server" OnClick="LB_EliminarProducto_Click" ValidationGroup="EliminarProducto">Eliminar 
                        Producto</asp:LinkButton>
                        &nbsp;&nbsp;<br />
                        &nbsp;
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                </asp:DataList>
                <asp:ObjectDataSource ID="ODS_ProductosProveedor" runat="server" 
                    SelectMethod="mostrarrelacionproductoproveedor" 
                    TypeName="LogicaC.LAAgregarProveedor">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="GV_Proveedor" Name="proveedor_id" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:ObjectDataSource>
                <br />
                </td>
        </tr>
        <tr>
            <td class="style2" colspan="2">
                &nbsp;</td>
        </tr>
        </table>
    <p>
    </p>
    </asp:Content>

