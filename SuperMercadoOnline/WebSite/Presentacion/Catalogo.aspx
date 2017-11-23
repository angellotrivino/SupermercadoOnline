<%@ Page EnableEventValidation="false" Language="C#" MasterPageFile="~/Presentacion/plantilla1.master" AutoEventWireup="true" CodeFile="~/LogicaPresentacion/Catalogo.aspx.cs" Inherits="Presentacion_Catalogo" Title="Catalogo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style22
        {
            width: 33%;
        }
        .style23
        {
            width: 25%;
        }
        .style24
        {
            width: 30%;
        }
        .style6
        {
            width: 100%;
        }
        .style25
        {
            width: 33%;
        }
        .style26
        {
            height: 24px;
        }
        .style27
        {
            width: 40%;
        }
        .style28
        {
        }
        .style29
        {
            width: 100%;
        }
        </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
   
    <p style="text-align: right">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    <table class="style16">
        <tr>
            <td colspan="3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style25">
        <asp:Button ID="B_contactenos" runat="server" Height="34px" onclick="B_contactenos_Click" 
            style="font-weight: 700; color: #0000FF; background-color: #00FF00" 
            Text="CONTACTENOS" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            <td class="style22">
                <asp:Button ID="B_ManualUsuario" runat="server" BackColor="White" 
                    ForeColor="Red" Height="34px" onclick="B_ManualUsuario_Click" 
                    style="margin-top: 0px" Text="MANUAL USUARIO" Width="194px" />
            </td>
            <td>
    <asp:LinkButton ID="LB_Login" runat="server" onclick="LB_Login_Click" 
        style="text-align: left" Font-Size="Medium" BorderColor="Black">INICIAR SESION</asp:LinkButton>
            </td>
        </tr>
        </table>
    <p>
    </p>
    <table class="style16">
        <tr>
            <td colspan="3" style="text-align: center">
    <asp:Image ID="I_Catalogo" runat="server" 
        ImageUrl="~/Imagenes/ImagenesWeb/catalogo.jpg" style="text-align: center" />
            </td>
        </tr>
        <tr>
            <td class="style23">
    <asp:Label ID="L_Producto" runat="server" Text="BUSCAR PRODUCTO:"></asp:Label>
            </td>
            <td class="style24">
    <asp:TextBox ID="TB_Buscar" runat="server" MaxLength="20" 
        ValidationGroup="Buscar"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="B_Buscar" runat="server" onclick="B_Buscar_Click" 
        Text="Buscar" ValidationGroup="Buscar" Height="26px" />
            </td>
            <td>
                <asp:RegularExpressionValidator ID="REV_letras_numeros" runat="server" 
        ControlToValidate="TB_Buscar" ErrorMessage="Solo letras y numeros" 
        ValidationExpression="^[0-9A-Za-z&quot; &quot;ñÑ]*$" ValidationGroup="Buscar"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td colspan="3" style="text-align: center">
        <asp:Label ID="L_Mensaje" runat="server" Font-Names="Comic Sans MS" 
            Font-Size="Medium" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="3">
   
   
    <asp:DataList ID="DL_Productos" runat="server" BackColor="White" 
        BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                        GridLines="Both" DataKeyNames="idProducto" 
        RepeatDirection="Horizontal" RepeatColumns="3" style="margin-right: 0px" 
        Width="400px" DataSourceID="ODS_Productos" 
                    onitemdatabound="DL_Productos_ItemDataBound">
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <ItemStyle ForeColor="#000066" />
        <SelectedItemStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <ItemTemplate>
            <table class="style6">
                <tr>
                    <td colspan="3" class="style26">
                        <asp:Label ID="L_Titulo" runat="server" style="color: #FF0000; font-weight: 700" 
                            Text="PRODUCTO"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td rowspan="2" class="style27">
                        <asp:Image ID="I_Producto" runat="server" Height="122px" 
                            ImageUrl='<%# Eval("imagen_producto") %>' Width="102px" />
                        <br />
                        <asp:Label ID="L_NombreProducto" runat="server" 
                            Text='<%# Eval("nombre_producto") %>'></asp:Label>
                    </td>
                    <td class="style28">
                        <asp:Label ID="L_Subtitulo" runat="server" style="color: #FF0000; font-weight: 700" 
                            Text="PRECIO"></asp:Label>
                        &nbsp;&nbsp;
                    </td>
                    <td class="style29">
                        <asp:Label ID="L_Precio" runat="server" 
                            Text='<%# "$ "+Eval("precio_producto_v") %>'></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                </tr>
                <tr>
                    <td class="style28" colspan="2">
                        &nbsp;<asp:Label ID="L_TituloProve" runat="server" 
                            style="color: #FF0000; font-weight: 700" Text="PROVEEDOR"></asp:Label>
&nbsp;<asp:Label ID="L_NombreProveedor" runat="server" 
                            Text='<%# Eval("nombre_proveedor") %>'></asp:Label>
                    </td>
                </tr>
            </table>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            
            <asp:Button ID="B_Comprar" runat="server" Text="Comprar" 
                CommandArgument='<%# Eval("id_producto") %>' onclick="B_Comprar_Click"/>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </ItemTemplate>
    </asp:DataList>
                <asp:ObjectDataSource ID="ODS_Productos" runat="server" SelectMethod="llenarDL" 
                    TypeName="LogicaC.LCatalogo">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TB_Buscar" ConvertEmptyStringToNull="False" 
                            DefaultValue="null" Name="filtro" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:ObjectDataSource>
                </td>
        </tr>
    </table>
    <table class="style6">
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <br />
    
</asp:Content>

