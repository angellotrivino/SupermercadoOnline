<%@ Page Title="Carrito Cliente" Language="C#" MasterPageFile="~/Presentacion/plantilla1.master" AutoEventWireup="true" CodeFile="~/LogicaPresentacion/ClienteCarrito.aspx.cs" Inherits="Presentacion_ClienteCarrito" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style21
        {
        }
        .auto-style22
        {
            width: 23%;
            height: 23px;
        }
        .auto-style23
        {
            height: 23px;
        }
        .auto-style24
        {
            width: 23%;
        }
        .style22
        {
            width: 50%;
        }
        .style23
        {
            width: 100%;
        }
        .style24
        {
            height: 127px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
        <table class="auto-style1">
            <tr>
                <td style="text-align: center; background-color: #0066FF" colspan="3">
                    <asp:Label ID="Label4" runat="server" style="color: #FFFFFF" Text="CARRITO DE COMPRAS"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="3">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="3" style="text-align: justify">
    <asp:ImageButton ID="IB_Atras" runat="server" Height="47px" 
        ImageUrl="~/Imagenes/ImagenesWeb/atras.png" onclick="IB_Atras_Click" 
        Width="52px" />
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td colspan="3" style="text-align: center">
                    <asp:ImageButton ID="IB_Productos" runat="server" Height="30%" 
                        ImageUrl="~/Imagenes/ImagenesWeb/producto_icon.gif" 
                        onclick="IB_Productos_Click" Width="18%" />
                </td>
            </tr>
            <tr>
                <td colspan="3" style="text-align: center">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="3" style="text-align: center">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="3" class="style24">
                    <asp:Label ID="L_TituloCantidad" runat="server" ForeColor="Red" 
                        Font-Size="Large">CANTIDAD DE PRODUCTOS DISPONIBLES</asp:Label>
                    <asp:DataList ID="DL_ListaProductos" runat="server" 
                        DataSourceID="ODS_ListarProductos" RepeatColumns="5" 
                        RepeatDirection="Horizontal" CellSpacing="10" 
                        onitemdatabound="DL_ListaProductos_ItemDataBound">
                        <ItemTemplate>
                            <table class="style16" style="width: 100%">
                                <tr>
                                    <td class="style22">
                                        <asp:Label ID="L_TituloProducto" runat="server" ForeColor="Red">Producto</asp:Label>
                                    </td>
                                    <td class="style23">
                                        <asp:Label ID="L_TituloCantidad" runat="server" ForeColor="Red">Cantidad</asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style22">
                                        <asp:Label ID="L_Nombre" runat="server" Text='<%# Eval("nombre_producto") %>'></asp:Label>
                                    </td>
                                    <td class="style23">
                                        <asp:Label ID="L_Cantidad" runat="server" 
                                            Text='<%# Eval("cantidad_producto") %>'></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:DataList>
                    <asp:ObjectDataSource ID="ODS_ListarProductos" runat="server" 
                        SelectMethod="mostrarproductos" TypeName="LogicaC.LClienteCarrito">
                    </asp:ObjectDataSource>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="3" bgcolor="Blue" style="text-align: center">
                    <asp:Label ID="L_TituloModCarrito" runat="server" ForeColor="White" 
                        Text="MODIFICAR O ELIMINAR CARRITO PEDIDO"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:Label ID="L_Mensaje" runat="server" ForeColor="Red" Font-Size="Large"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:GridView ID="GV_Carrito" runat="server" AutoGenerateColumns="False" 
                        DataSourceID="ODS_MostrarCarrito" EnableModelValidation="True" 
                        DataKeyNames="id_pedido" CellPadding="4" ForeColor="#333333" 
                        GridLines="None" onselectedindexchanged="GV_Carrito_SelectedIndexChanged" 
                        onselectedindexchanging="GV_Carrito_SelectedIndexChanging">
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <Columns>
                            <asp:TemplateField HeaderText="#">
                                <ItemTemplate>
                                    &nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="L_IdPedido" runat="server" Text='<%# Bind("id_pedido") %>'></asp:Label>
                                    &nbsp;&nbsp;<br />
                                    &nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="L_IdProducto" runat="server" Text='<%# Bind("id_producto") %>' 
                                        Visible="False"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Proveedor">
                                <ItemTemplate>
                                    <asp:Label ID="L_NombreProveedor" runat="server" 
                                        Text='<%# Bind("nombre_proveedor") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Producto">
                                <ItemTemplate>
                                    <asp:Label ID="L_NombreProducto" runat="server" 
                                        Text='<%# Bind("nombre_producto") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Decripcion">
                                <ItemTemplate>
                                    <asp:Label ID="L_Descripcion" runat="server" 
                                        Text='<%# Bind("descripcion_producto") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Precio">
                                <ItemTemplate>
                                    <asp:Label ID="L_Precio" runat="server" Text='<%# Bind("precio_producto_v") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Cantidad">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TB_Cantidad" runat="server" 
                                        Text='<%# Bind("unidades_producto") %>' ValidationGroup="Actualizar" 
                                        Width="55px" MaxLength="3"></asp:TextBox>
                                    &nbsp;
                                    <br />
                                    <asp:RegularExpressionValidator ID="REV_Numeros" runat="server" ControlToValidate="TB_Cantidad" ErrorMessage="Solo numeros" ValidationExpression="^[0-9]*" ValidationGroup="Actualizar"></asp:RegularExpressionValidator>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="L_Cantidad" runat="server" 
                                        Text='<%# Bind("unidades_producto") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Total">
                                <ItemTemplate>
                                    <asp:Label ID="L_Total" runat="server" Text='<%# Bind("total_producto") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Fecha">
                                <ItemTemplate>
                                    <asp:Label ID="Label9" runat="server" Text='<%# Bind("fecha_pedido") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Estado">
                                <ItemTemplate>
                                    <asp:Label ID="Label8" runat="server" Text='<%# Bind("estado_pedido") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField ShowHeader="False" HeaderText="Editar">
                                <EditItemTemplate>
                                    <asp:ImageButton ID="IB_Actualizar" runat="server" Height="37px" 
                                        ImageUrl="~/Imagenes/ImagenesWeb/actualizar.jpg" Width="40px" 
                                        ValidationGroup="Actualizar" OnClick="IB_Actualizar_Click" 
                                        CommandName="Select" />
                                    &nbsp;&nbsp;
                                    <asp:ImageButton ID="IB_Cancelar" runat="server" CommandName="Cancel" 
                                        Height="36px" ImageUrl="~/Imagenes/ImagenesWeb/cancelar.jpg" Width="38px" 
                                        ValidationGroup="Cancelar" onclick="IB_Cancelar_Click" />
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:ImageButton ID="IB_Editar" runat="server" CommandName="Edit" Height="32px" 
                                        ImageUrl="~/Imagenes/ImagenesWeb/editar.png" Width="38px" 
                                        ValidationGroup="Editar" /> 
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField ShowHeader="False" HeaderText="Eliminar">
                                <ItemTemplate>
                                    <asp:ImageButton ID="IB_Eliminar" runat="server" Height="34px" 
                                        ImageUrl="~/Imagenes/ImagenesWeb/borrar.jpg" Width="43px" 
                                        ValidationGroup="Borrar" CommandName="Select" 
                                        onclick="IB_Eliminar_Click" />
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
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style22">
                    <asp:Label ID="L_MensajeTotal" runat="server" Text="TOTAL PEDIDO:"></asp:Label>
                    &nbsp;
                    <asp:Label ID="l_TotalPedido" runat="server" Text="0" ForeColor="Red"></asp:Label>
                </td>
                <td class="auto-style22">
                    &nbsp;</td>
                <td class="auto-style23">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style24">
                    &nbsp;</td>
                <td class="auto-style24">
                    &nbsp;</td>
                <td class="auto-style21">
                    <asp:Button ID="B_Comprar" runat="server" OnClick="B_Comprar_Click" 
                        Text="APARTAR PRODUCTOS" ValidationGroup="Comprar" style="height: 26px" />
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td class="auto-style24">
                    &nbsp;</td>
                <td class="auto-style24">
                    &nbsp;</td>
                <td class="auto-style21">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:ObjectDataSource ID="ODS_MostrarCarrito" runat="server" 
                        SelectMethod="mostrarcarrito" TypeName="LogicaC.LClienteCarrito">
                        <SelectParameters>
                            <asp:SessionParameter Name="idCliente" 
                                SessionField="idUsuario" Type="String" />
                            <asp:SessionParameter Name="idio" SessionField="idioma" Type="Int32" />
                        </SelectParameters>
                    </asp:ObjectDataSource>
                </td>
            </tr>
            <tr>
                <td colspan="3">&nbsp;</td>
            </tr>
        </table>
    </p>
    <p>
    </p>
</asp:Content>

