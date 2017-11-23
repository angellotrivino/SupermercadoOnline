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
using System.IO;
using LogicaC;
using UtilitarioC;
using System.Globalization;
using System.Threading;

public partial class Presentacion_Login : System.Web.UI.Page
{ 
    
    DataTable datos = new DataTable();
    LLogin logica = new LLogin();
    UALL utili = new UALL();
    LMac mac = new LMac();
    protected void Page_Load(object sender, EventArgs e)
    {

        
        try {

            utili.IdTipoUsuario = int.Parse(Session["idTipoUsuario"].ToString());
            utili.IdUsuario = int.Parse(Session["idUsuario"].ToString());

            utili = logica.pageload(utili);

            Session["idTipoUsuario"] = utili.IdTipoUsuarioS;
            //Session["idioma"] = 1;
            int.Parse(Session["idTipoUsuario"].ToString());


            Response.Redirect("" + utili.Url + "");
        }
            
        catch (NullReferenceException ei) {

            Session["idTipoUsuario"] = 0;
            Session["idUsuario"] = 0;

        }


       // Session["idioma"] = int.Parse(ddl_idioma.SelectedValue.ToString());

    

        



      
    }

    protected void B_LoginSesion_Click(object sender, EventArgs e)
    {
        string ipAddress = HttpContext.Current.Request.UserHostAddress;
        string httpContext = HttpContext.Current.Server.MachineName;
        string MAC = mac.GetMAC(ref ipAddress, ref httpContext);


        try
        {
            utili = logica.obtenerdatos(TB_usuario.Text, TB_contraseña.Text, ipAddress, MAC, (int)Session["idioma"]);
        }
        catch(Exception)
        {
            Session["idioma"] = int.Parse(ddl_idioma.SelectedValue.ToString());

            utili = logica.obtenerdatos(TB_usuario.Text, TB_contraseña.Text, ipAddress, MAC, (int)Session["idioma"]);

        }


            Session["idTipoUsuario"] = utili.IdTipoUsuario;
            Session["idUsuario"]  = utili.IdUsuario;
            Session["imagen"] = utili.ImagenUsuario;
            
            
            /////limite


            
            ///// sesion

            this.RegisterStartupScript("mensaje", "<script type='text/javascript'>alert('"+utili.Mensaje+"');window.location=\""+utili.Url+"\"</script>");
        
    }
    protected void B_CrearCuenta_Click(object sender, EventArgs e)
    {
            ClientScriptManager cm = this.ClientScript;

            string ipAddress = HttpContext.Current.Request.UserHostAddress;
            string httpContext = HttpContext.Current.Server.MachineName;
            string MAC = mac.GetMAC(ref ipAddress, ref httpContext);


             utili.User = TB_usuarioR1.Text;
             utili.Password = TB_contraseñaR1.Text;
             utili.Password1 = TB_contraseñaR2.Text;
             utili.LogoExtension = System.IO.Path.GetExtension(FU_Imagen.PostedFile.FileName);
             utili.Nombre = TB_nombre.Text;
             utili.Apellido = TB_apellido.Text;
             utili.Cedula = int.Parse(TB_cedula.Text);
             utili.Direccion = TB_direccion.Text;
             utili.Email = TB_correo.Text;
             utili.Telefono = TB_telefono.Text;
             utili.User = TB_usuarioR1.Text;
             utili.Password = TB_contraseñaR1.Text;
             utili.SaveLocationLogo = Server.MapPath("~\\Imagenes\\Usuario") + "\\";

             utili = logica.crearcuenta(utili,ipAddress,MAC,(int)Session["idioma"]);

             try
             {
                 FU_Imagen.PostedFile.SaveAs(utili.SaveLocationLogo);
             }
             catch (DirectoryNotFoundException ei)
             {
             }

             

             try {
                 utili = logica.condicional(utili);

                 int.Parse(utili.Nulo.ToString());

                 cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('" + utili.Mensaje + "');</script>");
                 return;
             }
             catch (NullReferenceException o) {

                 

                 this.RegisterStartupScript("mensaje", "<script type='text/javascript'>alert('"+utili.Mensaje+"');window.location=\""+utili.Url+"\"</script>");
             
             } 
        
    }
    protected void LB_Catalogo_Click(object sender, EventArgs e)
    {
        //int x = int.Parse(ddl_idioma.SelectedValue.ToString());
        Session["idioma"] = int.Parse(ddl_idioma.SelectedValue.ToString());
        Response.Redirect("Catalogo.aspx");
    }
    protected void B_ManualUsuario_Click(object sender, EventArgs e)
    {
        
        Session["idioma"] = int.Parse(ddl_idioma.SelectedValue.ToString());
        Response.Redirect("ManualUsuario.aspx");
    }
    protected void B_contactenos_Click(object sender, EventArgs e)
    {
        Session["idioma"] = int.Parse(ddl_idioma.SelectedValue.ToString());
        Response.Redirect("contactenos.aspx");
    }
    protected void LB_ContraseñaOlvido_Click(object sender, EventArgs e)
    {
        Session["idioma"] = int.Parse(ddl_idioma.SelectedValue.ToString());
        Response.Redirect("olvidoContraseña.aspx");
    }


    
    protected void ddl_idioma_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["idioma"] = int.Parse(ddl_idioma.SelectedValue.ToString());

        Logica_idiomaControl idioma = new Logica_idiomaControl();
        Hashtable componentes = new Hashtable();
        componentes = idioma.controlarIdioma((int)Session["idioma"], 21);

        //B_InsertarProductos.Text = componentes["B_InsertarProductos"].ToString();

        B_contactenos.Text = componentes["B_contactenos"].ToString();
        B_ManualUsuario.Text = componentes["B_ManualUsuario"].ToString();
        LB_Catalogo.Text = componentes["LB_Catalogo"].ToString();
        L_0.Text = componentes["L_0"].ToString();
        L_1.Text = componentes["L_1"].ToString();
        L_Usuario.Text = componentes["L_Usuario"].ToString();
        L_ContraseñaLogin.Text = componentes["L_ContraseñaLogin"].ToString();
        B_inicio_sesion.Text = componentes["B_inicio_sesion"].ToString();
        LB_ContraseñaOlvido.Text = componentes["LB_ContraseñaOlvido"].ToString();
        L_idioma.Text = componentes["L_idioma"].ToString();
        L_Nombres.Text = componentes["L_Nombres"].ToString();
        L_Apellidos.Text = componentes["L_Apellidos"].ToString();
        L_Cedula.Text = componentes["L_Cedula"].ToString();
        L_Direccion.Text = componentes["L_Direccion"].ToString();
        L_Correo.Text = componentes["L_Correo"].ToString();
        L_etiqueta7.Text = componentes["L_etiqueta7"].ToString();
        L_UsuarioIng.Text = componentes["L_UsuarioIng"].ToString();
        L_ContraseñaIng.Text = componentes["L_ContraseñaIng"].ToString();
        L_ContraseñaConfIngNue.Text = componentes["L_ContraseñaConfIngNue"].ToString();
        L_Imagen.Text = componentes["L_Imagen"].ToString();
        REV_letrasNombre.ErrorMessage = componentes["REV_letrasNombre"].ToString();
        REV_letrasApellidos.ErrorMessage = componentes["REV_letrasApellidos"].ToString();
        REV_NumerosCedula.ErrorMessage = componentes["REV_NumerosCedula"].ToString();
        REV_correo.ErrorMessage = componentes["REV_correo"].ToString();
        REV_Numeros1.ErrorMessage = componentes["REV_Numeros1"].ToString();
        B_CrearCuenta.Text = componentes["B_CrearCuenta"].ToString();


    }
}
