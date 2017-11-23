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

public partial class Presentacion_Cliente : System.Web.UI.Page
{

    UALL utili = new UALL();
    LCliente logica = new LCliente();
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

            Session["idTipoUsuario"] = 3;

        }
        Logica_idiomaControl idioma = new Logica_idiomaControl();
        Hashtable componentes = new Hashtable();
        try
        {
            componentes = idioma.controlarIdioma((int)Session["idioma"], 13);
        }
        catch (Exception)
        {
            Session["idioma"] = 1;
            componentes = idioma.controlarIdioma((int)Session["idioma"], 13);
        }
 
        B_ClienteProducto.Text = componentes["B_ClienteProducto"].ToString();
        B_ClienteCarro.Text = componentes["B_ClienteCarro"].ToString();
        B_Facturas.Text = componentes["B_Facturas"].ToString();
        B_Contactar.Text = componentes["B_Contactar"].ToString();
        B_ActualizarDatos.Text = componentes["B_ActualizarDatos"].ToString();
    }

    protected void B_ClienteProducto_Click(object sender, EventArgs e)
    {

         Logica_idiomaControl idioma = new Logica_idiomaControl();
        Hashtable componentes = new Hashtable();
        componentes = idioma.controlarIdioma((int)Session["idioma"], 13);

        this.RegisterStartupScript("", "<script type='text/javascript'>alert('"+componentes["java1"].ToString()+" ');window.location=\"ClienteProductos.aspx\"</script>");
        //this.RegisterStartupScript("mensaje", "<script type='text/javascript'>alert('Productos Cliente ');window.location=\"ClienteProductos.aspx\"</script>");
            
    }
    protected void B_ClienteCarro_Click(object sender, EventArgs e)
    {

         Logica_idiomaControl idioma = new Logica_idiomaControl();
        Hashtable componentes = new Hashtable();
        componentes = idioma.controlarIdioma((int)Session["idioma"], 13);

        this.RegisterStartupScript("", "<script type='text/javascript'>alert('"+componentes["java2"].ToString()+"');window.location=\"ClienteCarrito.aspx\"</script>");

    }
    protected void LB_enviarmensaje_Click(object sender, EventArgs e)
    {
        Response.Redirect("Clientemensaje.aspx");
    }
    protected void LB_ActualizarDatos_Click(object sender, EventArgs e)
    {
        Response.Redirect("ClienteActualizarDatos.aspx");
    }
    protected void B_Contactar_Click(object sender, EventArgs e)
    {
        Response.Redirect("Clientemensaje.aspx");
    }
    protected void B_Facturas_Click(object sender, EventArgs e)
    {
        Response.Redirect("ClienteRecibo.aspx");
    }
}
