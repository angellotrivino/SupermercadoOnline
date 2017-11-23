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

public partial class Presentacion_AgregarProov : System.Web.UI.Page
{
   
    UALL utili = new UALL();
    LSesionAdministrador LSesion = new LSesionAdministrador();
    LAAgregarProveedor logica = new LAAgregarProveedor();
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
            componentes = idioma.controlarIdioma((int)Session["idioma"], 6);
        }
        catch (Exception)
        {
            Session["idioma"] = 1;
            componentes = idioma.controlarIdioma((int)Session["idioma"], 6);
        }

        L_TituloAgreModProov.Text = componentes["L_TituloAgreModProov"].ToString();
        L_ModProov.Text = componentes["L_ModProov"].ToString();
        B_Modificar.Text = componentes["B_Modificar"].ToString();
        L_TituloActualizarProve.Text = componentes["L_TituloActualizarProve"].ToString();
        L_Nit.Text = componentes["L_Nit"].ToString();
        REV_NumerosNit.ErrorMessage = componentes["REV_NumerosNit"].ToString();
        L_Nombre.Text = componentes["L_Nombre"].ToString();
        L_EMail.Text = componentes["L_EMail"].ToString();
        REV_Correo.ErrorMessage = componentes["REV_Correo"].ToString();
        L_Direccion.Text = componentes["L_Direccion"].ToString();
        L_Imagen.Text = componentes["L_Imagen"].ToString();
        L_Telefono.Text = componentes["L_Telefono"].ToString();
        REV_Telefono.ErrorMessage = componentes["REV_Telefono"].ToString();
        B_Actualizar.Text = componentes["B_Actualizar"].ToString();
        B_Cancelar.Text = componentes["B_Cancelar"].ToString();
        B_AgregarProveedor.Text = componentes["B_AgregarProveedor"].ToString();
        L_TituloAgreProdProve.Text = componentes["L_TituloAgreProdProve"].ToString();
        L_Producto.Text = componentes["L_Producto"].ToString();
        L_PrecioProdProv.Text = componentes["L_PrecioProdProv"].ToString();
        REV_NumerosPrecioPrProv.ErrorMessage = componentes["REV_NumerosPrecioPrProv"].ToString();
        L_Proveedor.Text = componentes["L_Proveedor"].ToString();
        B_AgregarProducto.Text = componentes["B_AgregarProducto"].ToString();
        L_TituloMostProveYProducProve.Text = componentes["L_TituloMostProveYProducProve"].ToString();

        try
        {
            idioma.validarTitulo(GV_Proveedor.Rows.Count);
        }
        catch (Exception)
        {

            GV_Proveedor.HeaderRow.Cells[0].Text = componentes["Seleccione"].ToString();
            GV_Proveedor.HeaderRow.Cells[1].Text = componentes["Imagen"].ToString();
            GV_Proveedor.HeaderRow.Cells[2].Text = componentes["Nombre"].ToString();
            GV_Proveedor.HeaderRow.Cells[3].Text = componentes["Direccion"].ToString();
            GV_Proveedor.HeaderRow.Cells[4].Text = componentes["Telefono"].ToString();
            GV_Proveedor.HeaderRow.Cells[5].Text = componentes["EMail"].ToString();
            GV_Proveedor.HeaderRow.Cells[6].Text = componentes["Eliminar"].ToString();

        }



        
        
    }

    protected void B_Agregar_Click(object sender, EventArgs e)
    {

        ClientScriptManager cm = this.ClientScript;

        try{

            string ipAddress = HttpContext.Current.Request.UserHostAddress;
            string httpContext = HttpContext.Current.Server.MachineName;
            string MAC = mac.GetMAC(ref ipAddress, ref httpContext);

       
            utili.LogoExtension = System.IO.Path.GetExtension(FU_Logo.PostedFile.FileName);
            utili.SaveLocationLogo = Server.MapPath("~\\Imagenes\\Logo") + "\\";
            
            utili.IdProveedor = int.Parse(TB_NIT.Text);
            utili.Nombre = TB_Nombre.Text;
            utili.Direccion = TB_Direccion.Text;
            utili.Telefono = TB_Telefono.Text;
            utili.Email = TB_Email.Text;
            utili.User = Session["usser"].ToString();

            utili = logica.insertarproveedor(utili, ipAddress, MAC, (int)Session["idioma"]);

            try
            {
                FU_Logo.PostedFile.SaveAs(utili.SaveLocationLogo);
            }
            catch (HttpException ei)
            {
            }

            int.Parse(utili.Nulo.ToString());

            cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('"+utili.Mensaje+"');</script>");
            return;

            
        }
        catch (NullReferenceException ei)
        {

            //this.RegisterStartupScript("mensaje", "<script type='text/javascript'>alert('"+utili.Mensaje+"');window.location=\""+utili.Ruta+"\"</script>");
            this.RegisterStartupScript("", "<script type='text/javascript'>alert('" + utili.Mensaje + "');window.location=\"" + utili.Ruta + "\"</script>");
        }

    }

    protected void LB_Seleccionar_Click(object sender, EventArgs e)
    {
        Session["DL_ItemIndex"] = 0;
    }

    protected void IB_EliminarProveedor_Click(object sender, ImageClickEventArgs e)
    {

        Session["DL_ItemIndex"] = 1;

    }

    protected void GV_Proveedor_SelectedIndexChanged(object sender, EventArgs e)
    {

        ClientScriptManager cm = this.ClientScript;

        string ipAddress = HttpContext.Current.Request.UserHostAddress;
        string httpContext = HttpContext.Current.Server.MachineName;
        string MAC = mac.GetMAC(ref ipAddress, ref httpContext);

      

        try {

            utili = logica.condicional(int.Parse(Session["DL_ItemIndex"].ToString()));
            int.Parse(utili.Nulo.ToString());

            L_Producto.Visible = true;
            DDL_Producto.Visible = true;
            L_PrecioProdProv.Visible = true;
            TB_PrecioProducto.Visible = true;
            B_AgregarProducto.Visible = true;
        
        }
        catch (NullReferenceException ei) {


            try
            {
                utili.ItemIndex = GV_Proveedor.SelectedIndex;
                utili.SaveLocationLogo = Server.MapPath(((Image)GV_Proveedor.Rows[utili.ItemIndex].FindControl("I_Proveedor")).ImageUrl);
                utili.IdProveedor = int.Parse(GV_Proveedor.SelectedValue.ToString());
                utili.User = Session["usser"].ToString();

                utili = logica.eliminarproveedor(utili, ipAddress, MAC, (int)Session["idioma"]);

                int.Parse(utili.Nulo.ToString());


                cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('" + utili.Mensaje + "');</script>");
                return;

            }
            catch (NullReferenceException ez)
            {

                this.RegisterStartupScript("", "<script type='text/javascript'>alert('" + utili.Mensaje + "');window.location=\"" + utili.Ruta + "\"</script>");
                //this.RegisterStartupScript("mensaje", "<script type='text/javascript'>alert('" + utili.Mensaje + "');window.location=\"" + utili.Ruta + "\"</script>");

            }
        
        }
        
       

    }
    protected void B_AgregarProductoProveedor_Click(object sender, EventArgs e)
    {
        ClientScriptManager cm = this.ClientScript;

        
        try
        {

            string ipAddress = HttpContext.Current.Request.UserHostAddress;
            string httpContext = HttpContext.Current.Server.MachineName;
            string MAC = mac.GetMAC(ref ipAddress, ref httpContext);
            
            utili.IdProducto = int.Parse(DDL_Producto.SelectedValue);
            utili.IdProveedor = int.Parse(DDL_Proveedor.SelectedValue);
            utili.Precio = double.Parse(TB_PrecioProducto.Text);
            utili.NombreProducto = DDL_Producto.SelectedItem.ToString();
            utili.NombreProveedor = DDL_Proveedor.SelectedItem.ToString();
            utili.User = Session["usser"].ToString();

            utili = logica.relacionProductoProveedor(utili, ipAddress, MAC, (int)Session["idioma"]);

            int.Parse(utili.Nulo.ToString());

            
            cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('"+utili.Mensaje+"');</script>");
            return;
            
        }
        catch (NullReferenceException ei)
        {

            this.RegisterStartupScript("", "<script type='text/javascript'>alert('" + utili.Mensaje + "');window.location=\"" + utili.Ruta + "\"</script>");
            //this.RegisterStartupScript("mensaje", "<script type='text/javascript'>alert('"+utili.Mensaje+"');window.location=\""+utili.Ruta+"\"</script>");

        }


    }

    protected void B_Modificar_Click(object sender, EventArgs e)
    {

        utili.ItemIndex = int.Parse(DDL_ProveedorMod.SelectedValue);

        utili = logica.obtenerdatosproveedor(utili);

        TB_NIT.Text = utili.Id.ToString();
        TB_Nombre.Text = utili.Nombre;
        TB_Direccion.Text = utili.Direccion;
        TB_Email.Text = utili.Email;
        TB_Telefono.Text = utili.Telefono;
        I_Logo.ImageUrl = utili.LogoUrl;


        I_Logo.Visible = true;
        DDL_ProveedorMod.Enabled = false;
        B_AgregarProveedor.Visible = false;
        B_Actualizar.Visible = true;
        B_Modificar.Enabled = false;
        B_Cancelar.Visible = true;
        TB_NIT.Enabled = false;
        RFV_Imagen.Enabled = false;
    }

    protected void B_Actualizar_Click(object sender, EventArgs e)
    {
        ClientScriptManager cm = this.ClientScript;
        
        try
        {

            string ipAddress = HttpContext.Current.Request.UserHostAddress;
            string httpContext = HttpContext.Current.Server.MachineName;
            string MAC = mac.GetMAC(ref ipAddress, ref httpContext);

            utili.LogoUrl = Server.MapPath(I_Logo.ImageUrl);
            utili.Ruta = I_Logo.ImageUrl;
            utili.SaveLocationLogo = Server.MapPath("~\\Imagenes\\Logo") + "\\";
            utili.LogoExtension = System.IO.Path.GetExtension(FU_Logo.PostedFile.FileName);
            
            utili.IdProveedor = int.Parse(DDL_ProveedorMod.SelectedValue);
            utili.Nombre = TB_Nombre.Text;
            utili.Direccion = TB_Direccion.Text;
            utili.Telefono = TB_Telefono.Text;
            utili.Email = TB_Email.Text;
            utili.User = Session["usser"].ToString();

            utili = logica.actualizarproveedor(utili, ipAddress, MAC, (int)Session["idioma"]); // actializar proveedor

            try
            {
                FU_Logo.PostedFile.SaveAs(utili.SaveLocationLogo);
            }
            catch (HttpException ei)
            {
            }

            int.Parse(utili.Nulo.ToString());

            cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('"+utili.Mensaje+"');</script>");
            return;
        }
        catch (NullReferenceException exc)
        {
           // this.RegisterStartupScript("mensaje", "<script type='text/javascript'>alert('"+utili.Mensaje+"');window.location=\""+utili.Ruta+"\"</script>");
            this.RegisterStartupScript("", "<script type='text/javascript'>alert('" + utili.Mensaje + "');window.location=\"" + utili.Ruta + "\"</script>");
           
        }


    }
    protected void B_Cancelar_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdministradorAgregarProov.aspx");
    }

    protected void LB_EliminarProducto_Click(object sender, EventArgs e)
    {
        Session["DL_ItemIndex"] = 1;
    }

    protected void LB_ActualizarPrecio_Click(object sender, EventArgs e)
    {
        Session["DL_ItemIndex"] = 0;

    }

    protected void IB_Atras_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Administrador.aspx");
    }

    protected void DL_Producto_ItemCommand(object source, DataListCommandEventArgs e)
    {
        ClientScriptManager cm = this.ClientScript;
            string ipAddress = HttpContext.Current.Request.UserHostAddress;
            string httpContext = HttpContext.Current.Server.MachineName;
            string MAC = mac.GetMAC(ref ipAddress, ref httpContext);

            try
            {

                utili = logica.condicional(int.Parse(Session["DL_ItemIndex"].ToString()));

                int.Parse(utili.Nulo.ToString());

                try
                {     /////Actualizar producto del proveedor

                    utili.ItemIndex = e.Item.ItemIndex;

                    utili.IdProducto = int.Parse(((Label)this.DL_Producto.Items[utili.ItemIndex].FindControl("L_idProducto")).Text);
                    utili.IdProveedor = int.Parse(GV_Proveedor.SelectedValue.ToString());
                    utili.Precio = double.Parse(((TextBox)this.DL_Producto.Items[utili.ItemIndex].FindControl("TB_PrecioProducto")).Text);
                    utili.User = Session["usser"].ToString();

                    utili = logica.actualizarproductoproveedor(utili, ipAddress, MAC, (int)Session["idioma"]);
                    int.Parse(utili.Nulo.ToString());

                    cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('" + utili.Mensaje + "');</script>");
                    DL_Producto.DataBind();
                    return;

                }
                catch (FormatException eo)
                {

                    L_Mensaje.Text = utili.Mensaje;
                    return;
                }


            }
            catch (NullReferenceException ep)
            { ////eliminar producto del proveedor 

                
                    utili.ItemIndex = e.Item.ItemIndex;

                    utili.IdProducto = int.Parse(((Label)this.DL_Producto.Items[utili.ItemIndex].FindControl("L_idProducto")).Text);
                    utili.IdProveedor = int.Parse(GV_Proveedor.SelectedValue.ToString());
                    utili.User = Session["usser"].ToString();

                    utili = logica.eliminarproductoproveedor(utili, ipAddress, MAC, (int)Session["idioma"]);

                    cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('" + utili.Mensaje + "');</script>");
                    DL_Producto.DataBind(); 
                   return;
                

            }
           

    }
    protected void DL_Producto_ItemDataBound(object sender, DataListItemEventArgs e)
    {
        Logica_idiomaControl idioma = new Logica_idiomaControl();
        Hashtable componentes = new Hashtable();
        componentes = idioma.controlarIdioma((int)Session["idioma"], 6);

        Label precio = (Label)e.Item.FindControl("L_TituloPrecioProductoMod");
        precio.Text = componentes["L_TituloPrecioProductoMod"].ToString();

        RegularExpressionValidator REV_NUM = (RegularExpressionValidator)e.Item.FindControl("DL_REV_NumerosProducto");
        REV_NUM.ErrorMessage = componentes["DL_REV_NumerosProducto"].ToString();

        LinkButton actualizar = (LinkButton)e.Item.FindControl("LB_ActualizarPrecio");
        actualizar.Text = componentes["LB_ActualizarPrecio"].ToString();
        

        LinkButton eliminar = (LinkButton)e.Item.FindControl("LB_EliminarProducto");
        eliminar.Text = componentes["LB_EliminarProducto"].ToString();
    }
}
