<%@ Page Language="C#" MasterPageFile="~/Presentacion/plantilla1.master" AutoEventWireup="true" CodeFile="~/LogicaPresentacion/AdministradorAgregarProducto.aspx.cs" Inherits="Presentacion_AdministradorAgregarP" Title="AGREGAR_PRODUCTO" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style8
        {
            width: 100%;
        }
        .auto-style12
        {
            width: 40%;
            height: 33px;
        }
        .auto-style16
        {
            width: 1103px;
        }
        .auto-style17
        {
            text-align: right;
            background-color: #FFFFFF;
            height: 32px;
        }
        .auto-style18
        {
            width: 40%;
            text-align: right;
            height: 32px;
        }
        .auto-style19
        {
            height: 33px;
        }
        .auto-style26
        {
            width: 100%;
            height: 260px;
        }
        .auto-style27
        {
            width: 10%;
            height: 32px;
        }
        .auto-style28
        {
            width: 40%;
            height: 32px;
        }
        .auto-style29
        {
            width: 12%;
            height: 32px;
        }
        .auto-style30
        {
            height: 32px;
        }
        .auto-style31
        {
            width: 10%;
            height: 96px;
        }
        .auto-style41
        {
            width: 10%;
            height: 33px;
        }
        .auto-style42
        {
            height: 31px;
        }
        .auto-style43
        {
            width: 40%;
            height: 31px;
        }
        .auto-style44
        {
            width: 12%;
            height: 31px;
        }
        .auto-style45
        {
            height: 31px;
        }
        .auto-style46
        {
            height: 12px;
            background-color: #FFFFFF;
        }
        .auto-style47
        {
            width: 40%;
            height: 32px;
            text-align: right;
        }
        .auto-style48
        {
            height: 12px;
            background-color: #0066FF;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td class="auto-style16">
                <asp:ImageButton ID="IB_Atras" runat="server" Height="41px" 
                    ImageUrl="~/Imagenes/ImagenesWeb/atras.png" onclick="IB_Atras_Click" 
                    Width="41px" />
                <br />
                <br />
                <br />
                <table class="auto-style1">
                    <tr>
                        <td style="text-align: center; background-color: #0066FF">
                <asp:Label ID="L_TituloIngProd" runat="server" ForeColor="White" 
                    Text="INGRESAR NUEVO PRODUCTO"></asp:Label>
                        </td>
                    </tr>
                </table>
                <br />
                <table class="auto-style26">
                    <tr>
                        <td class="auto-style46" colspan="4">
                <asp:Label ID="L_TituloModProd" runat="server" ForeColor="White" 
                    Text="MODIFICAR PRODUCTO" style="background-color: #0066FF"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style42">
                            <asp:DropDownList ID="DDL_Producto" runat="server" DataSourceID="ODS_ListarProductos" DataTextField="nombre_producto" DataValueField="id_producto" ValidationGroup="ModificarProducto">
                            </asp:DropDownList>
                        </td>
                        <td class="auto-style43">
                            <asp:RequiredFieldValidator ID="RFV_DDL_Producto" runat="server" 
                                ControlToValidate="DDL_Producto" ErrorMessage="*" InitialValue="0" 
                                ValidationGroup="ModificarProducto"></asp:RequiredFieldValidator>
                        </td>
                        <td class="auto-style44">
                            &nbsp;</td>
                        <td class="auto-style45">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style42">
                <asp:Button ID="B_Modificar" runat="server" OnClick="B_Modificar_Click" Text="Modificar" ValidationGroup="ModificarProducto" />
                        </td>
                        <td class="auto-style43">
                            <asp:ObjectDataSource ID="ODS_ListarProductos" runat="server" 
                                SelectMethod="listarproductos" TypeName="LogicaC.LAAgregarProducto">
                                <SelectParameters>
                                    <asp:SessionParameter Name="idio" SessionField="idioma" Type="Int32" />
                                </SelectParameters>
                            </asp:ObjectDataSource>
                        </td>
                        <td class="auto-style44">
                            &nbsp;</td>
                        <td class="auto-style45">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style48" colspan="4">
                <asp:Label ID="L_TituloActualizar" runat="server" ForeColor="White" 
                    Text="INGRESAR Y ACTUALIZAR PRODUCTO"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style42">
                            &nbsp;</td>
                        <td class="auto-style43">
                            &nbsp;</td>
                        <td class="auto-style44">
                            &nbsp;</td>
                        <td class="auto-style45">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style42">
                            <asp:Label ID="L_Codigo" runat="server" Text="Codigo:"></asp:Label>
                        </td>
                        <td class="auto-style43">
                <asp:TextBox ID="TB_Codigo" runat="server" MaxLength="7" ValidationGroup="1AgregarProducto" 
                    Width="50%"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFV_TB_Codigo" runat="server" 
                    ControlToValidate="TB_Codigo" ErrorMessage="*" SetFocusOnError="True" 
                    ValidationGroup="AgregarProducto"></asp:RequiredFieldValidator>
                            &nbsp;<asp:RegularExpressionValidator ID="REV_NumerosCodigo" runat="server" 
                                ControlToValidate="TB_Codigo" ErrorMessage="Solo numeros" 
                                ValidationExpression="^[0-9]*" ValidationGroup="AgregarProducto"></asp:RegularExpressionValidator>
                        </td>
                        <td class="auto-style44">
                            <asp:Label ID="L_Nombre" runat="server" Text="Nombre:"></asp:Label>
                        </td>
                        <td class="auto-style45">
                <asp:TextBox ID="TB_Nombre" runat="server" MaxLength="20" ValidationGroup="AgregarProducto" 
                    Width="50%"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFV_TB_NuevoP" runat="server" 
                    ControlToValidate="TB_Nombre" ErrorMessage="*" SetFocusOnError="True" 
                    ValidationGroup="AgregarProducto"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style27">
                            <asp:Label ID="L_Imagen" runat="server" Text="Imagen:"></asp:Label>
                        </td>
                        <td class="auto-style28">
                <asp:FileUpload ID="FU_Producto" runat="server" />
                <asp:RequiredFieldValidator ID="RFV_FUProducto" runat="server" 
                    ControlToValidate="FU_Producto" ErrorMessage="* Falta la imagen" SetFocusOnError="True" 
                    ValidationGroup="AgregarProducto"></asp:RequiredFieldValidator>
                        </td>
                        <td class="auto-style29">
                            <asp:Label ID="L_Descripcion" runat="server" Text="Descripcion:"></asp:Label>
                        </td>
                        <td class="auto-style30">
                <asp:TextBox ID="TB_Descripcion" runat="server" ValidationGroup="AgregarProducto" 
                    Width="77%" TextMode="MultiLine" Height="117px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFV_TB_desc" runat="server" 
                    ControlToValidate="TB_Descripcion" ErrorMessage="*" SetFocusOnError="True" 
                    ValidationGroup="AgregarProducto"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style31" rowspan="3">
                            <asp:Image ID="I_Producto" runat="server" Height="100%" Visible="False" 
                                Width="100%" ImageUrl="~/Imagenes/ImagenesWeb/producto_vacio.jpg" />
                        </td>
                        <td class="auto-style18">
                            &nbsp;</td>
                        <td class="auto-style29">
                            &nbsp;</td>
                        <td class="auto-style30">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style18">
                <asp:Button ID="B_NProducto" runat="server" Text="Guardar Producto" 
                    ValidationGroup="AgregarProducto" onclick="B_NProducto_Click" Width="128px" />
                                    </td>
                        <td class="auto-style17">
                            &nbsp;</td>
                        <td class="auto-style17">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style28">
                            &nbsp;</td>
                        <td class="auto-style29">
                            &nbsp;</td>
                        <td class="auto-style30">
                            &nbsp;&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style27">
                            &nbsp;</td>
                        <td class="auto-style47">
                <asp:Button ID="B_Actualizar" runat="server" OnClick="B_Actualizar_Click" Text="Actualizar" ValidationGroup="AgregarProducto" Visible="False" />
                <asp:Button ID="B_Cancelar" runat="server" OnClick="B_Cancelar_Click" Text="Cancelar" ValidationGroup="CancelarProducto" Visible="False" />
                        </td>
                        <td class="auto-style29">
                            &nbsp;</td>
                        <td class="auto-style30">
                            &nbsp;&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style27">
                            </td>
                        <td class="auto-style28">
                            </td>
                        <td class="auto-style29">
                            &nbsp;</td>
                        <td class="auto-style30">
                            </td>
                    </tr>
                    <tr>
                        <td class="auto-style41">
                            &nbsp;</td>
                        <td class="auto-style12">
                            &nbsp;</td>
                        <td class="auto-style19" colspan="2">
                            &nbsp;</td>
                    </tr>
                </table>
                <br />
                <br />
                <table class="auto-style1">
                    <tr>
                        <td style="text-align: center; background-color: #0066FF">
                <asp:Label ID="L_tituloMostElimiProd" runat="server" ForeColor="White" 
                    Text="MOSTRAR Y ELIMINAR PRODUCTOS"></asp:Label>
                        </td>
                    </tr>
                </table>
                <br />
                <br />
                <table class="auto-style1">
                    <tr>
                        <td>
                <asp:DataList ID="DL_Producto" runat="server" BackColor="White" 
                    BorderColor="Blue" BorderStyle="None" BorderWidth="1pt" CellPadding="3" 
                    CellSpacing="5" DataKeyField="id_producto" DataSourceID="MostrarProductos" 
                    GridLines="Both" onitemcommand="DL_Producto_ItemCommand" 
                    RepeatColumns="5" RepeatDirection="Horizontal" Height="30%" Width="100%" 
                                onitemdatabound="DL_Producto_ItemDataBound">
                    <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                    <AlternatingItemStyle BackColor="#F7F7F7" />
                    <ItemStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                    <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <ItemTemplate>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Image ID="I_Producto" runat="server" Height="100px" 
                            ImageUrl='<%# Eval("imagen_producto") %>' Width="100px" />
                        <br />
                        <br />
                        <asp:Label ID="L_TituloNombre" runat="server" ForeColor="Red" Text="NOMBRE: "></asp:Label>
&nbsp;<asp:Label ID="L_NombreProducto" runat="server" 
                            Text='<%# Eval("nombre_producto") %>'></asp:Label>
                        <br />
                        <asp:Label ID="L_TituloCodigo" runat="server" ForeColor="Red" Text="CODIGO: "></asp:Label>
                        &nbsp;
                        <asp:Label ID="L_CodigoProducto" runat="server" 
                            Text='<%# Eval("id_producto") %>'></asp:Label>
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:ImageButton ID="IB_Eliminar" runat="server" Height="40px" 
                            ImageUrl="~/Imagenes/ImagenesWeb/Eliminar.jpg" Width="40px" />
                    </ItemTemplate>
                </asp:DataList>
                        </td>
                    </tr>
                    <tr>
                        <td>
                <asp:ObjectDataSource ID="MostrarProductos" runat="server" 
                    SelectMethod="mostrarproductos" TypeName="LogicaC.LAAgregarProducto"></asp:ObjectDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                </table>
                <br />
            </td>
        </tr>
        </table>
</asp:Content>

