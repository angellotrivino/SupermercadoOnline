using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using EncapsularC;
using DataC;
using UtilitarioC;
using System.Collections;

namespace LogicaC
{
       
    public class LCajeroConsulta
    {
        DataTable datosPedido = new DataTable();
        DataTable datosProducto = new DataTable();
        DCajeroConsulta data = new DCajeroConsulta();
        UALL utili = new UALL();
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

        public DataTable obtenerPedido(String filtro)
        {
            datosPedido = data.MostrarCarritoCajero(filtro);
            return datosPedido;
        }
        ///buscar pedido cliente
        public UALL buscarpedido(UALL utili,int idio) {


            Logica_idiomaControl idioma = new Logica_idiomaControl();
            Hashtable componentes = new Hashtable();
            componentes = idioma.controlarIdioma(idio, 10);


            datosPedido = data.MostrarCarritoCajero(utili.Id.ToString());

            if (datosPedido.Rows.Count > 0)
            {
                double acum = 0;
                for (int i = 0; i < datosPedido.Rows.Count; i++)
                {

                    acum = acum + double.Parse(datosPedido.Rows[i]["precio_producto_v"].ToString()) * int.Parse(datosPedido.Rows[i]["unidades_producto"].ToString());

                }
                
                utili.Mensaje1 = ""; /// hay pedido
                utili.AuxBolean = true;
                utili.Mensaje = "$ " + acum.ToString(); /// total pedido
            }
            else
            {
                utili.Mensaje1 = componentes["mensaje1"].ToString();
                utili.AuxBolean = false;
                utili.Mensaje = "0";
            }

            return utili;
        }

        public DataTable llenarDL(string filtroCedula, string filtroProducto)
        {
            if (filtroCedula.ToString() == "null") //si no hay cedula digitada
            {
               datosProducto = data.obtenerProductos("-1"); /// si no hay pedido actual
            }
            else
                if (filtroCedula.ToString() != "null" && filtroProducto.ToString() == "null")
                { //si hay cedula digitada
                    filtroProducto = "";
                    datosProducto = data.obtenerProductos(filtroProducto.ToString()); //si hay pedido actual
                }
                else {

                    datosProducto = data.obtenerProductos(filtroProducto.ToString()); //si hay pedido actual
                }

            return datosProducto;
        }

        public UALL DL_CatalogoVacio(int item,int idio)
        {
            Logica_idiomaControl idioma = new Logica_idiomaControl();
            Hashtable componentes = new Hashtable();
            componentes = idioma.controlarIdioma(idio, 10);

            if (item == 0)
            {
                utili.Mensaje = componentes["mensaje2"].ToString();

            }
            else
            {

                utili.Mensaje = "";
            }
            return utili;
        }
        public void liberarproductos()
        {

            datosProducto = data.CarritoLiberarProductos();

            for (int i = 0; i < datosProducto.Rows.Count; i++)
            {

                try
                {
                    encap.Id = int.Parse(datosProducto.Rows[i]["id_pedido"].ToString());
                    data.LiberarProductos(encap);

                }
                catch (Exception ei)
                {

                    throw ei;
                }

            }


        }
        public UALL insertarproductocarritoCajero(UALL utili, string ipAddress, string MAC,int idio)
        {
            Logica_idiomaControl idioma = new Logica_idiomaControl();
            Hashtable componentes = new Hashtable();
            componentes = idioma.controlarIdioma(idio, 10);

            try
            {
                ///mostrar productos
                datosProducto = data.MostrarProductos();

                /// encapsular campos
                encap.IdProducto = int.Parse(datosProducto.Rows[utili.ItemIndex]["id_producto"].ToString());
                encap.IdProveedor = int.Parse(datosProducto.Rows[utili.ItemIndex]["id_proveedor"].ToString());

                encap.Cantidad = int.Parse(utili.Cantidad_TB);
                encap.Id = utili.Id; ////id del cliente
                encap.User = utili.User;

                encap = data.pedidoproductoCajero(encap, ipAddress, MAC);

                if (encap.Nulo == "1") {

                    utili.Mensaje = componentes["mensaje3"].ToString();
                    return utili;
                }
                utili.Mensaje = componentes["mensaje4"].ToString();

            }
            catch (Exception ei)
            {
                utili.Mensaje = componentes["mensaje5"].ToString();


            }
            return utili;
        }

        public UALL eliminarproducto(UALL utili, string ipAddress, string MAC,int idio)
        {


            Logica_idiomaControl idioma = new Logica_idiomaControl();
            Hashtable componentes = new Hashtable();
            componentes = idioma.controlarIdioma(idio, 10);

            try
            {

                encap.IdPedido = utili.IdPedido; // Valor de la fila dentro del gridview
                encap.IdCliente = utili.IdCliente;
                encap.User = utili.User;


                data.EliminarCarritoCajero(encap, ipAddress, MAC);

                utili.Mensaje = componentes["mensaje6"].ToString();

            }
            catch (Exception ei)
            {

                utili.Mensaje = componentes["mensaje7"].ToString();
                throw ei;
            }
            finally
            {

            }

            return utili;
        }

        public UALL venderproductos(UALL utili, string ipAddress, string MAC,int idio)
        {

            Logica_idiomaControl idioma = new Logica_idiomaControl();
            Hashtable componentes = new Hashtable();
            componentes = idioma.controlarIdioma(idio, 10);
            try {

                datosPedido = data.MostrarCarritoCajero(utili.IdCliente.ToString());

                encap.IdCajero = utili.IdCajero;
                encap.User = utili.User;

                for (int i = 0; i < datosPedido.Rows.Count; i++) {

                    utili.IdPedido = int.Parse(datosPedido.Rows[i]["id_pedido"].ToString());
                    encap.IdPedido = utili.IdPedido;
                    data.VenderProductos(encap, ipAddress, MAC);   

                }

                utili.Mensaje = componentes["mensaje8"].ToString();
                utili.Url = "CajeroRecibo.aspx";
            }
            catch (Exception ei) {

                utili.Mensaje = componentes["mensaje9"].ToString();
                utili.Url = "CajeroConsulta.aspx";
            }

            return utili;
           
        }
    }
}
