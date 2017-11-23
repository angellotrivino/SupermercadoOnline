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
using UtilitarioC;
using LogicaC;

public partial class Presentacion_contactenos : System.Web.UI.Page
{
    UALL utili = new UALL();
    LContactenos logica = new LContactenos();
    LMac mac = new LMac();

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {

            utili.IdTipoUsuario = int.Parse(Session["idTipoUsuario"].ToString());
            utili.IdUsuario = int.Parse(Session["idUsuario"].ToString());

            utili = logica.pageload(utili);

            Session["idTipoUsuario"] = utili.IdTipoUsuarioS;
            int.Parse(Session["idTipoUsuario"].ToString());

            Response.Redirect("" + utili.Url + "");

        }

        catch (NullReferenceException ei)
        {

            Session["idTipoUsuario"] = 0;
            Session["idUsuario"] = 0;

        }
        //Session["idioma"] = 2; //solo pruebas

        Logica_idiomaControl idioma = new Logica_idiomaControl();
        Hashtable componentes = new Hashtable();
        try
        {
            componentes = idioma.controlarIdioma((int)Session["idioma"], 19);
        }
        catch (Exception)
        {
            Session["idioma"] = 1;
            componentes = idioma.controlarIdioma((int)Session["idioma"], 19);
        }

        //B_Login.Text = componentes["B_Login"].ToString();
        B_Login.Text = componentes["B_Login"].ToString();
        B_Catalogo.Text = componentes["B_Catalogo"].ToString();
        L_TituloMensajeVisitante.Text = componentes["L_TituloMensajeVisitante"].ToString();
        L_Nombre.Text = componentes["L_Nombre"].ToString();
        REV_letras.ErrorMessage = componentes["REV_letras"].ToString();
        L_EMail.Text = componentes["L_EMail"].ToString();
        REV_correo.ErrorMessage = componentes["REV_correo"].ToString();
        L_pais.Text = componentes["L_pais"].ToString();
        L_ciudad.Text = componentes["L_ciudad"].ToString();
        L_Telefono.Text = componentes["L_Telefono"].ToString();
        L_mail.Text = componentes["L_mail"].ToString();
        L_Mensaje.Text = componentes["L_Mensaje"].ToString();
        B_Enviar.Text = componentes["B_Enviar"].ToString();
        RFV_Mensaje.ErrorMessage = componentes["RFV_Mensaje"].ToString();



    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("visualizacion.aspx");
    }
    protected void B_Login_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
    protected void B_Catalogo_Click(object sender, EventArgs e)
    {
        Response.Redirect("Catalogo.aspx");
    }
    protected void B_Enviar_Click(object sender, EventArgs e)
    {
        string ipAddress = HttpContext.Current.Request.UserHostAddress;
        string httpContext = HttpContext.Current.Server.MachineName;
        string MAC = mac.GetMAC(ref ipAddress, ref httpContext);

        utili.Nombre = TB_Nombre.Text;
        utili.Email = Tb_email.Text;
        utili.Mensaje = Tb_mensaje.Text;
        utili.User = "visitante";
        utili.IdUsuario = 0;


            utili = logica.insertarmensaje(utili,ipAddress,MAC, (int) Session["idioma"]);

            this.RegisterStartupScript("mensaje", "<script type='text/javascript'>alert('" + utili.Mensaje + "');window.location=\"contactenos.aspx\"</script>");

    }
}
