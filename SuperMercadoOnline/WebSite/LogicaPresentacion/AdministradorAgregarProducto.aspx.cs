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
using System.IO;

public partial class Presentacion_AdministradorAgregarP : System.Web.UI.Page
{
    LSesionAdministrador LSesion = new LSesionAdministrador();
    UALL utili = new UALL();
    LAAgregarProducto logica = new LAAgregarProducto();
    LMac mac = new LMac();

    protected void Page_Load(object sender, EventArgs e)
    {
     //   DropDL_Producto.Items.Clear(); elimina el contendido del dropdownlist

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
            componentes = idioma.controlarIdioma((int)Session["idioma"], 5);
        }
        catch (Exception)
        {
            Session["idioma"] = 1;
            componentes = idioma.controlarIdioma((int)Session["idioma"], 5);
        }

        L_TituloIngProd.Text = componentes["L_TituloIngProd"].ToString();
        L_TituloModProd.Text = componentes["L_TituloModProd"].ToString();
        B_Modificar.Text = componentes["B_Modificar"].ToString();
        L_TituloActualizar.Text = componentes["L_TituloActualizar"].ToString();
        L_Codigo.Text = componentes["L_Codigo"].ToString();
        REV_NumerosCodigo.ErrorMessage = componentes["REV_NumerosCodigo"].ToString();
        L_Nombre.Text = componentes["L_Nombre"].ToString();
        L_Imagen.Text = componentes["L_Imagen"].ToString();
        RFV_FUProducto.ErrorMessage = componentes["RFV_FUProducto"].ToString();
        L_Descripcion.Text = componentes["L_Descripcion"].ToString();
        B_NProducto.Text = componentes["B_NProducto"].ToString();
        B_Actualizar.Text = componentes["B_Actualizar"].ToString();

        B_Cancelar.Text = componentes["B_Cancelar"].ToString();
        L_tituloMostElimiProd.Text = componentes["L_tituloMostElimiProd"].ToString();
        



            



       
    }
    
   protected void B_NProducto_Click(object sender, EventArgs e)
    {
        ClientScriptManager cm = this.ClientScript;


            string ipAddress = HttpContext.Current.Request.UserHostAddress;
            string httpContext = HttpContext.Current.Server.MachineName;
            string MAC = mac.GetMAC(ref ipAddress, ref httpContext);

       
            utili.LogoExtension = System.IO.Path.GetExtension(FU_Producto.PostedFile.FileName);
            utili.SaveLocationLogo = Server.MapPath("~\\Imagenes\\Productos") + "\\";

            utili.IdProducto = int.Parse(TB_Codigo.Text);
            utili.Nombre = TB_Nombre.Text;
            utili.Descripcion = TB_Descripcion.Text;
            utili.User = Session["usser"].ToString();

            utili = logica.insertarproducto(utili,ipAddress,MAC, (int) Session["idioma"]);

            try
            {
                FU_Producto.PostedFile.SaveAs(utili.SaveLocationLogo);
            }
            catch (HttpException ei)
            {
            }

            try
            {
                utili = logica.condicional(utili);

                int.Parse(utili.Nulo.ToString());

                cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('" + utili.Mensaje + "');</script>");
                return;
            }
            catch (NullReferenceException o)
            {

                this.RegisterStartupScript("mensaje", "<script type='text/javascript'>alert('" + utili.Mensaje + "');window.location=\"" + utili.Url + "\"</script>");

            }
       
    }
   protected void DL_Producto_ItemCommand(object source, DataListCommandEventArgs e)
   {
       ClientScriptManager cm = this.ClientScript;

       string ipAddress = HttpContext.Current.Request.UserHostAddress;
       string httpContext = HttpContext.Current.Server.MachineName;
       string MAC = mac.GetMAC(ref ipAddress, ref httpContext);

       utili.SaveLocationLogo = Server.MapPath(((Image)DL_Producto.Items[e.Item.ItemIndex].FindControl("I_Producto")).ImageUrl);
       utili.ItemIndex = e.Item.ItemIndex;
       utili.IdProducto = int.Parse(DL_Producto.DataKeys[e.Item.ItemIndex].ToString());
       utili.User = Session["usser"].ToString();

       utili = logica.eliminarproducto(utili, ipAddress, MAC, (int)Session["idioma"]); /// eliminar producto

       ///try para si es un mensaje sin redireccionamiento o lo contrario
       try
       {
           utili = logica.condicional(utili);

           int.Parse(utili.Nulo.ToString());

           cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('" + utili.Mensaje + "');</script>");
           return;

       }
       catch (NullReferenceException ei)
       {
           this.RegisterStartupScript("mensaje", "<script type='text/javascript'>alert('" + utili.Mensaje + "');window.location=\"" + utili.Url + "\"</script>");

       }

       /// actualizar lista de productos.
       DL_Producto.DataBind();

   }
   protected void B_Cancelar_Click(object sender, EventArgs e)
   {
       Response.Redirect("AdministradorAgregarProducto.aspx");
   }

   protected void B_Modificar_Click(object sender, EventArgs e)
   {

       utili.ItemIndex = int.Parse(DDL_Producto.SelectedValue);

       utili = logica.obtenerDatosProductos(utili);


       TB_Codigo.Text = utili.IdProducto.ToString();
       TB_Nombre.Text = utili.Nombre;
       TB_Descripcion.Text = utili.Descripcion;
       I_Producto.ImageUrl = utili.Imagen;
              

       I_Producto.Visible = true;
       DDL_Producto.Enabled = false;
       B_NProducto.Visible = false;
       B_Actualizar.Visible = true;
       B_Modificar.Enabled = false;
       B_Cancelar.Visible = true;
       TB_Codigo.Enabled = false;
       RFV_FUProducto.Enabled = false;
   }
   protected void B_Actualizar_Click(object sender, EventArgs e)
   {
       ClientScriptManager cm = this.ClientScript;

       
            string ipAddress = HttpContext.Current.Request.UserHostAddress;
            string httpContext = HttpContext.Current.Server.MachineName;
            string MAC = mac.GetMAC(ref ipAddress, ref httpContext);

            utili.LogoUrl = Server.MapPath(I_Producto.ImageUrl);
            utili.Ruta = I_Producto.ImageUrl;
            utili.SaveLocationLogo = Server.MapPath("~\\Imagenes\\Productos") + "\\";
            utili.LogoExtension = System.IO.Path.GetExtension(FU_Producto.PostedFile.FileName);

           utili.IdProducto = int.Parse(TB_Codigo.Text);
           utili.Nombre = TB_Nombre.Text;
           utili.Descripcion = TB_Descripcion.Text;
           utili.User = Session["usser"].ToString();

           utili = logica.modificarproducto(utili, ipAddress, MAC, (int)Session["idioma"]);  ///modificar producto

            try
            {
                FU_Producto.PostedFile.SaveAs(utili.SaveLocationLogo);
            }
            catch (HttpException ei)
            {
            }

         
           
          try
        {
            utili = logica.condicional(utili);

            int.Parse(utili.Nulo.ToString());

            cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('" + utili.Mensaje + "');</script>");
            return;

        }
        catch (NullReferenceException ei)
        {
            this.RegisterStartupScript("mensaje", "<script type='text/javascript'>alert('" + utili.Mensaje + "');window.location=\"" + utili.Url + "\"</script>");

        }

      }
   protected void IB_Atras_Click(object sender, ImageClickEventArgs e)
   {
       Response.Redirect("administrador.aspx");
   }
   protected void DL_Producto_ItemDataBound(object sender, DataListItemEventArgs e)
   {
       Logica_idiomaControl idioma = new Logica_idiomaControl();
       Hashtable componentes = new Hashtable();
       componentes = idioma.controlarIdioma((int)Session["idioma"], 5);

       Label codigo = (Label)e.Item.FindControl("L_TituloCodigo");
       codigo.Text = componentes["L_TituloCodigo"].ToString();
       Label nombre = (Label)e.Item.FindControl("L_TituloNombre");
       nombre.Text = componentes["L_TituloNombre"].ToString();
   }
}