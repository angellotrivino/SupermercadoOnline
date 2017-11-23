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
using MySql.Data.MySqlClient;
using UtilitarioC;
using LogicaC;

public partial class Presentacion_ClienteProductos : System.Web.UI.Page
{

    LClienteProductos logica = new LClienteProductos();
    UALL utili = new UALL();
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

            Session["idTipoUsuario"] = 3;

        }

        ///Liberar Productos plazo 30 dias.

        logica.liberarproductos();



        Logica_idiomaControl idioma = new Logica_idiomaControl();
        Hashtable componentes = new Hashtable();
        try
        {
        componentes = idioma.controlarIdioma((int)Session["idioma"], 17);
        }
        catch (Exception)
        {
            Session["idioma"] = 1;
            componentes = idioma.controlarIdioma((int)Session["idioma"], 17);
        }

        //B_InsertarProductos.Text = componentes["B_InsertarProductos"].ToString();
        L_TituloInserProductos.Text = componentes["L_TituloInserProductos"].ToString();
        L_Producto.Text = componentes["L_Producto"].ToString();
        B_Buscar.Text = componentes["B_Buscar"].ToString();
        REV_letras_numeros.ErrorMessage = componentes["REV_letras_numeros"].ToString();





    }

    protected void B_Buscar_Click(object sender, EventArgs e)
    {
       
        DL_Catalogo.DataBind();
     
        utili = logica.DL_CatalogoVacio(DL_Catalogo.Items.Count,(int)Session["idioma"]);

        L_Mensaje.Text = "" + utili.Mensaje + "";
    }

    protected void IB_Carrito_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("ClienteCarrito.aspx");
    }
    protected void IB_Atras_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("cliente.aspx");
    }
    protected void DL_Catalogo_ItemCommand(object source, DataListCommandEventArgs e)
    {
        ClientScriptManager cm = this.ClientScript;

        TextBox TB_Cantidad = (TextBox)(DL_Catalogo.Items[e.Item.ItemIndex].FindControl("T_Cantidad"));
        Label L_NombreProducto = (Label)(DL_Catalogo.Items[e.Item.ItemIndex].FindControl("L_Nombre"));
        Label L_IdProducto = (Label)(DL_Catalogo.Items[e.Item.ItemIndex].FindControl("L_IdProducto"));
    
        utili.Cantidad_TB = TB_Cantidad.Text;
        utili.Nombre = L_NombreProducto.Text;
        utili.IdProducto = int.Parse(L_IdProducto.Text);

        utili = logica.consultariventario(utili, (int)Session["idioma"]);

        try
        {
            int.Parse(utili.Nulo.ToString());
            L_Mensaje.Text = "" + utili.Mensaje + "";
            DL_Catalogo.DataBind();
            return;
          
        }
        catch (NullReferenceException ei)
        {
            L_Mensaje.Text = "" + utili.Mensaje + "";
            
        }

        ////// insertar al carro
        string ipAddress = HttpContext.Current.Request.UserHostAddress;
        string httpContext = HttpContext.Current.Server.MachineName;
        string MAC = mac.GetMAC(ref ipAddress, ref httpContext);

        utili.Cantidad_TB = TB_Cantidad.Text;
        utili.ItemIndex = e.Item.ItemIndex;
        utili.IdUsuario = int.Parse(Session["idUsuario"].ToString());
        utili.User = Session["usser"].ToString();
        utili.Mensaje1 = TB_Buscar.Text;

        utili = logica.insertarproductocarrito(utili,ipAddress, MAC,(int)Session["idioma"]);

        this.RegisterStartupScript("mensaje", "<script type='text/javascript'>alert('"+utili.Mensaje+"');window.location=\"ClienteProductos.aspx\"</script>");

    }
    protected void DL_Catalogo_ItemDataBound(object sender, DataListItemEventArgs e)
    {


        Logica_idiomaControl idioma = new Logica_idiomaControl();
        Hashtable componentes = new Hashtable();
        componentes = idioma.controlarIdioma((int)Session["idioma"], 17);

        Label producto = (Label)e.Item.FindControl("L_TituloProducto");
        producto.Text = componentes["L_TituloProducto"].ToString();

        Label proveedor = (Label)e.Item.FindControl("L_TituloProve");
        proveedor.Text = componentes["L_TituloProve"].ToString();

        Label precio = (Label)e.Item.FindControl("L_TituloPrecio");
        precio.Text = componentes["L_TituloPrecio"].ToString();

        Label cantidad = (Label)e.Item.FindControl("L_TiruloCantidad");
        cantidad.Text = componentes["L_TiruloCantidad"].ToString();

        RegularExpressionValidator num = (RegularExpressionValidator)e.Item.FindControl("REV_SoloNumeros");
        num.ErrorMessage = componentes["REV_SoloNumeros"].ToString();

        Button comprar = (Button)e.Item.FindControl("B_Comprar");
        comprar.Text = componentes["B_Comprar"].ToString();

        





    }
}
