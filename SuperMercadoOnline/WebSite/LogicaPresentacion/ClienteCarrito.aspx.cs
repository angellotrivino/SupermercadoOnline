using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using LogicaC;
using UtilitarioC;
using System.Collections;


public partial class Presentacion_ClienteCarrito : System.Web.UI.Page
{
    UALL utili = new UALL();
    LClienteCarrito logica = new LClienteCarrito();
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

        ////Producto apartado
        utili.IdUsuario = int.Parse(Session["idUsuario"].ToString());
        utili.DimControl = GV_Carrito.Columns.Count; /// numero de columnas gridview.
        utili = logica.productoapartado(utili);

        B_Comprar.Visible = utili.AuxBolean;

        l_TotalPedido.Text = "$ " + utili.Mensaje; //total pedido

        ///cantidad de productos.
        ///




        Logica_idiomaControl idioma = new Logica_idiomaControl();
        Hashtable componentes = new Hashtable();
        try
        {
        componentes = idioma.controlarIdioma((int)Session["idioma"], 15);
        }
        catch (Exception)
        {
            Session["idioma"] = 1;
            componentes = idioma.controlarIdioma((int)Session["idioma"], 15);
        }

        //B_InsertarProductos.Text = componentes["B_InsertarProductos"].ToString();

        Label4.Text = componentes["Label4"].ToString();
        L_TituloCantidad.Text = componentes["L_TituloCantidad"].ToString();
      
        L_TituloModCarrito.Text = componentes["L_TituloModCarrito"].ToString();

        try
        {
            idioma.validarTitulo(GV_Carrito.Rows.Count);
        }
        catch (Exception)
        {
            GV_Carrito.HeaderRow.Cells[0].Text = componentes["Proveedor"].ToString();
            GV_Carrito.HeaderRow.Cells[0].Text = componentes["Producto"].ToString();
            GV_Carrito.HeaderRow.Cells[0].Text = componentes["Decripcion"].ToString();
            GV_Carrito.HeaderRow.Cells[0].Text = componentes["Precio"].ToString();
            GV_Carrito.HeaderRow.Cells[0].Text = componentes["Cantidad"].ToString();
            GV_Carrito.HeaderRow.Cells[0].Text = componentes["Total"].ToString();
            GV_Carrito.HeaderRow.Cells[0].Text = componentes["Fecha"].ToString();
            GV_Carrito.HeaderRow.Cells[0].Text = componentes["Estado"].ToString();
            GV_Carrito.HeaderRow.Cells[0].Text = componentes["Editar"].ToString();
            GV_Carrito.HeaderRow.Cells[0].Text = componentes["Eliminar"].ToString();
    
        }

        L_MensajeTotal.Text = componentes["L_MensajeTotal"].ToString();
        B_Comprar.Text = componentes["B_Comprar"].ToString();
       


        
    }

    protected void IB_Actualizar_Click(object sender, ImageClickEventArgs e)
    {
        Session["condicional"] = 0; /// condicional de actualizar = 0


    }
    protected void B_Comprar_Click(object sender, EventArgs e)
    {
        string ipAddress = HttpContext.Current.Request.UserHostAddress;
        string httpContext = HttpContext.Current.Server.MachineName;
        string MAC = mac.GetMAC(ref ipAddress, ref httpContext);

        utili.IdUsuario = int.Parse(Session["idUsuario"].ToString());
        utili.User = Session["usser"].ToString();

        utili = logica.comprarproductos(utili, ipAddress, MAC,(int)Session["idioma"]);

        this.RegisterStartupScript("mensaje", "<script type='text/javascript'>alert('" + utili.Mensaje + "');window.location=\"ClienteCarrito.aspx\"</script>");

    }

    protected void GV_Carrito_SelectedIndexChanged(object sender, EventArgs e)
    {

        string ipAddress = HttpContext.Current.Request.UserHostAddress;
        string httpContext = HttpContext.Current.Server.MachineName;
        string MAC = mac.GetMAC(ref ipAddress, ref httpContext);

        //// datos del gridview
        utili.IdPedido = int.Parse(GV_Carrito.SelectedValue.ToString());
        utili.ItemIndex = int.Parse(Session["gridviewindex"].ToString());
        utili.User = Session["usser"].ToString();
        utili.IdUsuario = int.Parse(Session["idUsuario"].ToString());
        Label L_IdProducto = (Label)(GV_Carrito.Rows[utili.ItemIndex].FindControl("L_IdProducto"));
        utili.IdProducto = int.Parse(L_IdProducto.Text);
        Label L_NombreProducto = (Label)(GV_Carrito.Rows[utili.ItemIndex].FindControl("L_NombreProducto"));
        utili.Nombre = L_NombreProducto.Text;

        utili.IdCondicional = int.Parse(Session["condicional"].ToString());/// condicion si escoje actualizar o eliminar 

        try
        {
            utili = logica.condicional(utili);
            int.Parse(utili.Nulo.ToString());

        }
        catch (NullReferenceException ex)
        {
            TextBox TB_Cantidad = (TextBox)(GV_Carrito.Rows[utili.ItemIndex].FindControl("TB_Cantidad"));
            utili.Cantidad_TB = TB_Cantidad.Text;
            utili = logica.consultariventario(utili,(int)Session["idioma"]);////consultar si hay esa cantidad

            try
            {
                int.Parse(utili.Nulo.ToString());
                L_Mensaje.Text = "" + utili.Mensaje + "";
                GV_Carrito.DataBind();
                return;

            }
            catch (NullReferenceException ei)
            {
                L_Mensaje.Text = "" + utili.Mensaje + "";

            }

            utili = logica.modificarcarrito(utili, ipAddress, MAC,(int)Session["idioma"]);


        }
        catch (FormatException ei)
        {

            utili = logica.eliminarproducto(utili, ipAddress, MAC, (int)Session["idioma"]); // eliminar pedido

        }


        this.RegisterStartupScript("mensaje", "<script type='text/javascript'>alert('" + utili.Mensaje + "');window.location=\"ClienteCarrito.aspx\"</script>");



    }
    protected void IB_Atras_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Cliente.aspx");
    }
    protected void IB_Cancelar_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("ClienteCarrito.aspx");
    }
    protected void IB_Eliminar_Click(object sender, ImageClickEventArgs e)
    {
        Session["condicional"] = 1; /// condicional de eleminar = 1
    }
    protected void GV_Carrito_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        Session["gridviewindex"] = e.NewSelectedIndex; ///Columna a seleccionar del gridview

        L_Mensaje.Text = "Cantidad disponible: ";
    }
    protected void IB_Productos_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("ClienteProductos.aspx");
    }
    protected void DL_ListaProductos_ItemDataBound(object sender, DataListItemEventArgs e)
    {

        Logica_idiomaControl idioma = new Logica_idiomaControl();
        Hashtable componentes = new Hashtable();
        componentes = idioma.controlarIdioma((int)Session["idioma"], 15);


        

        Label producto = (Label)e.Item.FindControl("L_TituloProducto");
         producto.Text = componentes["L_TituloProducto"].ToString();


         Label cantidad = (Label)e.Item.FindControl("L_TituloCantidad");
        cantidad.Text = componentes["L_TituloCantidad1"].ToString();
    }
}