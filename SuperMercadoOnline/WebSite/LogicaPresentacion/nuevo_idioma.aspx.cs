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

public partial class Presentacion_nuevo_idioma : System.Web.UI.Page
{
    LSesionAdministrador LSesion = new LSesionAdministrador();
    Logica_idiomaControl logica = new Logica_idiomaControl();
    UALL utili = new UALL();
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
            componentes = idioma.controlarIdioma((int)Session["idioma"], 24);
        }
        catch (Exception)
        {
            Session["idioma"] = 1;
            componentes = idioma.controlarIdioma((int)Session["idioma"], 24);
        }


        l_idioma.Text = componentes["l_idioma"].ToString();
        l_nidioma.Text = componentes["l_nidioma"].ToString();
        l_terminacion.Text = componentes["l_terminacion"].ToString();
        b_guardar.Text = componentes["b_guardar"].ToString();
        b_editar.Text = componentes["b_editar"].ToString();
        L_idiomaddl.Text = componentes["L_idiomaddl"].ToString();
        l_formulario.Text = componentes["l_formulario"].ToString();
        l_mensaje.Text = componentes["l_mensaje"].ToString();
        b_consultar.Text = componentes["b_consultar"].ToString();
        B_Modificaridio.Text = componentes["B_Modificaridio"].ToString();


        



    }
    
    protected void b_guardar_Click(object sender, EventArgs e)
    {

         Logica_idiomaControl idioma = new Logica_idiomaControl();
        Hashtable componentes = new Hashtable();
       componentes = idioma.controlarIdioma((int)Session["idioma"], 24);

        try
            {
         logica.enviarIdioma(t_idioma.Text.ToString(), t_terminacion.Text.ToString());
        logica.crearCompo();
                //mensaje= "se ha creado el idioma satisfactoriamente";
                //Response.Write("<script>window.alert('idioma creado');</script>");
                Response.Write("<script>window.alert('"+componentes["mensaje1"].ToString()+"');</script>" + "<script>window.setTimeout(location.href='nuevo_idioma.aspx', 2000);</script>");
 
                  }
            catch(Exception)
             {
                 //Response.Write("<script>window.alert('error');</script>");
                 Response.Write("<script>window.alert('"+componentes["mensaje2"].ToString()+"');</script>" + "<script>window.setTimeout(location.href='nuevo_idioma.aspx', 2000);</script>");
              }
     

        

        



    }
  
    protected void B_Modificaridio_Click(object sender, EventArgs e)
    {

        ClientScriptManager cm = this.ClientScript;
       Logica_idiomaControl idioma = new Logica_idiomaControl();
       Hashtable componentes = new Hashtable();
       componentes = idioma.controlarIdioma((int)Session["idioma"], 24);
       String imagenX = "";
       String campo = "";

       try
       {//si el componente de imagen esta visible
           idioma.validarFU_TB(T_mensajeditar.Visible);
           try
           {
                imagenX=idioma.fileUploadVacio(FU_imagen.PostedFile.FileName, (System.IO.Path.GetExtension(FU_imagen.PostedFile.FileName)).ToUpper(), T_mensajeditar.Text.ToString());
           }
           catch (Exception)
           {

               cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('" + componentes["mensaje5"].ToString() + "');</script>");
               return;

           }

           try
           {
               idioma.validarImagenExistente((System.IO.File.Exists((Server.MapPath("~//Imagenes//ImagenesWeb") + "//" + (System.IO.Path.GetFileName(FU_imagen.PostedFile.FileName))))));

               //(System.IO.File.Exists((Server.MapPath("~\\Imagenes\\ImagenesWeb") + "\\" + (System.IO.Path.GetFileName(FU_imagen.PostedFile.FileName))))

           }
           catch(Exception)
           {
               cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('" + componentes["mensaje6"].ToString() + "');</script>");
               return;
           }

           try
           {
               idioma.guardarImg((System.IO.Path.GetFileName(FU_imagen.PostedFile.FileName)), (System.IO.Path.GetExtension(FU_imagen.PostedFile.FileName)).ToUpper());
               FU_imagen.PostedFile.SaveAs(Server.MapPath(imagenX));
               campo = imagenX;
           }
           catch(Exception)
           {
               campo = imagenX;
           }

       }
       catch (Exception)
       {
           campo = T_mensajeditar.Text.ToString();
       }


    


        try
        {
            Logica_idiomaControl dato = new Logica_idiomaControl();
            dato.modificarIdioma(int.Parse(ddl_formularioeditar.SelectedValue.ToString()), ddl_mensajeeditar.SelectedValue.ToString(), campo, int.Parse(ddl_idiomaeditar.SelectedValue.ToString()));
            

            Response.Write("<script>window.alert('"+componentes["mensaje3"].ToString()+"');</script>" + "<script>window.setTimeout(location.href='nuevo_idioma.aspx', 2000);</script>");
        }
        catch (Exception)
        {

            Response.Write("<script>window.alert('"+componentes["mensaje4"].ToString()+"');</script>" + "<script>window.setTimeout(location.href='nuevo_idioma.aspx', 2000);</script>");
        }
    }
    protected void b_consultar_Click(object sender, EventArgs e)
    {
       // ddl_idiomaeditar.Enabled = false;
       // ddl_formularioeditar.Enabled = false;
        


        

            Logica_idiomaControl idioma = new Logica_idiomaControl();
            int idiom = int.Parse(ddl_idiomaeditar.SelectedValue.ToString());
            int form = int.Parse(ddl_formularioeditar.SelectedValue.ToString());
            String Carac = ddl_mensajeeditar.SelectedValue.ToString();


            try
            {
                idioma.validarImg(idiom, form, Carac);
                FU_imagen.Visible = false;
                T_mensajeditar.Visible = true;
                img_fu.Visible = false;
                String mensaje = idioma.mostrartb(idiom, form, Carac);

                T_mensajeditar.Text = mensaje;
            }
            catch(Exception)
            {
                FU_imagen.Visible = true;
                T_mensajeditar.Visible = false;
                img_fu.Visible = true;
                String mensaje = idioma.mostrartb(idiom, form, Carac);

                img_fu.ImageUrl = mensaje;
                T_mensajeditar.Text = mensaje;
                
            }


            

            
        

            
    }
    protected void IB_Atras_Click(object sender, ImageClickEventArgs e)
    {

    }
}
