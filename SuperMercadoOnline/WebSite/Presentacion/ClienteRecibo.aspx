<%@ Page Language="C#" MasterPageFile="~/Presentacion/Plantilla1.master" AutoEventWireup="true" CodeFile="~/LogicaPresentacion/ClienteRecibo.aspx.cs" Inherits="Presentacion_ClienteRecibo" Title="Recibo Pedido Cliente" %>

<%@ Register assembly="CrystalDecisions.Web, Version=10.5.3700.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
       
        .style21
        {
            text-align: left;
        }
        .style22
        {
            text-align: center;
        }
       
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style16">
        <tr>
            <td class="style21">
        <asp:ImageButton ID="IB_Atras" runat="server" Height="41px" 
            ImageUrl="~/Imagenes/ImagenesWeb/atras.png" onclick="IB_Atras_Click" 
            Width="50px" />
            </td>
        </tr>
        </table>
    <table class="style16">
        <tr>
            <td class="style22">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style22" bgcolor="Blue">
                    <asp:Label ID="L_TituloPedidos" runat="server" ForeColor="White" 
                    Text="PEDIDOS REALIZADOS"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style22">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style22">
                <asp:GridView ID="GV_Recibo" runat="server" AutoGenerateColumns="False" 
                    BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
                    CellPadding="3" ForeColor="Black" GridLines="Vertical" Height="112px" 
                    Width="428px" DataKeyNames="id_cliente_pedido" 
                    DataSourceID="ODS_ClientePedidos" 
                    onselectedindexchanged="GV_Recibo_SelectedIndexChanged">
                    <Columns>
                        <asp:TemplateField HeaderText="Seleccione" ShowHeader="False">
                            <ItemTemplate>
                                <asp:LinkButton ID="LB_Seleccione" runat="server" CausesValidation="False" 
                                    CommandName="Select" ForeColor="Black" Text='<%# Eval("seleccione") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="NumeroRecibo">
                            <ItemTemplate>
                                <asp:Label ID="L_NumeroRecibo" runat="server" 
                                    Text='<%# Eval("id_cliente_pedido") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Fecha Diaria">
                            <ItemTemplate>
                                <asp:Label ID="L_FechaDiaria" runat="server" Text='<%# Eval("fecha_diaria") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                </asp:GridView>
                <asp:ObjectDataSource ID="ODS_ClientePedidos" runat="server" 
                    SelectMethod="llenarGridviewfechas" TypeName="LogicaC.LClienteRecibo">
                    <SelectParameters>
                        <asp:SessionParameter Name="idCliente" SessionField="idUsuario" Type="Int32" />
                        <asp:SessionParameter Name="idio" SessionField="idioma" Type="Int32" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </td>
        </tr>
        <tr>
            <td class="style22">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style22">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style21">
                <CR:CrystalReportViewer ID="CRV_Pedido" runat="server" AutoDataBind="True" 
                    Height="1063px" ReportSourceID="CRS_Pedido" Visible="False" Width="929px" />
                <CR:CrystalReportSource ID="CRS_Pedido" runat="server">
                    <Report FileName="~\Crystal\Pedido.rpt">
                    </Report>
                </CR:CrystalReportSource>
                <br />
            </td>
        </tr>
        <tr>
            <td class="style22">
                &nbsp;</td>
        </tr>
        </table>
</asp:Content>

