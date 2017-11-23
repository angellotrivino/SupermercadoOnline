using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;
using System.IO;
using System.Globalization;
using UtilitarioC;
using LogicaC;

public partial class Presentacion_Plantilla1 : System.Web.UI.MasterPage
{
    LMaster logica = new LMaster();
    LLogin logica_loggin = new LLogin();
    UALL utili = new UALL();
    protected void Page_Load(object sender, EventArgs e)
    {
        ///liberar usuario bloqueados

        LLogin login = new LLogin();

        login.liberar_sesion();
            
        ///

        StringWriter strWriter = new StringWriter(new CultureInfo(0x240A));
        strWriter.Write(DateTime.Now.DayOfWeek + " " + DateTime.Now.ToShortDateString());
        this.LB_Hora_Fecha_Actual.Text = strWriter.ToString();

        try
        {
            utili.IdTipoUsuario = int.Parse(Session["idTipoUsuario"].ToString());
            utili.IdUsuario = int.Parse(Session["idUsuario"].ToString());
            utili.ImagenUsuario = Session["imagen"].ToString();
            utili.SaveLocationLogo = Server.MapPath(Session["imagen"].ToString()); // mapear imagen
        }
        catch (NullReferenceException ei)
        {
            utili.IdTipoUsuario = 0;
            utili.IdUsuario = 0;
            utili.SaveLocationLogo = "~/Imagenes/ImagenesWeb/imagen_vacia.png";
        }
        try
        {
            utili = logica.Session(utili, (int)Session["idioma"]);
        }
        catch (Exception)
        {
            Session["idioma"] = 1;
            utili = logica.Session(utili, (int)Session["idioma"]);
        }
       
            L_TUsuario.Visible = utili.AuxBolean;
            L_TEMail.Visible = utili.AuxBolean;
            L_TTipoUsuario.Visible = utili.AuxBolean;
            L_Usuario.Visible = utili.AuxBolean;
            L_EMail.Visible = utili.AuxBolean;
            L_TipoUsuario.Visible = utili.AuxBolean;
            LB_CerrarSesion.Visible = utili.AuxBolean;
            I_Usuario.Visible = utili.AuxBolean;

            I_Usuario.ImageUrl = utili.ImagenUsuario;
            
            Session["usser"] = utili.User;
            L_Usuario.Text = utili.Nombre;
            L_EMail.Text = utili.Email;
            L_TipoUsuario.Text = utili.Mensaje;

            Logica_idiomaControl idioma = new Logica_idiomaControl();
            Hashtable componentes = new Hashtable();
            try
            {
                componentes = idioma.controlarIdioma((int)Session["idioma"], 1);
                
            }
            catch (Exception)
            {
                componentes = idioma.controlarIdioma(1, 1);
            }
            L_FechaMensaje.Text = componentes["L_FechaMensaje"].ToString();
            L_TUsuario.Text = componentes["L_TUsuario"].ToString();
            L_TEMail.Text = componentes["L_TEMail"].ToString();
            L_TTipoUsuario.Text = componentes["L_TTipoUsuario"].ToString();
            LB_CerrarSesion.Text = componentes["LB_CerrarSesion"].ToString();

        }


    protected void LB_CerrarSesion_Click(object sender, EventArgs e)
    {

        //// restar limite sesion por el cirre de sesion
        UALL utili_sesion = new UALL();
        utili_sesion.Id = int.Parse(Session["idUsuario"].ToString());
        utili_sesion.Port = 1;

        logica_loggin.limite_sesion(utili_sesion);


        L_TUsuario.Visible = false;
        L_TEMail.Visible = false;
        L_TTipoUsuario.Visible = false;
        L_Usuario.Visible = false;
        L_EMail.Visible = false;
        L_TipoUsuario.Visible = false;
        I_Usuario.Visible = false;

        Session["idUsuario"] = "0";
        Session["idTipoUsuario"] = "0";
        Session["idioma"] = null;

        Response.Redirect("Login.aspx");
    }
}
