using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.IO;
using DataC;
using EncapsularC;
using UtilitarioC;
using System.Collections;

namespace LogicaC
{
    public class LAUtilidad
    {
        DataTable Utilidad = new DataTable();
        DAUtilidad data = new DAUtilidad();

        public DataTable UtilidadTitulo(DataTable Recibo, int idio)
        {

            DataRow fila;

          //  Utilidad = data.MostrarUtilidad();


            Logica_idiomaControl idioma = new Logica_idiomaControl();
            Hashtable componentes = new Hashtable();
            componentes = idioma.controlarIdioma(idio, 8);

            
                fila = Recibo.NewRow();
                fila["TituloUtilidad"] = componentes["TituloUtilidad"].ToString();
                fila["nombreUtilidad"] = componentes["nombreUtilidad"].ToString();
                fila["provedorUtilidad"] = componentes["provedorUtilidad"].ToString();
                fila["ventaUtilidad"] = componentes["ventaUtilidad"].ToString();
                fila["compraUtilidad"] = componentes["compraUtilidad"].ToString();
                fila["utilidad"] = componentes["utilidad"].ToString();
                fila["totalUtilidad"] = componentes["totalUtilidad"].ToString();
                

                Recibo.Rows.Add(fila);
           

            return Recibo;
        }



        public DataTable UtilidadRecibo(DataTable Recibo)
        {

            DataRow fila;

            Utilidad = data.MostrarUtilidad();

            for (int i = 0; i < Utilidad.Rows.Count; i++)
            {
                fila = Recibo.NewRow();
                fila["id"] = int.Parse(Utilidad.Rows[i]["id"].ToString());
                fila["nombreProducto"] = Utilidad.Rows[i]["nombre_producto"].ToString();
                fila["nombreProveedor"] = Utilidad.Rows[i]["nombre_proveedor"].ToString();
                fila["precioCompra"] = Double.Parse(Utilidad.Rows[i]["precio_compra"].ToString());
                fila["precioVenta"] = Double.Parse(Utilidad.Rows[i]["precio_venta"].ToString());

                Recibo.Rows.Add(fila);
            }

            return Recibo;
        }




        public byte[] CargarByte(string Ruta)
        {
            byte[] imagenBytes;
            string nombreArchivo = Ruta;

            if (File.Exists(nombreArchivo) == true)
                imagenBytes = File.ReadAllBytes(nombreArchivo);
            else
                imagenBytes = null;
            return imagenBytes;
        }
    }
}
