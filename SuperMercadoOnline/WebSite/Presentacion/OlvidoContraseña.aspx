<%@ Page Language="C#" MasterPageFile="~/Presentacion/Plantilla1.master" AutoEventWireup="true" CodeFile="~/LogicaPresentacion/OlvidoContraseña.aspx.cs" Inherits="Presentacion_OlvidoContraseña" Title="Recordar Contraseña" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style23
        {
            text-align: center;
        }
        .style23
        {
            text-align: center;
        }
        .style24
        {
            text-align: left;
            width: 25%;
        }
        .style26
        {
            text-align: center;
            width: 32px;
        }
        .style28
        {
            text-align: center;
            width: 11px;
        }
        .style29
        {
            text-align: center;
            width: 153px;
        }
        .style30
        {
            text-align: left;
            width: 33%;
        }
        .style31
        {
            text-align: left;
            width: 20%;
        }
        .style32
        {
            text-align: left;
            width: 33%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style16">
        <tr>
            <td class="style24" colspan="4">
        <asp:ImageButton ID="IB_Atras" runat="server" Height="41px" 
            ImageUrl="~/Imagenes/ImagenesWeb/atras.png" onclick="IB_Atras_Click" 
            Width="50px" />
            </td>
        </tr>
        <tr>
            <td class="style28">
                &nbsp;</td>
            <td class="style26">
                &nbsp;</td>
            <td class="style29">
                &nbsp;</td>
            <td class="style23">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style23" bgcolor="Blue" colspan="4">
                    <asp:Label ID="L_TituloRecupContra" runat="server" ForeColor="White" 
                        Text="RECUPERAR CONTRASEÑA"></asp:Label>
                </td>
        </tr>
        </table>
    <p>
    </p>
    <table class="style16">
        <tr>
            <td class="style31">
                &nbsp;</td>
            <td class="style30">
                &nbsp;</td>
            <td class="style32">
                &nbsp;</td>
            <td class="style23">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style31">
                <asp:Label ID="L_TituloCedula" runat="server" 
                    Text="Digite la cedula: "></asp:Label>
            </td>
            <td class="style30">
                <asp:TextBox ID="TB_Cedula" runat="server" 
                    ValidationGroup="EnviarCorreo" MaxLength="10"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RFV_Cedula" runat="server" 
                    ControlToValidate="TB_Cedula" ErrorMessage="*" 
                    ValidationGroup="EnviarCorreo"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="REV_NumerosCedula" runat="server" 
                    ControlToValidate="TB_Cedula" ErrorMessage="Solo numeros" 
                    ValidationExpression="^[0-9]*" ValidationGroup="EnviarCorreo"></asp:RegularExpressionValidator>
                    </td>
            <td class="style32">
                &nbsp;</td>
            <td class="style23">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style31">
                &nbsp;</td>
            <td class="style30">
                &nbsp;</td>
            <td class="style32">
                &nbsp;</td>
            <td class="style23">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style31">
                &nbsp;</td>
            <td class="style30">
                <asp:Button ID="B_Enviar" runat="server" onclick="B_Enviar_Click" 
                    Text="Enviar" ValidationGroup="EnviarCorreo" />
            </td>
            <td class="style32">
                &nbsp;</td>
            <td class="style23">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style31">
                &nbsp;</td>
            <td class="style30">
                &nbsp;</td>
            <td class="style32">
                &nbsp;</td>
            <td class="style23">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style31">
                &nbsp;</td>
            <td class="style30">
                &nbsp;</td>
            <td class="style32">
                &nbsp;</td>
            <td class="style23">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style31">
                &nbsp;</td>
            <td class="style30">
                &nbsp;</td>
            <td class="style32">
                &nbsp;</td>
            <td class="style23">
                &nbsp;</td>
        </tr>
        </table>
</asp:Content>

