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
using System.Net.Mail;
using System.Text;
using LogicaC;
using UtilitarioC;

public partial class Presentacion_OlvidoContraseña : System.Web.UI.Page
{
    LOlvidoContraseña logica = new LOlvidoContraseña();
    UALL utili = new UALL();

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


        

        Logica_idiomaControl idioma = new Logica_idiomaControl();
        Hashtable componentes = new Hashtable();
        try
        {
        componentes = idioma.controlarIdioma((int)Session["idioma"], 23);
        }
        catch (Exception)
        {
            Session["idioma"] = 1;
            componentes = idioma.controlarIdioma((int)Session["idioma"], 23);
        }


        L_TituloRecupContra.Text = componentes["L_TituloRecupContra"].ToString();
        L_TituloCedula.Text = componentes["L_TituloCedula"].ToString();
        REV_NumerosCedula.ErrorMessage = componentes["REV_NumerosCedula"].ToString();
        B_Enviar.Text = componentes["B_Enviar"].ToString();





    }
    protected void IB_Atras_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
    protected void B_Enviar_Click(object sender, EventArgs e)
    {

        Logica_idiomaControl idioma = new Logica_idiomaControl();
        Hashtable componentes = new Hashtable();
        componentes = idioma.controlarIdioma((int)Session["idioma"], 23);

        ClientScriptManager cm = this.ClientScript;

        try
        {
            utili.CedulaInt64 = Int64.Parse(TB_Cedula.Text);

            utili = logica.datosMail(utili,(int)Session["idioma"]);


            int.Parse(utili.Nulo.ToString());

            MailMessage mail = new MailMessage();

            SmtpClient SmtpServer = new SmtpClient(utili.SmtpClientString, utili.Port);
            mail.From = new MailAddress(utili.CorreoOrigen, utili.Descripcion, Encoding.UTF8);
            mail.Subject = utili.Asunto;

            mail.Body = utili.Mensaje;
            mail.To.Add(utili.CorreoDestino);

            SmtpServer.Credentials = new System.Net.NetworkCredential(utili.CorreoOrigen, utili.Password);
            SmtpServer.EnableSsl = true;
            SmtpServer.Send(mail);

            this.RegisterStartupScript("mensaje", "<script type='text/javascript'>alert('" + utili.Mensaje1 + "');window.location=\"" + utili.Ruta + "\"</script>");


        }
        catch (SmtpException o)
        {

            cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('"+componentes["java1"].ToString()+"');</script>");
            return;
        }
        catch (NullReferenceException ei) {
            cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('" + utili.Mensaje1 + "');</script>");
            return;
        
        }
    }
}
