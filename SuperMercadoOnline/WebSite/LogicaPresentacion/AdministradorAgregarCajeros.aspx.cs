using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using LogicaC;
using UtilitarioC;

public partial class Presentacion_AdministradorAgregarCajeros : System.Web.UI.Page
{
    LSesionAdministrador LSesion = new LSesionAdministrador();
    LAAgregarCajero logica = new LAAgregarCajero();
    UALL utili = new UALL();
    LMac mac = new LMac();

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {

            utili.IdTipoUsuario = int.Parse(Session["idTipoUsuario"].ToString());

            utili = LSesion.pageload(utili);

            int.Parse(utili.IdTipoUsuarioS.ToString());

            Response.Redirect("" + utili.Url + "");

        }

        catch (NullReferenceException ei)
        {

            Session["idTipoUsuario"] = 1;

        }


        //idioma

        Logica_idiomaControl idioma = new Logica_idiomaControl();
        Hashtable componentes = new Hashtable();
        try
        {
            componentes = idioma.controlarIdioma((int)Session["idioma"], 4);
        }
        
        catch(Exception)
        {
            Session["idioma"] = 1;
            componentes = idioma.controlarIdioma((int)Session["idioma"], 4);
        }

        B_Modificar.Text = componentes["B_Modificar"].ToString();
        L_TituloAgreModCaj.Text = componentes["L_TituloAgreModCaj"].ToString();
        L_ModCaj.Text = componentes["L_ModCaj"].ToString();
        L_TituloAgreCajero.Text = componentes["L_TituloAgreCajero"].ToString();
        L_Cedula.Text = componentes["L_Cedula"].ToString();
        REV_CedulaNumeros.ErrorMessage = componentes["REV_CedulaNumeros"].ToString();
        L_Nombres.Text = componentes["L_Nombres"].ToString();
        REV_NombresLetras.ErrorMessage = componentes["REV_NombresLetras"].ToString();
        L_Apellidos.Text = componentes["L_Apellidos"].ToString();
        REV_ApellidosLetras.ErrorMessage = componentes["REV_ApellidosLetras"].ToString();
        L_Direccion.Text = componentes["L_Direccion"].ToString();

        L_Correo.Text = componentes["L_Correo"].ToString();
        REV_correo.ErrorMessage = componentes["REV_correo"].ToString();
        L_Telefono.Text = componentes["L_Telefono"].ToString();
        REV_TelefonoNumeros.ErrorMessage = componentes["REV_TelefonoNumeros"].ToString();

        L_ContraseñaN.Text = componentes["L_ContraseñaN"].ToString();
        L_ContraseñaNConf.Text = componentes["L_ContraseñaNConf"].ToString();
        L_Imagen.Text = componentes["L_Imagen"].ToString();
        L_Login.Text = componentes["L_Login"].ToString();
        B_Actualizar.Text = componentes["B_Actualizar"].ToString();

        B_Cancelar.Text = componentes["B_Cancelar"].ToString();
        B_AgregarCajero.Text = componentes["B_AgregarCajero"].ToString();
        L_TituloMostElimCajero.Text = componentes["L_TituloMostElimCajero"].ToString();
        L_Correo.Text = componentes["L_Correo"].ToString();

        try
        {
            idioma.validarTitulo(GV_Cajero.Rows.Count);
        }
        catch (Exception)
        {
            GV_Cajero.HeaderRow.Cells[0].Text = componentes["Codigo"].ToString();
            GV_Cajero.HeaderRow.Cells[1].Text = componentes["Imagen"].ToString();
            GV_Cajero.HeaderRow.Cells[2].Text = componentes["Nombres"].ToString();
            GV_Cajero.HeaderRow.Cells[3].Text = componentes["Apellidos"].ToString();
            GV_Cajero.HeaderRow.Cells[4].Text = componentes["Direccion"].ToString();
            GV_Cajero.HeaderRow.Cells[5].Text = componentes["Telefono"].ToString();
            GV_Cajero.HeaderRow.Cells[6].Text = componentes["Correo"].ToString();
            GV_Cajero.HeaderRow.Cells[7].Text = componentes["Usuario"].ToString();
            GV_Cajero.HeaderRow.Cells[8].Text = componentes["Contraseña"].ToString();
            GV_Cajero.HeaderRow.Cells[9].Text = componentes["Eliminar"].ToString();
        }



    }
    protected void IB_Atras_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Administrador.aspx");
    }
    protected void B_Modificar_Click(object sender, EventArgs e)
    {
        utili.ItemIndex = int.Parse(DDL_CajeroMod.SelectedValue);

        utili = logica.obtenerdatoscajero(utili);

        TB_cedula.Text = utili.IdCajero.ToString();
        TB_nombre.Text = utili.Nombre;
        TB_apellido.Text = utili.Apellido;
        TB_direccion.Text = utili.Direccion;
        TB_correo.Text = utili.Email;
        TB_telefono.Text = utili.Telefono;
        I_Cajero.ImageUrl = utili.LogoUrl;
        TB_usuarioR1.Text = utili.Login;


        I_Cajero.Visible = true;
        DDL_CajeroMod.Enabled = false;

        B_AgregarCajero.Visible = false;
        B_Actualizar.Visible = true;
        B_Modificar.Enabled = false;
        B_Cancelar.Visible = true;
        TB_cedula.Enabled = false;

        RFV_Imagen.Enabled = false;
        RFV_ContraseñaN.Enabled = false;
        RFV_ContraseñaNConf.Enabled = false;
    }

    protected void B_Actualizar_Click(object sender, EventArgs e)
    {
        ClientScriptManager cm = this.ClientScript;

        try
        {

            string ipAddress = HttpContext.Current.Request.UserHostAddress;
            string httpContext = HttpContext.Current.Server.MachineName;
            string MAC = mac.GetMAC(ref ipAddress, ref httpContext);

            utili.LogoUrl = Server.MapPath(I_Cajero.ImageUrl);
            utili.Ruta = I_Cajero.ImageUrl;
            utili.SaveLocationLogo = Server.MapPath("~\\Imagenes\\Usuario") + "\\";
            utili.LogoExtension = System.IO.Path.GetExtension(FU_Imagen.PostedFile.FileName);

            utili.IdCajero = int.Parse(DDL_CajeroMod.SelectedValue);
            utili.Nombre = TB_nombre.Text;
            utili.Apellido = TB_apellido.Text;
            utili.Direccion = TB_direccion.Text;
            utili.Telefono = TB_telefono.Text;
            utili.Email = TB_correo.Text;
            utili.Login = TB_usuarioR1.Text;
            utili.Password = TB_contraseñaR2.Text;
            utili.Password1 = TB_contraseñaR3.Text;

            utili.User = Session["usser"].ToString();

            utili = logica.actualizarcajero(utili, ipAddress, MAC, (int)Session["idioma"]); // actializar proveedor

            try
            {
                FU_Imagen.PostedFile.SaveAs(utili.SaveLocationLogo);
            }
            catch (HttpException ei)
            {
            }

            int.Parse(utili.Nulo.ToString());

            cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('" + utili.Mensaje + "');</script>");
            return;
        }
        catch (NullReferenceException exc)
        {
            this.RegisterStartupScript("mensaje", "<script type='text/javascript'>alert('" + utili.Mensaje + "');window.location=\"" + utili.Ruta + "\"</script>");

        }
    }

    protected void B_Cancelar_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdministradorAgregarCajeros.aspx");
    }

    protected void B_Agregar_Click(object sender, EventArgs e)
    {
        ClientScriptManager cm = this.ClientScript;

        string ipAddress = HttpContext.Current.Request.UserHostAddress;
        string httpContext = HttpContext.Current.Server.MachineName;
        string MAC = mac.GetMAC(ref ipAddress, ref httpContext);


        utili.Login = TB_usuarioR1.Text;
        utili.Password = TB_contraseñaR2.Text;
        utili.Password1 = TB_contraseñaR3.Text;
        utili.LogoExtension = System.IO.Path.GetExtension(FU_Imagen.PostedFile.FileName);
        utili.Nombre = TB_nombre.Text;
        utili.Apellido = TB_apellido.Text;
        utili.Cedula = int.Parse(TB_cedula.Text);
        utili.Direccion = TB_direccion.Text;
        utili.Email = TB_correo.Text;
        utili.Telefono = TB_telefono.Text;
        utili.SaveLocationLogo = Server.MapPath("~\\Imagenes\\Usuario") + "\\";

        utili.User = Session["usser"].ToString();

        utili = logica.insertarcajero(utili, ipAddress, MAC,(int)Session["idioma"]);

        try
        {
            FU_Imagen.PostedFile.SaveAs(utili.SaveLocationLogo);
        }
        catch (HttpException ei)
        {
        }

        try
        {
           
            int.Parse(utili.Nulo.ToString());

            cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('" + utili.Mensaje + "');</script>");
            return;
        }
        catch (NullReferenceException o)
        {

            this.RegisterStartupScript("mensaje", "<script type='text/javascript'>alert('" + utili.Mensaje + "');window.location=\"" + utili.Url + "\"</script>");

        }
    }

    protected void GV_Cajero_SelectedIndexChanged(object sender, EventArgs e)
    {
        ClientScriptManager cm = this.ClientScript;

        string ipAddress = HttpContext.Current.Request.UserHostAddress;
        string httpContext = HttpContext.Current.Server.MachineName;
        string MAC = mac.GetMAC(ref ipAddress, ref httpContext);

        try
        {
            utili.ItemIndex = GV_Cajero.SelectedIndex;
            utili.SaveLocationLogo = Server.MapPath(((Image)GV_Cajero.Rows[utili.ItemIndex].FindControl("I_Cajero")).ImageUrl);
            utili.IdCajero = int.Parse(GV_Cajero.SelectedValue.ToString());

            utili.User = Session["usser"].ToString();

            utili = logica.eliminarcajero(utili, ipAddress, MAC, (int)Session["idioma"]);

            int.Parse(utili.Nulo.ToString());


            cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('" + utili.Mensaje + "');</script>");
            return;

        }
        catch (NullReferenceException ez)
        {
            this.RegisterStartupScript("mensaje", "<script type='text/javascript'>alert('" + utili.Mensaje + "');window.location=\"" + utili.Ruta + "\"</script>");

        }
    }
    protected void GV_Cajero_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        /*Logica_idiomaControl idioma = new Logica_idiomaControl();
        Hashtable componentes = new Hashtable();
        componentes = idioma.controlarIdioma((int)Session["idioma"], 4);
        LinkButton elimi = (LinkButton)e.Row.FindControl("LB_Eliminar");
        elimi.Text = componentes["LB_Eliminar"].ToString() ;*/
    }
    protected void GV_Cajero_DataBound(object sender, EventArgs e)
    {
        
    }
}
