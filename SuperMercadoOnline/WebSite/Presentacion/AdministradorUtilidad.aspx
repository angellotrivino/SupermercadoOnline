<%@ Page Language="C#" MasterPageFile="~/Presentacion/plantilla1.master" AutoEventWireup="true" CodeFile="~/LogicaPresentacion/AdministradorUtilidad.aspx.cs" Inherits="Presentacion_AdministradorUtilidad" Title="UTILIDAD" %>

<%@ Register assembly="CrystalDecisions.Web, Version=10.5.3700.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="text-align: left">
        <asp:ImageButton ID="IB_Atras" runat="server" Height="48px" 
            ImageUrl="~/Imagenes/ImagenesWeb/atras.png" onclick="IB_Atras_Click" 
            Width="56px" />
    </p>
<CR:CrystalReportViewer ID="CRV_Utilidad" runat="server" 
    AutoDataBind="True" ReportSourceID="CRS_Utilidad" Height="1121px" 
        Width="878px" />
<p>
    </p>
<p>
        <CR:CrystalReportSource ID="CRS_Utilidad" runat="server">
            <Report FileName="~\Crystal\Utilidad.rpt">
            </Report>
        </CR:CrystalReportSource>
        <br />
    </p>
    <p>
    </p>
</asp:Content>

