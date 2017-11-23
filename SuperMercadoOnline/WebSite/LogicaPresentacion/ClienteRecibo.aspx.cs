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
using System.Globalization;
using System.Data;
using LogicaC;
using UtilitarioC;
using UtilitarioC.DataSet;


public partial class Presentacion_ClienteRecibo : System.Web.UI.Page
{
    UALL utili = new UALL();
    LClienteRecibo logica = new LClienteRecibo();
    DateTime fechaFinal;
    Pedido est = new Pedido();
    DataTable ProductosPedido = new DataTable();

    protected void Page_Load(object sender, EventArgs e)
    {
        ///sesion
        try
        {

            utili.IdTipoUsuario = int.Parse(Session["idTipoUsuario"].ToString());
            utili.IdUsuario = int.Parse(Session["idUsuario"].ToString());

            utili = logica.pageload(utili);

            Session["idTipoUsuario"] = utili.IdTipoUsuarioS;
            int.Parse(Session["idTipoUsuario"].ToString());

            Response.Redirect("" + utili.Url + "");

        }

        catch (NullReferenceException ei)
        {

            Session["idTipoUsuario"] = 3;

        }


        Logica_idiomaControl idioma = new Logica_idiomaControl();
        Hashtable componentes = new Hashtable();
        try
        {
        componentes = idioma.controlarIdioma((int)Session["idioma"], 18);
        }
        catch (Exception)
        {
            Session["idioma"] = 1;
            componentes = idioma.controlarIdioma((int)Session["idioma"], 18);
        }

        //B_InsertarProductos.Text = componentes["B_InsertarProductos"].ToString();
        L_TituloPedidos.Text = componentes["L_TituloPedidos"].ToString();

        try
        {


            idioma.validarTitulo(GV_Recibo.Rows.Count);
        }
        catch (Exception)
        {
            GV_Recibo.HeaderRow.Cells[0].Text = componentes["Seleccione"].ToString();
            GV_Recibo.HeaderRow.Cells[1].Text = componentes["NumeroRecibo"].ToString();
            GV_Recibo.HeaderRow.Cells[2].Text = componentes["Fecha Diaria"].ToString();
        
        
        }




    }
    protected void IB_Atras_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Cliente.aspx");
    }

    protected void GV_Recibo_SelectedIndexChanged(object sender, EventArgs e)
    {
        string fecha = ((Label)GV_Recibo.Rows[GV_Recibo.SelectedIndex].FindControl("L_FechaDiaria")).Text;

         fechaFinal = Convert.ToDateTime(fecha);

        PoblarReporte();
        CRV_Pedido.Visible = true;

    }

    protected void PoblarReporte()
    {
        try
        {
            CRS_Pedido.ReportDocument.SetDataSource(ObtenerReportePedido());
            CRV_Pedido.ReportSource = CRS_Pedido;

        }
        catch (Exception e)
        {

            throw;
        }
    }

    protected Pedido ObtenerReportePedido()
    {

        
        DataTable DatosPedido = new DataTable();

        utili.IdCliente = int.Parse(Session["idUsuario"].ToString());

        DatosPedido = logica.filtroClientePedido(fechaFinal, utili.IdCliente);



        utili.MaphImagenCliente = Server.MapPath(DatosPedido.Rows[0]["imagen_usuario"].ToString());

        //Iniciar carga de datos en el datatable

        ProductosPedido = est.Tables["Pedido"];
        DataTable Titulos = est.Tables["Titulos"];

        utili.IdCliente = int.Parse(Session["idUsuario"].ToString());
        utili.Fecha = fechaFinal;
        ProductosPedido = logica.Pedido(utili, ProductosPedido);
        Titulos = logica.Titulos(utili,Titulos,(int)Session["idioma"]);

        return est;
    }
}
