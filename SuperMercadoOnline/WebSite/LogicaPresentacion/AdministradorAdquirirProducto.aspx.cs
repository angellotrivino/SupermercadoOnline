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
using System.Globalization;
using System.Threading;

public partial class Presentacion_AdministradorAdquirirP : System.Web.UI.Page
{

    LSesionAdministrador LSesion = new LSesionAdministrador();
    UALL utili = new UALL();
    LAAdquirirProducto logica = new LAAdquirirProducto();
    LMac mac = new LMac();

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
        componentes = idioma.controlarIdioma((int)Session["idioma"], 3);
        }
        catch(Exception)
        {
            Session["idioma"] = 1;
            componentes = idioma.controlarIdioma((int)Session["idioma"], 3);
        }

        L_TituloAdquiProdu.Text = componentes["L_TituloAdquiProdu"].ToString();

        try
        {
            idioma.validarTitulo(GV_RelacionProductoProveedor.Rows.Count);
        }
        catch (Exception)
        {

            GV_RelacionProductoProveedor.HeaderRow.Cells[0].Text = componentes["Logo Proveedor"].ToString();
            GV_RelacionProductoProveedor.HeaderRow.Cells[1].Text = componentes["Nombre Proveedor"].ToString();
            GV_RelacionProductoProveedor.HeaderRow.Cells[2].Text = componentes["Imagen Producto"].ToString();
            GV_RelacionProductoProveedor.HeaderRow.Cells[3].Text = componentes["Nombre Producto"].ToString();
            GV_RelacionProductoProveedor.HeaderRow.Cells[4].Text = componentes["Precio Compra"].ToString();
            GV_RelacionProductoProveedor.HeaderRow.Cells[5].Text = componentes["Precio Venta"].ToString();
            GV_RelacionProductoProveedor.HeaderRow.Cells[6].Text = componentes["Unidades"].ToString();
            GV_RelacionProductoProveedor.HeaderRow.Cells[7].Text = componentes["Opciones"].ToString();
        }
    

        
          

               

    }



    protected void IB_Atras_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("administrador.aspx");
    }
    protected void GV_RelacionProductoProveedor_SelectedIndexChanged(object sender, EventArgs e)
    {

        ClientScriptManager cm = this.ClientScript;
        
        string ipAddress = HttpContext.Current.Request.UserHostAddress;
        string httpContext = HttpContext.Current.Server.MachineName;
        string MAC = mac.GetMAC(ref ipAddress, ref httpContext);

            try
            {

                utili.ItemIndex = int.Parse(Session["GV_index"].ToString());

                utili.Id = int.Parse(this.GV_RelacionProductoProveedor.DataKeys[utili.ItemIndex].Value.ToString());
                utili.Precio = double.Parse(((TextBox)(this.GV_RelacionProductoProveedor.Rows[utili.ItemIndex].FindControl("TB_precioVenta"))).Text);
                utili.Cantidad_TB = ((TextBox)(this.GV_RelacionProductoProveedor.Rows[utili.ItemIndex].FindControl("TB_Cantidad"))).Text;
                utili.User = Session["usser"].ToString();

                utili = logica.adquirirproductos(utili, ipAddress, MAC, (int) Session["idioma"]);

                int.Parse(utili.Nulo.ToString());

                cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('" + utili.Mensaje + "');</script>");
                return;
            }
            catch (NullReferenceException o)
            {

                this.RegisterStartupScript("", "<script type='text/javascript'>alert('" + utili.Mensaje + "');window.location=\"" + utili.Url + "\"</script>");

            }
        }
    

    protected void GV_RelacionProductoProveedor_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        Session["GV_index"] = e.NewSelectedIndex;

        
        
    }



    protected void LB_Editar_Click(object sender, EventArgs e)
    {

        Logica_idiomaControl idioma = new Logica_idiomaControl();
        Hashtable componentes = new Hashtable();

        componentes = idioma.controlarIdioma((int)Session["idioma"], 3);

        try
        {
            idioma.validarTitulo(GV_RelacionProductoProveedor.Rows.Count);
        }
        catch (Exception)
        {

            GV_RelacionProductoProveedor.HeaderRow.Cells[0].Text = componentes["Logo Proveedor"].ToString();
            GV_RelacionProductoProveedor.HeaderRow.Cells[1].Text = componentes["Nombre Proveedor"].ToString();
            GV_RelacionProductoProveedor.HeaderRow.Cells[2].Text = componentes["Imagen Producto"].ToString();
            GV_RelacionProductoProveedor.HeaderRow.Cells[3].Text = componentes["Nombre Producto"].ToString();
            GV_RelacionProductoProveedor.HeaderRow.Cells[4].Text = componentes["Precio Compra"].ToString();
            GV_RelacionProductoProveedor.HeaderRow.Cells[5].Text = componentes["Precio Venta"].ToString();
            GV_RelacionProductoProveedor.HeaderRow.Cells[6].Text = componentes["Unidades"].ToString();
            GV_RelacionProductoProveedor.HeaderRow.Cells[7].Text = componentes["Opciones"].ToString();
        }


    }

    protected void GV_RelacionProductoProveedor_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        Logica_idiomaControl idioma = new Logica_idiomaControl();
        Hashtable componentes = new Hashtable();

        componentes = idioma.controlarIdioma((int)Session["idioma"], 3);

        try
        {
            idioma.validarTitulo(GV_RelacionProductoProveedor.Rows.Count);
        }
        catch (Exception)
        {

            GV_RelacionProductoProveedor.HeaderRow.Cells[0].Text = componentes["Logo Proveedor"].ToString();
            GV_RelacionProductoProveedor.HeaderRow.Cells[1].Text = componentes["Nombre Proveedor"].ToString();
            GV_RelacionProductoProveedor.HeaderRow.Cells[2].Text = componentes["Imagen Producto"].ToString();
            GV_RelacionProductoProveedor.HeaderRow.Cells[3].Text = componentes["Nombre Producto"].ToString();
            GV_RelacionProductoProveedor.HeaderRow.Cells[4].Text = componentes["Precio Compra"].ToString();
            GV_RelacionProductoProveedor.HeaderRow.Cells[5].Text = componentes["Precio Venta"].ToString();
            GV_RelacionProductoProveedor.HeaderRow.Cells[6].Text = componentes["Unidades"].ToString();
            GV_RelacionProductoProveedor.HeaderRow.Cells[7].Text = componentes["Opciones"].ToString();
        }
        Response.Redirect("AdministradorAdquirirProducto.aspx");

    }
}