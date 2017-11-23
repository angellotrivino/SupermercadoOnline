<%@ Page Language="C#" MasterPageFile="~/Presentacion/Plantilla1.master" AutoEventWireup="true" CodeFile="~/LogicaPresentacion/CajeroRecibo.aspx.cs" Inherits="Presentacion_CajeroRecibo" Title="Recibo cliente" %>

<%@ Register assembly="CrystalDecisions.Web, Version=10.5.3700.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style1
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
    <tr>
        <td>
                &nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:ImageButton ID="IB_Atras" runat="server" Height="48px" 
            ImageUrl="~/Imagenes/ImagenesWeb/atras.png" onclick="IB_Atras_Click" 
            Width="56px" />
        </td>
    </tr>
    <tr>
        <td>
            <CR:CrystalReportViewer ID="CRV_Recibo" runat="server" AutoDataBind="True" 
                    Height="1063px" ReportSourceID="CRS_Recibo" Width="929px" />
            <CR:CrystalReportSource ID="CRS_Recibo" runat="server">
                <Report FileName="~\Crystal\Recibo.rpt">
                </Report>
            </CR:CrystalReportSource>
        </td>
    </tr>
    <tr>
        <td>
                &nbsp;</td>
    </tr>
</table>
</asp:Content>

