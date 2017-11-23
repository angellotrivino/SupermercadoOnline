<%@ Page Language="C#" MasterPageFile="~/Presentacion/Plantilla1.master" AutoEventWireup="true" CodeFile="~/LogicaPresentacion/nuevo_idioma.aspx.cs" Inherits="Presentacion_nuevo_idioma" Title="Idioma" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style27
        {
            width: 45%;
            height: 108px;
        }
        .style28
        {
            width: 10%;
            height: 108px;
        }
        .style29
        {
        	width: 45%;
            height: 108px;
        }
        .style30
        {
        	 width: 100%;
            height: 101px;
            text-align: center;
        }
        .style33
        {
        	width: 100%;
            height: 67px;
            text-align: center;
        }
        .style36
        {
        	width: 100%;
            height: 48px;
            text-align: center;
        }
        .style37
        {
            width: 45%;
            height: 81px;
            text-align: center;
        }
        .style39
        {
            width: 100%;
            height: 55px;
            text-align: center;
        }
        .style40
        {
            width: 100%;
            height: 80px;
            text-align: center;
        }
        .style41
        {
           width: 45%;
            height: 81px;
            text-align: left;
        }
        .style42
        {
            width: 10%;
            height: 81px;
            text-align: center;
        }
        .style43
        {
            width: 45%;
            height: 139px;
            text-align: center;
        }
        .style44
        {
            width: 10%;
            height: 139px;
            text-align: center;
        }
        .style45
        {
            width: 100%;
            height: 58px;
            text-align: left;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style16">
        <tr>
            <td class="style45" colspan="3">
    <asp:ImageButton ID="IB_Atras" runat="server" Height="58px" 
        ImageUrl="~/Imagenes/ImagenesWeb/atras.png" onclick="IB_Atras_Click" 
        Width="59px" PostBackUrl="~/Presentacion/Administrador.aspx" />
            </td>
        </tr>
        <tr>
            <td class="style36" colspan="3">
                <asp:Label ID="l_idioma" runat="server" Font-Bold="True" Font-Size="18pt" 
                    Text="IDIOMA"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style27">
                <asp:Label ID="l_nidioma" runat="server" Text="Nuevo idioma"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="t_idioma" runat="server" Height="24px"></asp:TextBox>
            </td>
            <td class="style28">
            </td>
            <td class="style29">
                <asp:Label ID="l_terminacion" runat="server" Text="Terminacion"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="t_terminacion" runat="server" Height="24px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style30" colspan="3">
                <asp:Button ID="b_guardar" runat="server" Height="33px" 
                    style="text-align: center" Text="Guardar" Width="78px" 
                    onclick="b_guardar_Click" />
            </td>
        </tr>
        <tr>
            <td class="style40" colspan="3">
                <asp:Label ID="b_editar" runat="server" 
                    style="font-weight: 700; font-family: Arial, Helvetica, sans-serif; font-size: 20pt; color: #000000" 
                    Text="Editar"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style41">
                <asp:Label ID="L_idiomaddl" runat="server" Text="Idioma"></asp:Label>
&nbsp;&nbsp;
                <asp:DropDownList ID="ddl_idiomaeditar" runat="server" 
                    DataSourceID="ddl_newidioma" DataTextField="nombre" 
                    DataValueField="id_idioma">
                </asp:DropDownList>
                <asp:ObjectDataSource ID="ddl_newidioma" runat="server" 
                    SelectMethod="llenarDDLIdioma" TypeName="LogicaC.Logica_idiomaControl">
                </asp:ObjectDataSource>
            </td>
            <td class="style42">
            </td>
            <td class="style37">
                <asp:Label ID="l_formulario" runat="server" Text="Formulario"></asp:Label>
&nbsp;&nbsp;
                <asp:DropDownList ID="ddl_formularioeditar" runat="server" AutoPostBack="True" 
                    DataSourceID="ddl_forms" DataTextField="formulario" 
                    DataValueField="id_formulario">
                </asp:DropDownList>
                <asp:ObjectDataSource ID="ddl_forms" runat="server" 
                    SelectMethod="llenarDDLFormularios" TypeName="LogicaC.Logica_idiomaControl">
                </asp:ObjectDataSource>
            </td>
        </tr>
        <tr>
            <td class="style43">
                <asp:Label ID="l_mensaje" runat="server" Text="Mensaje"></asp:Label>
&nbsp;&nbsp;
                <asp:DropDownList ID="ddl_mensajeeditar" runat="server" 
                    DataSourceID="ods_componentes" DataTextField="componente" 
                    DataValueField="componente">
                </asp:DropDownList>
                <asp:ObjectDataSource ID="ods_componentes" runat="server" 
                    SelectMethod="traerCompon" TypeName="LogicaC.Logica_idiomaControl">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="ddl_idiomaeditar" Name="id_idioma" 
                            PropertyName="SelectedValue" Type="Int32" />
                        <asp:ControlParameter ControlID="ddl_formularioeditar" Name="id_formulario" 
                            PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:ObjectDataSource>
                <br />
            </td>
            <td class="style44">
            </td>
            <td class="style43">
                <asp:FileUpload ID="FU_imagen" runat="server" Visible="False" />
                <br />
                <asp:TextBox ID="T_mensajeditar" runat="server"></asp:TextBox>
                <br />
                <asp:Image ID="img_fu" runat="server" Visible="False" Width="40%" Height="40%" /> 
            </td>
        </tr>
        <tr>
            <td class="style39" colspan="3">
            &nbsp;&nbsp;<asp:Button ID="b_consultar" runat="server" Height="32px" Text="Consultar" 
                    Width="89px" onclick="b_consultar_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="B_Modificaridio" runat="server" Height="30px" Text="Modificar" 
                    Width="66px" onclick="B_Modificaridio_Click" />
            </td>
        </tr>
        <tr>
            <td class="style33" colspan="3">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

