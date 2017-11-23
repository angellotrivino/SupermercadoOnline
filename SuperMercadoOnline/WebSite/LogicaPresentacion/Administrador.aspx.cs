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

public partial class Presentacion_Administrador : System.Web.UI.Page
{
    UALL utili = new UALL();
    LSesionAdministrador LSesion = new LSesionAdministrador();
   

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
        Hashtable componentes  = new Hashtable();
        try
        {

            componentes = idioma.controlarIdioma((int)Session["idioma"], 2);
        }
        catch(Exception)
        {
            Session["idioma"] = 1;
            componentes = idioma.controlarIdioma((int)Session["idioma"], 2);
        }

        B_InsertarProductos.Text = componentes["B_InsertarProductos"].ToString();

        B_InsertarProveedores.Text = componentes["B_InsertarProveedores"].ToString();
        B_AdquirirProducto.Text = componentes["B_AdquirirProducto"].ToString();
        B_GenerarReportes.Text = componentes["B_GenerarReportes"].ToString();
        B_Cajeros.Text = componentes["B_Cajeros"].ToString();
        B_ActualizarDatos.Text = componentes["B_ActualizarDatos"].ToString();
        B_MensajesClientes.Text = componentes["B_MensajesClientes"].ToString();
        I_ProductoNuevo.ImageUrl = componentes["I_ProductoNuevo"].ToString();
        B_idioma.Text = componentes["B_idioma"].ToString();




    }
   
    protected void B_InsertarProductos_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdministradorAgregarProducto.aspx");

    }
    protected void B_InsertarProveedores_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdministradorAgregarProov.aspx");

    }
    protected void B_GenerarReportes_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdministradorUtilidad.aspx");

    }
    protected void B_AdquirirProducto_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdministradorAdquirirProducto.aspx");

    }
    protected void B_Cajeros_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdministradorAgregarCajeros.aspx");
    }

    protected void B_ActualizarDatos_Click(object sender, EventArgs e)
    {
        Response.Redirect("ClienteActualizarDatos.aspx");
    }
    protected void B_MensajesClientes_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdministradorMensajes.aspx");
    }
}
