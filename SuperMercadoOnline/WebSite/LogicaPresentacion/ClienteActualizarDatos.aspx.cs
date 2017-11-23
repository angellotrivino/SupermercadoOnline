using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using LogicaC;
using UtilitarioC;
using System.Collections;

public partial class Presentacion_ClienteActualizarDatos : System.Web.UI.Page
{
    String logoUrl, logoExtension, saveLocationLogo, ruta, nombreLogo;

    LActualizarDatos logica = new LActualizarDatos();
    UALL utili = new UALL();
    DataTable datosUsuario = new DataTable();
    LMac mac = new LMac();

    protected void Page_Load(object sender, EventArgs e)
    {
        ///sesion
        try
        {

            utili.IdTipoUsuario = int.Parse(Session["idTipoUsuario"].ToString());

            utili = logica.pageload(utili);

           
            int.Parse(utili.IdTipoUsuarioS.ToString());

            Response.Redirect("" + utili.Url + "");

        }
        catch (NullReferenceException ei)
        {
        }
                    //// insertar datos cedula del cliente en las cajas

        try {

            utili.IdUsuario = int.Parse(Session["idUsuario"].ToString());
            utili = logica.llenarcampos(utili);

            TB_cedula.Text = utili.IdUsuario.ToString();
        
        }catch (NullReferenceException rt)
        {
            Session["idTipoUsuario"] = 0;

        }

        Logica_idiomaControl idioma = new Logica_idiomaControl();
        Hashtable componentes = new Hashtable();
        try{
        componentes = idioma.controlarIdioma((int)Session["idioma"], 14);
        }
        catch (Exception)
        {
            Session["idioma"] = 1;
            componentes = idioma.controlarIdioma((int)Session["idioma"], 14);
        }

        //B_InsertarProductos.Text = componentes["B_InsertarProductos"].ToString();
        L_Cedula.Text = componentes["L_Cedula"].ToString();
        REV_CedulaNumeros.ErrorMessage = componentes["REV_CedulaNumeros"].ToString();
        L_Nombres.Text = componentes["L_Nombres"].ToString();
        REV_NombresLetras.ErrorMessage = componentes["REV_NombresLetras"].ToString();
        L_Apellidos.Text = componentes["L_Apellidos"].ToString();
        REV_ApellidosLetras.ErrorMessage = componentes["REV_ApellidosLetras"].ToString();
        L_TituloActualizarDatos.Text = componentes["L_TituloActualizarDatos"].ToString();
        L_Direccion.Text = componentes["L_Direccion"].ToString();
        L_Correo.Text = componentes["L_Correo"].ToString();
        REV_correo.ErrorMessage = componentes["REV_correo"].ToString();
        L_Telefono.Text = componentes["L_Telefono"].ToString();
        REV_TelefonoNumeros.ErrorMessage = componentes["REV_TelefonoNumeros"].ToString();
        L_Contraseña.Text = componentes["L_Contraseña"].ToString();
        L_ContraseñaN.Text = componentes["L_ContraseñaN"].ToString();
        L_ContraseñaNConf.Text = componentes["L_ContraseñaNConf"].ToString();
        L_Imagen.Text = componentes["L_Imagen"].ToString();
        L_Login.Text = componentes["L_Login"].ToString();
        B_ActualizarDatos.Text = componentes["B_ActualizarDatos"].ToString();


    }
    protected void B_ActualizarDatos_Click(object sender, EventArgs e)
    {
        ClientScriptManager cm = this.ClientScript;

        string ipAddress = HttpContext.Current.Request.UserHostAddress;
        string httpContext = HttpContext.Current.Server.MachineName;
        string MAC = mac.GetMAC(ref ipAddress, ref httpContext);

        utili.IdUsuario = int.Parse(Session["idUsuario"].ToString());
        utili.ImagenUsuario = Server.MapPath(Session["Imagen"].ToString());
        utili.Ruta = Session["Imagen"].ToString();
        utili.SaveLocationLogo = Server.MapPath("~\\Imagenes\\Usuario") + "\\";
        utili.Password = TB_contraseñaR2.Text.ToString();
        utili.Password1 = TB_contraseñaR3.Text.ToString();
        utili.LogoExtension = System.IO.Path.GetExtension(FU_Imagen.PostedFile.FileName);
        utili.PasswordR1 = TB_contraseñaR1.Text.ToString();
        utili.Nombre = TB_nombre.Text;
        utili.Apellido = TB_apellido.Text;
        utili.Cedula = int.Parse(TB_cedula.Text);
        utili.Direccion = TB_direccion.Text;
        utili.Email = TB_correo.Text;
        utili.Telefono = TB_telefono.Text;
        utili.Login = TB_usuarioR1.Text;

        utili.User = Session["usser"].ToString();

        utili = logica.actualizardatos(utili, ipAddress, MAC,(int)Session["idioma"]);

        try
        {
            int.Parse(utili.Nulo.ToString());
            L_ErrorR.Text = "" + utili.Mensaje + "";
            return;

        }
        catch (NullReferenceException ei)
        {
            cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('" + utili.Mensaje + "');</script>");
            return;
        }
        catch (FormatException ex) {

            try
            {
                FU_Imagen.PostedFile.SaveAs(utili.SaveLocationLogo);
            }
            catch (DirectoryNotFoundException ei) { 
            
            
            }
            Session["imagen"] = utili.ImagenUsuario;
            this.RegisterStartupScript("mensaje", "<script type='text/javascript'>alert('"+utili.Mensaje+"');window.location=\""+utili.Url+"\"</script>");
        }

    }
    protected void IB_Atras_Click(object sender, ImageClickEventArgs e)
    {
        try
        {

            utili.IdTipoUsuario = int.Parse(Session["idTipoUsuario"].ToString());

            utili = logica.pageload(utili);

            Session["idTipoUsuario"] = utili.IdTipoUsuarioS;
            int.Parse(Session["idTipoUsuario"].ToString());

        }
        catch (NullReferenceException ei)
        {

            Response.Redirect("" + utili.Url + "");

        }
    }
    protected void B_MostrarDatos_Click(object sender, EventArgs e)
    {
        utili.IdUsuario = int.Parse(Session["idUsuario"].ToString());
        utili = logica.llenarcampos(utili);

        TB_nombre.Text = utili.Nombre;
        TB_apellido.Text = utili.Apellido;
        TB_direccion.Text = utili.Direccion;
        TB_telefono.Text = utili.Telefono;
        TB_correo.Text = utili.Email;
        TB_usuarioR1.Text = utili.User;
        I_Cliente.ImageUrl = utili.ImagenUsuario;
    }
}