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
using System.Data;
using LogicaC;
using UtilitarioC;

public partial class Presentacion_AdministradorMensajes : System.Web.UI.Page
{
    LSesionAdministrador LSesion = new LSesionAdministrador();
    UALL utili = new UALL();

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

        Logica_idiomaControl idioma = new Logica_idiomaControl();
        Hashtable componentes = new Hashtable();

        try
        {
            componentes = idioma.controlarIdioma((int)Session["idioma"], 7);
        }
        catch(Exception)
        {
            Session["idioma"] = 1;
            componentes = idioma.controlarIdioma((int)Session["idioma"], 7);
        }

        L_TituloMensajes.Text = componentes["L_TituloMensajes"].ToString();

        try
        {
            idioma.validarTitulo(GV_Mensaje.Rows.Count);
        }
        catch (Exception)
        {

            GV_Mensaje.HeaderRow.Cells[0].Text = componentes["Nombre"].ToString();
            GV_Mensaje.HeaderRow.Cells[1].Text = componentes["Email"].ToString();
            GV_Mensaje.HeaderRow.Cells[2].Text = componentes["Mensaje"].ToString();
        }


       
    }
    protected void IB_Atras_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Administrador.aspx");
    }
}
