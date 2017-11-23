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

public partial class Presentacion_Clientemensaje : System.Web.UI.Page
{
    UALL utili = new UALL();
    LClienteMensaje logica = new LClienteMensaje();
    LMac mac = new LMac();

    protected void Page_Load(object sender, EventArgs e)
    {
        ///sesion
        try
        {

            utili.IdTipoUsuario = int.Parse(Session["idTipoUsuario"].ToString());

            utili = logica.pageload(utili);

            Session["idTipoUsuario"] = utili.IdTipoUsuarioS;
            int.Parse(Session["idTipoUsuario"].ToString());

            Response.Redirect("" + utili.Url + "");

        }

        catch (NullReferenceException ei)
        {

            Session["idTipoUsuario"] = 3;

        }

        Logica_idiomaControl idioma = new Logica_idiomaControl();
        Hashtable componentes = new Hashtable();
        try
        {
            componentes = idioma.controlarIdioma((int)Session["idioma"], 16);
        }
        catch (Exception)
        {
            Session["idioma"] = 1;
            componentes = idioma.controlarIdioma((int)Session["idioma"], 16);
        }

        //B_InsertarProductos.Text = componentes["B_InsertarProductos"].ToString();

        L_TituloMensaje.Text = componentes["L_TituloMensaje"].ToString();
        L_nombre.Text = componentes["L_nombre"].ToString();
        REV_letras.ErrorMessage = componentes["REV_letras"].ToString();
        L_contactenos.Text = componentes["L_contactenos"].ToString();
        L_email.Text = componentes["L_email"].ToString();
        REV_correo.ErrorMessage = componentes["REV_correo"].ToString();
        L_pais.Text = componentes["L_pais"].ToString();
        L_ciudad.Text = componentes["L_ciudad"].ToString();
        L_telefono.Text = componentes["L_telefono"].ToString();
        L_mail.Text = componentes["L_mail"].ToString();
        L_Mensaje.Text = componentes["L_Mensaje"].ToString();
        RFV_Mensaje.ErrorMessage = componentes["RFV_Mensaje"].ToString();
        B_Enviar.Text = componentes["B_Enviar"].ToString();






    }
    protected void IB_atras_Click(object sender, EventArgs e)
    {
        Response.Redirect("Cliente.aspx");
    }
    protected void B_enviar_Click(object sender, EventArgs e)
    {
        string ipAddress = HttpContext.Current.Request.UserHostAddress;
        string httpContext = HttpContext.Current.Server.MachineName;
        string MAC = mac.GetMAC(ref ipAddress, ref httpContext);

        utili.Nombre = Tb_usuario.Text;
        utili.Email = Tb_email.Text;
        utili.Mensaje = Tb_mensaje.Text;
        utili.User = Session["usser"].ToString();
        utili.IdUsuario = int.Parse(Session["idUsuario"].ToString());

        utili = logica.insertarmensaje(utili, ipAddress, MAC,(int)Session["idioma"]);

        this.RegisterStartupScript("mensaje", "<script type='text/javascript'>alert('" + utili.Mensaje + "');window.location=\"contactenos.aspx\"</script>");

     
    }
    protected void IB_Atras_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Cliente.aspx");
    }
}
