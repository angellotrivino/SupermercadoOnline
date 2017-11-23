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

public partial class Presentacion_ErrorAplicacion : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {



        Logica_idiomaControl idioma = new Logica_idiomaControl();
        Hashtable componentes = new Hashtable();
        try
        {
            componentes = idioma.controlarIdioma((int)Session["idioma"], 20);
        }
        
        catch (Exception)
        {
            Session["idioma"] = 1;
            componentes = idioma.controlarIdioma((int)Session["idioma"], 20);
        }

        I_paginafueraS.ImageUrl = componentes["I_paginafueraS"].ToString();
        I_VuelvaPronto.ImageUrl = componentes["I_VuelvaPronto"].ToString();



    }
}
