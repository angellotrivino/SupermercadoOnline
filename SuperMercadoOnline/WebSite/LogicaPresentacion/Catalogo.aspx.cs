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

public partial class Presentacion_Catalogo : System.Web.UI.Page
{
    LCatalogo logica = new LCatalogo();
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

        //Session["idioma"] = 2; //para probar nada mas :')

        Logica_idiomaControl idioma = new Logica_idiomaControl();
        Hashtable componentes = new Hashtable();
        try
        {
            componentes = idioma.controlarIdioma((int)Session["idioma"], 12);
        }
        catch (Exception)
        {
            Session["idioma"] = 1;
            componentes = idioma.controlarIdioma((int)Session["idioma"], 12);
        }

        //B_InsertarProductos.Text = componentes["B_InsertarProductos"].ToString();
        B_contactenos.Text = componentes["B_contactenos"].ToString();
        B_ManualUsuario.Text = componentes["B_ManualUsuario"].ToString();
        LB_Login.Text = componentes["LB_Login"].ToString();
        L_Producto.Text = componentes["L_Producto"].ToString();
        B_Buscar.Text = componentes["B_Buscar"].ToString();
        REV_letras_numeros.ErrorMessage = componentes["REV_letras_numeros"].ToString();
        I_Catalogo.ImageUrl = componentes["I_Catalogo"].ToString();

    }
    protected void LB_Login_Click(object sender, EventArgs e)
    {
       
        Response.Redirect("Login.aspx");
        
    }
      protected void B_Buscar_Click(object sender, EventArgs e)
    {
        DL_Productos.DataBind();

        utili = logica.DL_ProductosVacio(DL_Productos.Items.Count,(int)Session["idioma"]);
      
          L_Mensaje.Text = ""+utili.Mensaje+"";

    }
    
      protected void B_ManualUsuario_Click(object sender, EventArgs e)
      {
          Response.Redirect("ManualUsuario.aspx");
      }
     
      protected void B_Comprar_Click(object sender, EventArgs e)
      {
          Response.Redirect("Login.aspx");
      }

      protected void B_contactenos_Click(object sender, EventArgs e)
      {
          Response.Redirect("contactenos.aspx");
      }
      protected void DL_Productos_ItemDataBound(object sender, DataListItemEventArgs e)
      {

          Logica_idiomaControl idioma = new Logica_idiomaControl();
          Hashtable componentes = new Hashtable();
          componentes = idioma.controlarIdioma((int)Session["idioma"], 12);

          Label producto = (Label)e.Item.FindControl("L_Titulo");
          producto.Text = componentes["L_Titulo"].ToString();

          Label precio = (Label)e.Item.FindControl("L_Subtitulo");
          precio.Text = componentes["L_Subtitulo"].ToString();

          Label proveedor = (Label)e.Item.FindControl("L_TituloProve");
          proveedor.Text = componentes["L_TituloProve"].ToString();

          Button comprar = (Button)e.Item.FindControl("B_Comprar");
          comprar.Text = componentes["B_Comprar"].ToString();


      }
}
