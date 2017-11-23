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


public partial class Presentacion_CajeroConsulta : System.Web.UI.Page
{
    
    LCajeroConsulta logica = new LCajeroConsulta();
    UALL utili = new UALL();
    LClienteProductos logicaInsertarProducto = new LClienteProductos();
    LMac mac = new LMac();

    protected void Page_Load(object sender, EventArgs e)
    {
        //Sesion


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

        ///Liberar Productos plazo 30 dias.

        logica.liberarproductos();




        Logica_idiomaControl idioma = new Logica_idiomaControl();
        Hashtable componentes = new Hashtable();
        try
        {
            componentes = idioma.controlarIdioma((int)Session["idioma"], 10);
        }
        catch
        {
            Session["idioma"] = 1;
            componentes = idioma.controlarIdioma((int)Session["idioma"], 10);
        }

        L_TituloConsultaCajero.Text = componentes["L_TituloConsultaCajero"].ToString();
        L_TtituloPedido.Text = componentes["L_TtituloPedido"].ToString();
        B_BuscarCedula.Text = componentes["B_BuscarCedula"].ToString();
        REV_NumerosCedula.ErrorMessage = componentes["REV_NumerosCedula"].ToString();


        try
        {
            idioma.validarTitulo(GV_Carrito.Rows.Count);
        }
        catch (Exception)
        {
            
            
 
        }

        B_vender.Text = componentes["B_vender"].ToString();
        L_titulototalpedido.Text = componentes["L_titulototalpedido"].ToString();
        L_TituloConsultaProductos.Text = componentes["L_TituloConsultaProductos"].ToString();
        L_TituloProducto.Text = componentes["L_TituloProducto"].ToString();
        B_BuscarProducto.Text = componentes["B_BuscarProducto"].ToString();
        REV_letras_numeros0.ErrorMessage = componentes["REV_letras_numeros0"].ToString();
        
        






    }

  
    protected void GV_Carrito_SelectedIndexChanged(object sender, EventArgs e)
    {
        ClientScriptManager cm = this.ClientScript;
        
        string ipAddress = HttpContext.Current.Request.UserHostAddress;
        string httpContext = HttpContext.Current.Server.MachineName;
        string MAC = mac.GetMAC(ref ipAddress, ref httpContext);

        //Eliminar del carrito cliente
        utili.User = Session["usser"].ToString(); ///vender y eleminar productos
        utili.IdCliente = int.Parse(TB_cedula.Text);///vender y eleminar productos
        utili.IdPedido = int.Parse(this.GV_Carrito.SelectedValue.ToString());///vender y eleminar productos

        utili = logica.eliminarproducto(utili, ipAddress, MAC, (int)Session["idioma"]);

            //cargar de nuevo el gridview y datalist
            GV_Carrito.DataBind();
            DL_Catalogo.DataBind();

            cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('" + utili.Mensaje + "');</script>");

            /// Reiniciar busqueda cedula con total pedido
            GV_Carrito.DataBind();

            utili.Id = int.Parse(TB_cedula.Text);

            utili = logica.buscarpedido(utili,(int)Session["idioma"]);

            l_TotalPedido.Text = utili.Mensaje; ///total pedido
            L_MensajeCarrito.Text = utili.Mensaje1; //si hay pedido?
            GV_Carrito.Visible = utili.AuxBolean;
            DL_Catalogo.Visible = utili.AuxBolean;
            B_vender.Visible = utili.AuxBolean;
            L_MensajeProducto.Visible = utili.AuxBolean;
            TB_Producto.Visible = utili.AuxBolean;
            B_BuscarProducto.Visible = utili.AuxBolean;
            L_TituloProducto.Visible = utili.AuxBolean;

            return;


        }
                    
    
  
    protected void B_BuscarCedula_Click(object sender, EventArgs e)
    {

        
        
           GV_Carrito.DataBind();

           Logica_idiomaControl idioma = new Logica_idiomaControl();
           Hashtable componentes = new Hashtable();
           componentes = idioma.controlarIdioma((int)Session["idioma"], 10);
           try
           {
               idioma.validarTitulo(GV_Carrito.Rows.Count);
           }
           catch (Exception)
           {


               GV_Carrito.HeaderRow.Cells[1].Text = componentes["Proveedor"].ToString();
               GV_Carrito.HeaderRow.Cells[2].Text = componentes["Producto"].ToString();
               GV_Carrito.HeaderRow.Cells[3].Text = componentes["Descripcion"].ToString();
               GV_Carrito.HeaderRow.Cells[4].Text = componentes["Precio"].ToString();
               GV_Carrito.HeaderRow.Cells[5].Text = componentes["Cantidad"].ToString();
               GV_Carrito.HeaderRow.Cells[6].Text = componentes["Total"].ToString();
               GV_Carrito.HeaderRow.Cells[7].Text = componentes["horadereserva"].ToString();
               GV_Carrito.HeaderRow.Cells[8].Text = componentes["Eliminar"].ToString();

           }

           utili.Id = int.Parse(TB_cedula.Text);

           utili = logica.buscarpedido(utili, (int)Session["idioma"]);

            l_TotalPedido.Text = utili.Mensaje; ///total pedido
            L_MensajeCarrito.Text = utili.Mensaje1; //si hay pedido?
            GV_Carrito.Visible = utili.AuxBolean;
            DL_Catalogo.Visible = utili.AuxBolean;
            B_vender.Visible = utili.AuxBolean;
            L_MensajeProducto.Visible = utili.AuxBolean;
            TB_Producto.Visible = utili.AuxBolean;
            B_BuscarProducto.Visible = utili.AuxBolean;
            L_TituloProducto.Visible = utili.AuxBolean;
     
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

        utili = logicaInsertarProducto.consultariventario(utili,(int)Session["idioma"]);

        try
        {
            int.Parse(utili.Nulo.ToString());
            L_MensajeProducto.Text = "" + utili.Mensaje + "";
            DL_Catalogo.DataBind();
            return;

        }
        catch (NullReferenceException ei)
        {
            L_MensajeProducto.Text = "" + utili.Mensaje + "";
        }

        ////// insertar al carro
        string ipAddress = HttpContext.Current.Request.UserHostAddress;
        string httpContext = HttpContext.Current.Server.MachineName;
        string MAC = mac.GetMAC(ref ipAddress, ref httpContext);

        utili.Id = int.Parse(TB_cedula.Text); /// id del cliente
        utili.Cantidad_TB = TB_Cantidad.Text;
        utili.ItemIndex = e.Item.ItemIndex; // indice de la fila del DL_Catalogo
        utili.User = Session["usser"].ToString(); // user del cajero

        utili = logica.insertarproductocarritoCajero(utili, ipAddress, MAC, (int)Session["idioma"]);

        ///cargar controles gtridview y datalist
        GV_Carrito.DataBind();
        DL_Catalogo.DataBind();

        cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('" + utili.Mensaje + "');</script>");
        return;
        

    }

    protected void B_BuscarProducto_Click(object sender, EventArgs e)
    {

        DL_Catalogo.DataBind();

        utili = logica.DL_CatalogoVacio(DL_Catalogo.Items.Count, (int)Session["idioma"]);

        L_MensajeProducto.Text = "" + utili.Mensaje + "";

        
    }
    protected void IB_Atras_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Cajero.aspx");
    }
    protected void B_vender_Click(object sender, EventArgs e)
    {

        string ipAddress = HttpContext.Current.Request.UserHostAddress;
        string httpContext = HttpContext.Current.Server.MachineName;
        string MAC = mac.GetMAC(ref ipAddress, ref httpContext);

        //Datos a encapsular para los eventos
        utili.IdCajero = int.Parse(Session["idUsuario"].ToString()); ///vender productos
        utili.User = Session["usser"].ToString(); ///vender y eleminar productos
        utili.IdCliente = int.Parse(TB_cedula.Text);///vender y eleminar productos
       
        //vender pedido del carriro al cliente
        utili = logica.venderproductos(utili, ipAddress, MAC, (int)Session["idioma"]);


        Session["idCliente"] = TB_cedula.Text;

        this.RegisterStartupScript("mensaje", "<script type='text/javascript'>alert('" + utili.Mensaje + "');window.location=\"" + utili.Url + "\"</script>");


    }
    protected void DL_Catalogo_ItemDataBound(object sender, DataListItemEventArgs e)
    {

        Logica_idiomaControl idioma = new Logica_idiomaControl();
        Hashtable componentes = new Hashtable();
        componentes = idioma.controlarIdioma((int)Session["idioma"], 10);


        Label producto = (Label)e.Item.FindControl("L_TituloProducto");
        producto.Text = componentes["L_TituloProducto1"].ToString();

        Label proveedor = (Label)e.Item.FindControl("L_TituloProveedor");
        proveedor.Text = componentes["L_TituloProveedor"].ToString();

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
