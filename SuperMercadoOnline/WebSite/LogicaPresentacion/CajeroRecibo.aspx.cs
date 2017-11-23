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
using UtilitarioC.DataSet;

public partial class Presentacion_CajeroRecibo : System.Web.UI.Page
{
    UALL utili = new UALL();
    LCajeroRecibo logica = new LCajeroRecibo();
    Recibo est = new Recibo();
    DataTable ProductosRecibo = new DataTable();
    DataTable Cajero = new DataTable();
    DataTable Cliente = new DataTable();

    protected void Page_Load(object sender, EventArgs e)
    {

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

        PoblarReporte();
        CRV_Recibo.Visible = true;
    }

    protected void PoblarReporte()
    {
        try
        {
            CRS_Recibo.ReportDocument.SetDataSource(ObtenerReporteRecibo((int) Session["idioma"]));
            CRV_Recibo.ReportSource = CRS_Recibo;

        }
        catch (Exception e)
        {

            throw;
        }
    }

    protected Recibo ObtenerReporteRecibo(int idio)
    {
        
        
        utili.IdCajero = int.Parse(Session["idUsuario"].ToString());
        utili.IdCliente = int.Parse(Session["idCliente"].ToString());

        Cajero = logica.mostrarReciboCajero(utili);
        Cliente = logica.mostrarReciboCliente(utili);

        utili.MaphImagenCajero = Server.MapPath(Cajero.Rows[0]["imagen_cajero"].ToString());
        utili.MaphImagenCliente = Server.MapPath(Cliente.Rows[0]["imagen_cliente"].ToString());

        //Iniciar carga de datos en el datatable

        ProductosRecibo = est.Tables["Recibo"];
        ProductosRecibo = logica.Recibo(utili, ProductosRecibo);
        DataTable Titulos = est.Tables["Titulos"];
        Titulos = logica.titulos(idio,Titulos);
       

        return est;
    }
    protected void IB_Atras_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Cajero.aspx");
    }
}
