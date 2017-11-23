using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using DataC;
using EncapsularC;
using UtilitarioC;
using System.IO;
using System.Collections;

namespace LogicaC
{
    public class LClienteRecibo
    {
        DataTable fechaDiarias = new DataTable();
        DataTable ClientePedido = new DataTable();
        DClienteRecibo data = new DClienteRecibo();
        string fecha = "";
        EALL encap = new EALL();

        public UALL pageload(UALL utili)
        {

            if (utili.IdTipoUsuario == 3)
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
                    if (utili.IdTipoUsuario == 2)
                    {
                        utili.Url = "Cajero.aspx";
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

        public DataTable llenarGridviewfechas(int idCliente, int idio){
            DataTable ClientePedido = new DataTable();

            Logica_idiomaControl idioma = new Logica_idiomaControl();
            Hashtable componentes = new Hashtable();

            componentes = idioma.controlarIdioma(idio, 18);
                                  
            ClientePedido = data.ClientePedido(idCliente);



            fechaDiarias.Columns.Add("id_cliente_pedido");
            fechaDiarias.Columns.Add("fecha_diaria");
            fechaDiarias.Columns.Add("seleccione");

            try{
            DataRow fila;
            for (int i = 0; i < ClientePedido.Rows.Count; i++) {

                
                DateTime resul;
                if (fecha != ClientePedido.Rows[i]["fecha_pedido"].ToString())
                {
                    fila = fechaDiarias.NewRow();
                    fila["id_cliente_pedido"] = (i + 1).ToString();
                    fila["fecha_diaria"] = ClientePedido.Rows[i]["fecha_pedido"].ToString();
                    fecha = ClientePedido.Rows[i]["fecha_pedido"].ToString();

                    fechaDiarias.Rows.Add(fila);
                }
            
            
            }

            }catch(Exception ei){
            
            
            }


            for (int i = 0; i < fechaDiarias.Rows.Count; i++)
            {
              
                fechaDiarias.Rows[i]["seleccione"] = componentes["Seleccione1"].ToString();

            }



                return fechaDiarias;
        }

        public DataTable filtroClientePedido( DateTime filtro,int idCliente) {

            ClientePedido = data.FiltroClientePedido(filtro, idCliente);
            return ClientePedido;
        }
        public DataTable Pedido(UALL utili, DataTable Recibo)
        {

            DataRow fila;

            encap.IdCliente = utili.IdCliente;
            encap.Fecha = utili.Fecha;

            ClientePedido = data.FiltroClientePedido(encap.Fecha,encap.IdCliente);

            for (int i = 0; i < ClientePedido.Rows.Count; i++)
            {
                fila = Recibo.NewRow();
                fila["nombreCliente"] = ClientePedido.Rows[i]["nombre_cliente"].ToString();
                fila["nombreProducto"] = ClientePedido.Rows[i]["nombre_producto"].ToString();
                fila["imagenCliente"] = CargarByte(utili.MaphImagenCliente.ToString());
                fila["nombreProveedor"] = ClientePedido.Rows[i]["nombre_proveedor"].ToString();
                fila["valorUnitario"] = Double.Parse(ClientePedido.Rows[i]["precio_producto_v"].ToString());
                fila["cantidad"] = int.Parse(ClientePedido.Rows[i]["unidades_producto"].ToString());

                Recibo.Rows.Add(fila);
            }

            return Recibo;
        }




        public DataTable Titulos (UALL utili, DataTable Recibo,int idio)
        {
            Logica_idiomaControl idioma = new Logica_idiomaControl();
            Hashtable componentes = new Hashtable();
            componentes = idioma.controlarIdioma(idio, 18);

            DataRow fila;

            encap.IdCliente = utili.IdCliente;
            encap.Fecha = utili.Fecha;

            ClientePedido = data.FiltroClientePedido(encap.Fecha, encap.IdCliente);

            fila = Recibo.NewRow();
            fila["Factura Pedido"] = componentes["Factura Pedido"].ToString();
            fila["Cliente"] = componentes["Cliente"].ToString();
            fila["Nombre producto"] = componentes["Nombre producto"].ToString();
            fila["Nombre proveedor"] = componentes["Nombre proveedor"].ToString();
            fila["Valor unitario"] = componentes["Valor unitario"].ToString();
            fila["Cantidad"] = componentes["Cantidad"].ToString();
            fila["Total producto"] = componentes["Total producto"].ToString();
            fila["Total Pedido"] = componentes["Total Pedido"].ToString();

                

                Recibo.Rows.Add(fila);
            

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
