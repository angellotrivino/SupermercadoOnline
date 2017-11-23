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

public partial class Presentacion_Cajero : System.Web.UI.Page
{
    LCajero logica = new LCajero();
    UALL utili = new UALL();
    protected void Page_Load(object sender, EventArgs e)
    {
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

            Session["idTipoUsuario"] = 2;

        }


        Logica_idiomaControl idioma = new Logica_idiomaControl();
        Hashtable componentes = new Hashtable();
        try
        {
            componentes = idioma.controlarIdioma((int)Session["idioma"], 9);
        }
        catch (Exception)
        {
            Session["idioma"] = 1;
            componentes = idioma.controlarIdioma((int)Session["idioma"], 9);
        }

        B_CajeroConsulta.Text = componentes["B_CajeroConsulta"].ToString();
        B_ActualizarDatos.Text = componentes["B_ActualizarDatos"].ToString();


    }
    protected void B_CajeroConsulta_Click(object sender, EventArgs e)
    {
        Response.Redirect("CajeroConsulta.aspx");
    }
    protected void B_ActualizarDatos_Click(object sender, EventArgs e)
    {
        Response.Redirect("ClienteActualizarDatos.aspx");
    }
}
