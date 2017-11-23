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
using System.Collections;
using LogicaC;

public partial class Presentacion_ManualUsuario : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {


        Logica_idiomaControl idioma = new Logica_idiomaControl();
        Hashtable componentes = new Hashtable();
        try
        {
            componentes = idioma.controlarIdioma((int)Session["idioma"], 22);
        }
        catch (Exception)
        {
            Session["idioma"] = 1;
            componentes = idioma.controlarIdioma((int)Session["idioma"], 22);
        }


        L_ManualUsuario.Text = componentes["L_ManualUsuario"].ToString();
        L_Catalogo.Text = componentes["L_Catalogo"].ToString();
        L_TextoCatalogo.Text = componentes["L_TextoCatalogo"].ToString();
        L_InicioSesion.Text = componentes["L_InicioSesion"].ToString();
        L_InicioSesionSub.Text = componentes["L_InicioSesionSub"].ToString();
        L_TextoInicioSesion.Text = componentes["L_TextoInicioSesion"].ToString();
        L_RegistreseSub.Text = componentes["L_RegistreseSub"].ToString();
        L_TextoRegistrese.Text = componentes["L_TextoRegistrese"].ToString();
        L_Contactenos.Text = componentes["L_Contactenos"].ToString();
        L_TextoContactenos.Text = componentes["L_TextoContactenos"].ToString();
        L_MenuClieOIni.Text = componentes["L_MenuClieOIni"].ToString();
        L_TextoMenuCliente.Text = componentes["L_TextoMenuCliente"].ToString();
        L_TextoDatosUsuario.Text = componentes["L_TextoDatosUsuario"].ToString();
        L_DatosUsuario.Text = componentes["L_DatosUsuario"].ToString();
        L_AgregarProductos.Text = componentes["L_AgregarProductos"].ToString();
        L_TextoAgregarProductos.Text = componentes["L_TextoAgregarProductos"].ToString();
        L_CarritoCompras.Text = componentes["L_CarritoCompras"].ToString();
        L_TextoCarritoCompras.Text = componentes["L_TextoCarritoCompras"].ToString();
        L_ActualizarDatos.Text = componentes["L_ActualizarDatos"].ToString();
        L_TextoActualizarDatos.Text = componentes["L_TextoActualizarDatos"].ToString();

        //imagenes
        I_catalogo.ImageUrl = componentes["I_catalogo"].ToString();
        I_Login.ImageUrl = componentes["I_Login"].ToString();
        I_Contactenos.ImageUrl = componentes["I_Contactenos"].ToString();
        I_InicioCliente.ImageUrl = componentes["I_InicioCliente"].ToString();
        I_DatosUsuario.ImageUrl = componentes["I_DatosUsuario"].ToString();
        I_AgregarProductos.ImageUrl = componentes["I_AgregarProductos"].ToString();
        I_carritoCompras.ImageUrl = componentes["I_carritoCompras"].ToString();
        i_ActualizarDatos.ImageUrl = componentes["i_ActualizarDatos"].ToString();





    }
    protected void IB_Atras_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
}
