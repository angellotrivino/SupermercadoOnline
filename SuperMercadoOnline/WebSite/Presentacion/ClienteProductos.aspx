<%@ Page Language="C#" MasterPageFile="~/Presentacion/plantilla1.master" AutoEventWireup="true" CodeFile="~/LogicaPresentacion/ClienteProductos.aspx.cs" Inherits="Presentacion_ClienteProductos" Title="CLIENTE_PRODUCTOS" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style5
        {
            width: 50%;
            text-align: center;
        }
        .style6
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    &nbsp;<asp:ImageButton ID="IB_Atras" runat="server" Height="47px" 
        ImageUrl="~/Imagenes/ImagenesWeb/atras.png" onclick="IB_Atras_Click" 
        Width="52px" />
                    <table>
        <tr>
            <td class="style5">
<p style="text-align: left">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:ImageButton 
                    ID="IB_Carrito" runat="server" Height="20%" 
                    ImageUrl="~/Imagenes/ImagenesWeb/carrito_icon.png" Width="20%" 
                    onclick="IB_Carrito_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <table class="style6">
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="Blue" style="text-align: center">
                <asp:Label ID="L_TituloInserProductos" runat="server" ForeColor="White" 
                    Text="INGRESAR PRODUCTOS AL CARRITO"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <br />
</p>
                <p>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="L_Producto" runat="server" Text="Buscar Producto"></asp:Label>
    &nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TB_Buscar" runat="server" MaxLength="20" 
        ValidationGroup="Buscar"></asp:TextBox>
    <asp:Button ID="B_Buscar" runat="server" onclick="B_Buscar_Click" 
        Text="Buscar" ValidationGroup="Buscar" />
                &nbsp;<asp:RegularExpressionValidator ID="REV_letras_numeros" runat="server" 
        ControlToValidate="TB_Buscar" ErrorMessage="Solo letras y numeros" 
        ValidationExpression="^[0-9A-Za-z&quot; &quot;ñÑ]*$" ValidationGroup="Buscar"></asp:RegularExpressionValidator>
                </p>
                <p>
        <asp:Label ID="L_Mensaje" runat="server" Font-Names="Comic Sans MS" 
            Font-Size="X-Large" ForeColor="Red"></asp:Label>
</p>
             
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
                    <td colspan="3" style="text-align: left">
                        <asp:Label ID="L_TituloProducto" runat="server" style="color: #FF0000; font-weight: 700" 
                            Text="PRODUCTO"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3" style="text-align: left">
                        <asp:Label ID="L_IdProducto" runat="server" 
                            style="color: #FF0000; font-weight: 700" Text='<%# Eval("id_producto_proveedor") %>' 
                            Visible="False"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                </tr>
                <tr>
                    <td rowspan="3">
                        <asp:Image ID="I_Producto" runat="server" Height="122px" 
                            ImageUrl='<%# Eval("imagen_producto") %>' Width="102px" />
                        <br />
                        <asp:Label ID="L_Nombre" runat="server" Text='<%# Eval("nombre_producto") %>' 
                            Font-Size="Large" ForeColor="Blue"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="L_TituloProve" runat="server" 
                            style="color: #FF0000; font-weight: 700" Text="PROVEEDOR"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="L_NombreProveedor" runat="server" 
                            Text='<%# Eval("nombre_proveedor") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="L_TituloPrecio" runat="server" style="color: #FF0000; font-weight: 700" 
                            Text="PRECIO"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="L_Precio" runat="server" 
                            Text='<%# "$ "+Eval("precio_producto_v") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="L_TiruloCantidad" runat="server" 
                            style="color: #FF0000; font-weight: 700" Text="CANTIDAD"></asp:Label>
                        <asp:Label ID="L_Cantidad" runat="server" 
                            style="color: #FF0000; font-weight: 700" Text='<%# Eval("cantidad_producto") %>'></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="T_Cantidad" runat="server" Height="19px" MaxLength="3" 
                            Width="35px"></asp:TextBox>
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
                
                <asp:ObjectDataSource ID="ODS_Catalogo" runat="server" SelectMethod="llenarDL" 
                    TypeName="LogicaC.LClienteProductos">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TB_Buscar" ConvertEmptyStringToNull="False" 
                            DefaultValue="null" Name="filtro" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:ObjectDataSource>
                
<p style="text-align: center">

    
</p>
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

