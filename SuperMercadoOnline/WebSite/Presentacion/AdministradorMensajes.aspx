<%@ Page Language="C#" MasterPageFile="~/Presentacion/Plantilla1.master" AutoEventWireup="true" CodeFile="~/LogicaPresentacion/AdministradorMensajes.aspx.cs" Inherits="Presentacion_AdministradorMensajes" Title="Mensajes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        
        .style23
        {
            width: 50%;
            text-align: left;
        }
        .style22
        {
            text-align: left;
        }
         .style21
        {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style16">
        <tr>
            <td class="style23">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style23">
                <asp:ImageButton ID="IB_Atras" runat="server" Height="41px" 
                    ImageUrl="~/Imagenes/ImagenesWeb/atras.png" onclick="IB_Atras_Click" 
                    Width="41px" />
                </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style23">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style21" colspan="2" bgcolor="Blue">
                <asp:Label ID="L_TituloMensajes" runat="server" 
                    style="color: #FFFFFF; background-color: #0066FF">MENSAJES</asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style22" colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style22" colspan="2">
                <asp:GridView ID="GV_Mensaje" runat="server" AutoGenerateColumns="False" 
                    BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="4" ForeColor="Black" GridLines="Horizontal" 
                    DataSourceID="ODS_Mensajes">
                    <Columns>
                        <asp:TemplateField HeaderText="Nombre">
                            <ItemTemplate>
                                <asp:Label ID="L_Nombre" runat="server" Text='<%# Eval("nombre") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Email">
                            <ItemTemplate>
                                <asp:Label ID="L_Email" runat="server" Text='<%# Eval("email") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Mensaje">
                            <ItemTemplate>
                                <asp:Label ID="L_Mensaje" runat="server" Text='<%# Eval("mensaje") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                </asp:GridView>
                <asp:ObjectDataSource ID="ODS_Mensajes" runat="server" SelectMethod="mensajes" 
                    TypeName="LogicaC.LAMensajes"></asp:ObjectDataSource>
            </td>
        </tr>
        <tr>
            <td class="style23">
                </td>
            <td>
                </td>
        </tr>
    </table>
</asp:Content>

