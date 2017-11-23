<%@ Page Language="C#" MasterPageFile="~/Presentacion/plantilla1.master" AutoEventWireup="true" CodeFile="~/LogicaPresentacion/CajeroConsulta.aspx.cs" Inherits="Presentacion_CajeroConsulta" Title="Consulta de pedidos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
        	width:25%;
        }
        .style5
        {
            text-align: center;
        }
        .style12
        {
            width: 222px;
            height: 24px;
        }
        .style13
        {
            text-align: left;
            height: 75px;
        }
        .style14
        {
            width: 222px;
            height: 33px;
        }
        .style15
        {
            text-align: left;
            height: 33px;
        }
        .style16
        {
            width: 25%;
            text-align: center;
            height: 33px;
        }
        .style22
        {
            height: 75px;
            text-align: center;
        }
        .style23
        {
            height: 76px;
        }
        .style6
        {
            width: 100%;
        }
        .style25
        {
            width: 100%;
        }
        .style26
        {
            height: 27px;
        }
        .style27
        {
            height: 27px;
            width: 50%;
        }
        .style28
        {
            width: 50%;
        }
        .style29
        {
            width: 171px;
        }
        .style30
        {
            height: 29px;
            text-align: center;
        }
        .style31
        {
            text-align: center;
            height: 29px;
            width: 12%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
        <table class="style1">
            <tr>
                <td class="style22">
                    &nbsp;</td>
                <td class="style13" colspan="2">
                    <asp:ImageButton ID="IB_Atras" runat="server" Height="47px" 
        ImageUrl="~/Imagenes/ImagenesWeb/atras.png" onclick="IB_Atras_Click" 
        Width="52px" />
                    </td>
            </tr>
            <tr>
                <td class="style30">
                    </td>
                <td class="style31" colspan="2" bgcolor="Blue">
                    <asp:Label ID="L_TituloConsultaCajero" runat="server" ForeColor="White" 
                        Text="INGRESE EL NUMERO DE CEDULA DEL CLIENTE A BUSCAR PEDIDO"></asp:Label>
                    </td>
            </tr>
            <tr>
                <td class="style23" colspan="3">
                    <br />
                    <asp:Label ID="L_TtituloPedido" runat="server" 
                        Text="Buscar Pedido Cliente. CEDULA :"></asp:Label>
                    &nbsp;<asp:TextBox ID="TB_cedula" runat="server" MaxLength="10" ValidationGroup="buscarCliente" 
                        Width="20%"></asp:TextBox>
                    &nbsp;
                    <asp:Button ID="B_BuscarCedula" runat="server" onclick="B_BuscarCedula_Click" Text="Buscar" 
                        ValidationGroup="buscarCliente" style="text-align: left" />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RFV_cedula" runat="server" 
                        ControlToValidate="TB_cedula" ErrorMessage="*" SetFocusOnError="True" 
                        ValidationGroup="buscarCliente"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="REV_NumerosCedula" runat="server" 
                        ControlToValidate="TB_cedula" ErrorMessage="Solo numeros" 
                        ValidationExpression="^[0-9]*" ValidationGroup="buscarCliente"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style22" colspan="2">
                    &nbsp;</td>
                <td class="style25">
                    <asp:Label ID="L_MensajeCarrito" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:GridView ID="GV_Carrito" runat="server" AutoGenerateColumns="False" 
                        DataSourceID="ODS_MostrarCarritoCajero" EnableModelValidation="True" 
                        DataKeyNames="id_pedido" 
                        onselectedindexchanged="GV_Carrito_SelectedIndexChanged" CellPadding="4" 
                        ForeColor="#333333" GridLines="None" AllowPaging="True" 
                        EmptyDataText="NO HAY PEDIDOS">
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <Columns>
                            <asp:TemplateField HeaderText="#">
                                <ItemTemplate>
                                    &nbsp;&nbsp;
                                    <asp:Label ID="L_IdPedido" runat="server" Text='<%# Bind("id_pedido") %>'></asp:Label>
                                    &nbsp;&nbsp;
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
                                    <asp:Label ID="L_DescripcionProducto" runat="server" 
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
                                    <asp:TextBox ID="TB_Cantidad" runat="server" Text='<%# Bind("unidades_producto") %>' ValidationGroup="Actualizar" Width="55px" MaxLength="5"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RFV_TB_Unidades" runat="server" ControlToValidate="TB_Cantidad" ErrorMessage="*" ValidationGroup="Actualizar"></asp:RequiredFieldValidator>
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
                            <asp:TemplateField HeaderText="Hora de reserva">
                                <ItemTemplate>
                                    <asp:Label ID="L_FechaPedido" runat="server" Text='<%# Bind("fecha_pedido") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField ShowHeader="False" HeaderText="Eliminar">
                                <ItemTemplate>
                                    <asp:ImageButton ID="IB_Eliminar" runat="server" Height="34px" 
                                        ImageUrl="~/Imagenes/ImagenesWeb/borrar.jpg" Width="43px" 
                                        ValidationGroup="Borrar" CommandName="Select" />
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
                    <asp:ObjectDataSource ID="ODS_MostrarCarritoCajero" runat="server" 
                        SelectMethod="obtenerPedido" TypeName="LogicaC.LCajeroConsulta">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="TB_cedula" DefaultValue="null" Name="filtro" 
                                PropertyName="Text" Type="String" />
                        </SelectParameters>
                    </asp:ObjectDataSource>
                    <br />
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:Button ID="B_vender" runat="server" onclick="B_vender_Click" 
                        Text="VENDER PRODUCTOS" Visible="False" 
                        style="text-align: center; height: 26px;" />
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <br />
                    <br />
                    <asp:Label ID="L_titulototalpedido" runat="server" Text="TOTAL PEDIDO:"></asp:Label>
                    &nbsp;<asp:Label ID="l_TotalPedido" runat="server" Text="0" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="3" bgcolor="Blue">
                    <asp:Label ID="L_TituloConsultaProductos" runat="server" ForeColor="White" 
                        Text="INGRESE EL PRODUCTO A BUSCAR"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="3">
    <asp:Label ID="L_TituloProducto" runat="server" Text="Buscar Producto" Visible="False"></asp:Label>
    &nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TB_Producto" runat="server" MaxLength="20" 
        ValidationGroup="Buscar" Visible="False"></asp:TextBox>
    <asp:Button ID="B_BuscarProducto" runat="server" onclick="B_BuscarProducto_Click" 
        Text="Buscar" ValidationGroup="Buscar" Visible="False" />
                &nbsp;<asp:RegularExpressionValidator ID="REV_letras_numeros0" runat="server" 
        ControlToValidate="TB_Producto" ErrorMessage="Solo letras y numeros" 
        ValidationExpression="^[0-9A-Za-z&quot; &quot;ñÑ]*$" ValidationGroup="Buscar" 
                        Visible="False"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="3">
        <asp:Label ID="L_MensajeProducto" runat="server" Font-Names="Comic Sans MS" 
            Font-Size="X-Large" ForeColor="Red" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="3">
             
                <asp:DataList ID="DL_Catalogo" runat="server" BackColor="White" 
        BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
        GridLines="Both" DataKeyNames="id_producto" 
        RepeatDirection="Horizontal" RepeatColumns="3" style="margin-right: 0px" 
        Width="400px" onitemcommand="DL_Catalogo_ItemCommand" DataSourceID="ODS_Catalogo" 
                        onitemdatabound="DL_Catalogo_ItemDataBound">
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <ItemStyle ForeColor="#000066" />
        <SelectedItemStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <ItemTemplate>
          
            <table class="style6">
                <tr>
                    <td colspan="2" class="style27">
                        <asp:Label ID="L_TituloProducto" runat="server" style="color: #FF0000; font-weight: 700" 
                            Text="PRODUCTO"></asp:Label>
                        &nbsp;&nbsp;&nbsp;
                    </td>
                    <td class="style26" colspan="2">
                        <asp:Label ID="L_TituloProveedor" runat="server" 
                            style="color: #FF0000; font-weight: 700" Text="PROVEEDOR"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="style28">
                        <asp:Label ID="L_IdProducto" runat="server" 
                            style="color: #FF0000; font-weight: 700" Text='<%# Eval("id_producto") %>' 
                            Visible="False"></asp:Label>
                    </td>
                    <td colspan="2">
                        <asp:Label ID="L_NombreProveedor" runat="server" 
                            style="color: #FF0000; font-weight: 700" Text='<%# Eval("nombre_proveedor") %>' 
                            Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td rowspan="2">
                        <asp:Image ID="I_Producto" runat="server" Height="122px" 
                            ImageUrl='<%# Eval("imagen_producto") %>' Width="102px" />
                        <br />
                        <asp:Label ID="L_Nombre" runat="server" Text='<%# Eval("nombre_producto") %>' 
                            Font-Size="Large" ForeColor="Blue"></asp:Label>
                    </td>
                    <td colspan="2" class="style29">
                        <asp:Label ID="L_TituloPrecio" runat="server" style="color: #FF0000; font-weight: 700" 
                            Text="PRECIO"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="L_Precio" runat="server" 
                            Text='<%# "$ "+Eval("precio_producto_v") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="style29">
                        <asp:Label ID="L_TiruloCantidad" runat="server" style="color: #FF0000; font-weight: 700" 
                            Text="CANTIDAD"></asp:Label>
                        <asp:Label ID="L_Cantidad" runat="server" style="color: #FF0000; font-weight: 700" 
                            Text='<%# Eval("cantidad_producto") %>'></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="T_Cantidad" runat="server" Height="19px" 
                             Width="35px" MaxLength="3"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="REV_SoloNumeros" runat="server" 
                            ControlToValidate="T_Cantidad" ErrorMessage="Solo Numeros" 
                            ValidationExpression="^[0-9]*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
            </table>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            
            <asp:Button ID="B_Comprar" runat="server" Text="Comprar"
                CommandArgument='<%# Eval("id_producto") %>' />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           
        </ItemTemplate>
    </asp:DataList>
                
                    <br />
                
                <asp:ObjectDataSource ID="ODS_Catalogo" runat="server" SelectMethod="llenarDL" 
                    TypeName="LogicaC.LCajeroConsulta">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TB_cedula" 
                            DefaultValue="null" Name="filtroCedula" PropertyName="Text" 
                            Type="String" />
                        <asp:ControlParameter ControlID="TB_Producto" DefaultValue="null" 
                            Name="filtroProducto" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:ObjectDataSource>
                
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    &nbsp;</td>
            </tr>
            </table>
    </p>
    <p>
    </p>
</asp:Content>

