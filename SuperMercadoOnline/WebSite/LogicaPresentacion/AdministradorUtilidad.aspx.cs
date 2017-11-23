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
using UtilitarioC.DataSet;

public partial class Presentacion_AdministradorUtilidad : System.Web.UI.Page
{
    LSesionAdministrador LSesion = new LSesionAdministrador();
    Utilidad est = new Utilidad();
    LAUtilidad logica = new LAUtilidad();
    UALL utili = new UALL();
    DataTable ProductosUtilidad = new DataTable();

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

        PoblarReporte();
        CRV_Utilidad.Visible = true;
    }

    protected void PoblarReporte()
    {
        try
        {
            CRS_Utilidad.ReportDocument.SetDataSource(ObtenerReporteUtilidad((int)Session["idioma"]));
            CRV_Utilidad.ReportSource = CRS_Utilidad;

        }
        catch (Exception)
        {

            throw;
        }
    }

    protected Utilidad ObtenerReporteUtilidad(int idio)
    {
        //Iniciar carga de datos en el datatable

        ProductosUtilidad = est.Tables["Utilidad"];

        ProductosUtilidad = logica.UtilidadRecibo(ProductosUtilidad); //llena la primer tbla del dataset

        DataTable Titulos =est.Tables["Titulos"];
        Titulos = logica.UtilidadTitulo(Titulos, idio);

        return est;
    }
    protected void IB_Atras_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("administrador.aspx");
    }
}
