<%@ Page Language="C#" MasterPageFile="~/Presentacion/Plantilla1.master" AutoEventWireup="true" CodeFile="~/LogicaPresentacion/AdministradorAdquirirProducto.aspx.cs" Inherits="Presentacion_AdministradorAdquirirP" Title="Adquirir producto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style6
        {
            width: 50%;
            height: 35px;
        }
        .style5
        {
            font-weight: 700;
        }
        .style7
        {
            width: 100%;
        }
        .style8
        {
            width: 25%;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ImageButton ID="IB_Atras" runat="server" Height="58px" 
        ImageUrl="~/Imagenes/ImagenesWeb/atras.png" onclick="IB_Atras_Click" 
        Width="59px" />
    <br />
    <table class="style7">
        <tr>
            <td style="text-align: center; background-color: #0066FF">
                <asp:Label ID="L_TituloAdquiProdu" runat="server" style="color: #FFFFFF" 
                    
                    Text="ADQUIRIR PRODUCTO &quot;POR QUE FALTAN PRODUCTOS EN EL INVENTARIO&quot;"></asp:Label>
            </td>
        </tr>
    </table>
    <br />
    <table class="style1">
        <tr>
            <td class="style5">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
            </td>
        </tr>
        <tr>
            <td class="style5">
                <asp:GridView ID="GV_RelacionProductoProveedor" runat="server" 
                    AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" 
                    BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" 
                    DataSourceID="RelacionProductoProveedor" Height="30%" Width="90%" 
                    BorderStyle="None" EnableModelValidation="True" style="text-align: left" 
                    DataKeyNames="id_producto_proveedor" 
                    onselectedindexchanged="GV_RelacionProductoProveedor_SelectedIndexChanged" 
                    
                    onselectedindexchanging="GV_RelacionProductoProveedor_SelectedIndexChanging" 
                    AllowPaging="True" 
                    onrowcancelingedit="GV_RelacionProductoProveedor_RowCancelingEdit">
                    <Columns>
                        <asp:TemplateField HeaderText="Logo Proveedor">
                            <ItemTemplate>
                                <asp:Image ID="I_Proveedor" runat="server" Height="100px" 
                                    ImageUrl='<%# Eval("logo_proveedor") %>' Width="100px" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Nombre Proveedor">
                            <ItemTemplate>
                                <asp:Label ID="L_NombreProveedor" runat="server" 
                                    Text='<%# Bind("nombre_proveedor") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Imagen Producto">
                            <ItemTemplate>
                                <asp:Image ID="I_Producto" runat="server" Height="100px" 
                                    ImageUrl='<%# Eval("imagen_producto") %>' Width="100px" 
                                    style="text-align: center" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Nombre Producto">
                            <ItemTemplate>
                                <asp:Label ID="L_NombreProducto" runat="server" Text='<%# Bind("nombre_producto") %>' 
                                    style="text-align: center"></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Precio Compra">
                            <ItemTemplate>
                                <asp:Label ID="L_PrecioCompra" runat="server" 
                                    Text='<%# Bind("precio_producto") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="PrecioVenta">
                            <EditItemTemplate>
                                <asp:TextBox ID="TB_PrecioVenta" runat="server" Text='<%# Bind("precio_producto_v") %>' MaxLength="10" ValidationGroup="Actualizar" Width="50%"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RFV_TB_PrecioVenta" runat="server" ControlToValidate="TB_PrecioVenta" ErrorMessage="*" ValidationGroup="Actualizar"></asp:RequiredFieldValidator>
                                <br />
                                &nbsp;<asp:RegularExpressionValidator ID="REV_Numeros1" runat="server" ControlToValidate="TB_PrecioVenta" ErrorMessage="Solo numeros y decimales (,)" ValidationExpression="^[0-9,]*" ValidationGroup="Actualizar"></asp:RegularExpressionValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="L_PrecioVenta" runat="server" 
                                    Text='<%# Bind("precio_producto_v") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Unidades">
                            <EditItemTemplate>
                                <asp:TextBox ID="TB_Cantidad" runat="server" 
                                    Text='<%# Bind("cantidad_producto") %>' MaxLength="5" ValidationGroup="Actualizar" Width="30%"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RFV_TB_Unidades" runat="server" ControlToValidate="TB_Cantidad" ErrorMessage="*" ValidationGroup="Actualizar"></asp:RequiredFieldValidator>
                                &nbsp;
                                <asp:RegularExpressionValidator ID="REV_Numeros" runat="server" ControlToValidate="TB_Cantidad" ErrorMessage="Solo numeros" ValidationExpression="^[0-9]*" ValidationGroup="Actualizar"></asp:RegularExpressionValidator>
                                <br />
                                <br />
                                <br />
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="L_UnidadesProducto" runat="server" 
                                    Text='<%# Bind("cantidad_producto") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Opciones" ShowHeader="False">
                            <EditItemTemplate>
                                <asp:LinkButton ID="LB_Actualizar" runat="server" 
                                    Text='<%# Eval("Actualizar") %>'  ValidationGroup="Actualizar" 
                                    CommandName="Select"></asp:LinkButton>
                                &nbsp;<asp:LinkButton ID="LB_Cancelar" runat="server" CausesValidation="False" 
                                    CommandName="Cancel" Text='<%# Eval("Cancelar") %>' ValidationGroup="Cancelar"></asp:LinkButton>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:LinkButton ID="LB_Editar" runat="server" CausesValidation="False" 
                                    CommandName="Edit" Text='<%# Eval("Editar") %>' ValidationGroup="Editar" 
                                    onclick="LB_Editar_Click"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <PagerStyle BackColor="White" ForeColor="Black" 
                        HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="#CC3333" ForeColor="White" Font-Bold="True" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td class="style5">
                <asp:ObjectDataSource ID="RelacionProductoProveedor" runat="server" 
                    SelectMethod="mostraradquirirproductos" 
                    TypeName="LogicaC.LAAdquirirProducto">
                    <SelectParameters>
                        <asp:SessionParameter Name="idio" SessionField="idioma" Type="Int32" />
                    </SelectParameters>
                </asp:ObjectDataSource>
                </td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

