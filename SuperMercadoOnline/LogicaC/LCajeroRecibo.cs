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
    public class LCajeroRecibo
    {
        DataTable Cajero = new DataTable();
        DataTable Cliente = new DataTable();
        DCajeroRecibo data = new DCajeroRecibo();
        EALL encap = new EALL();

        public UALL pageload(UALL utili)
        {

            if (utili.IdTipoUsuario == 2)
            {
                utili.IdTipoUsuarioS = null;

            }
            else
                if (utili.IdTipoUsuario == 1)
                {
                    utili.Url = "Administrador.aspx";
                    utili.IdTipoUsuarioS = "1";
                }
                else
                    if (utili.IdTipoUsuario == 3)
                    {
                        utili.Url = "Cliente.aspx";
                        utili.IdTipoUsuarioS = "2";
                    }
                    else
                        if (utili.IdTipoUsuario == 0)
                        {
                            utili.Url = "Login.aspx";
                            utili.IdTipoUsuarioS = "0";
                        }

            return utili;

        }


        public DataTable titulos(int idio, DataTable Recibo)
        {

            DataRow fila;

            Logica_idiomaControl idioma = new Logica_idiomaControl();
            Hashtable componentes = new Hashtable();
            componentes = idioma.controlarIdioma(idio, 11);

                fila = Recibo.NewRow();
                fila["Factura Pedido"] = componentes["Factura Pedido"].ToString();
                fila["Cajero"] = componentes["Cajero"].ToString();
                fila["Cliente"] = componentes["Cliente"].ToString();
                fila["nombreProducto"] = componentes["nombreProducto"].ToString();
                fila["valorUnitario"] = componentes["valorUnitario"].ToString();
                fila["cantidad"] = componentes["cantidad"].ToString();
                fila["TotalProducto"] = componentes["TotalProducto"].ToString();
                fila["Total Pedido"] = componentes["Total Pedido"].ToString();
                
                
                 

                Recibo.Rows.Add(fila);
            

            return Recibo;
        }

        public DataTable Recibo(UALL utili, DataTable Recibo ){
        
        DataRow fila;

        encap.IdCajero = utili.IdCajero;
        encap.IdCliente = utili.IdCliente;

        Cajero = data.ReciboCajero(encap);
        Cliente = data.ReciboCliente(encap);

        for (int i = 0; i < Cajero.Rows.Count; i++)
        {
            fila = Recibo.NewRow();
            fila["nombreCajero"] = Cajero.Rows[i]["nombre_cajero"].ToString();
            fila["nombreCliente"] = Cliente.Rows[i]["nombre_cliente"].ToString();
            fila["imagenCajero"] = CargarByte(utili.MaphImagenCajero.ToString());
            fila["imagenCliente"] = CargarByte(utili.MaphImagenCliente.ToString());
            fila["nombreProducto"] = Cajero.Rows[i]["nombre_producto"].ToString();
            fila["valorUnitario"] = Double.Parse(Cajero.Rows[i]["valor_unitario"].ToString());
            fila["cantidad"] = int.Parse(Cajero.Rows[i]["catidad"].ToString());

            Recibo.Rows.Add(fila);
        }

            return Recibo;
        }

        public DataTable mostrarReciboCajero(UALL utili){
            
            encap.IdCajero = utili.IdCajero;
            encap.IdCliente = utili.IdCliente;

            Cajero = data.ReciboCajero(encap);
            return Cajero;
        }

        public DataTable mostrarReciboCliente(UALL utili)
        {

            encap.IdCajero = utili.IdCajero;
            encap.IdCliente = utili.IdCliente;

            Cliente = data.ReciboCliente(encap);
            return Cliente;
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
