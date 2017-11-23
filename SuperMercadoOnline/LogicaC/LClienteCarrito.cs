using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using EncapsularC;
using DataC;
using UtilitarioC;
using System.Data;
using System.Reflection.Emit;
using System.Collections;

namespace LogicaC
{
    
    public class LClienteCarrito
    {
        EALL encap = new EALL();
        UALL utili = new UALL();
        DClienteCarrito data = new DClienteCarrito();
        DataTable datoscarrito = new DataTable();
        DataTable datosProducto = new DataTable();

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

        public UALL productoapartado(UALL utili) {

            encap.Id = utili.IdUsuario;
            datoscarrito = data.MostrarCarrito(encap.Id.ToString());
            double acum = 0;
            int NoApar = 0;
            for (int i = 0; i < datoscarrito.Rows.Count; i++)
            {

                acum = acum + double.Parse(datoscarrito.Rows[i]["precio_producto_v"].ToString()) * int.Parse(datoscarrito.Rows[i]["unidades_producto"].ToString());

                if (datoscarrito.Rows[i]["estado_pedido"].ToString() == "No Apartado")
                {

                    NoApar++;

                }

            }
            utili.Mensaje = acum.ToString(); /// total pedido
                                             /// 
            if (utili.DimControl != 0 && NoApar != 0)
            {

                utili.AuxBolean = true;
            }
            else {
                utili.AuxBolean = false;
            }

            return utili;
        
        }
        public DataTable mostrarcarrito(string idCliente, int idio){

        Logica_idiomaControl idioma = new Logica_idiomaControl();
        Hashtable componentes = new Hashtable();
        componentes = idioma.controlarIdioma(idio, 15);


            datoscarrito = data.MostrarCarrito(idCliente);


            for (int i = 0 ; i< datoscarrito.Rows.Count; i++)
            {
                if (datoscarrito.Rows[i]["estado_pedido"].Equals("Apartado"))
                {
                    datoscarrito.Rows[i]["estado_pedido"] = componentes["lb_apartado"].ToString();
                }
                else if (datoscarrito.Rows[i]["estado_pedido"].Equals("No Apartado"))
                {
                    datoscarrito.Rows[i]["estado_pedido"] = componentes["lb_noapartado"].ToString();
                }
            }




            return datoscarrito;
        }

        public UALL comprarproductos(UALL utili, string ipAddress, string MAC,int idio) {


            Logica_idiomaControl idioma = new Logica_idiomaControl();
            Hashtable componentes = new Hashtable();
            componentes = idioma.controlarIdioma(idio, 15);


            datoscarrito = data.MostrarCarrito(utili.IdUsuario.ToString());

            for (int i = 0; i < datoscarrito.Rows.Count; i++)
            {

                try
                {

                    encap.Id = int.Parse(datoscarrito.Rows[i]["id_pedido"].ToString());
                    encap.User = utili.User;

                    data.ComprarProductos(encap, ipAddress, MAC);
                    utili.Mensaje = componentes["mensaje1"].ToString();

                }
                catch (Exception ei)
                {
                    utili.Mensaje = componentes["mensaje2"].ToString();
                    throw ei;
                }


            }

            return utili;
        }

        public UALL eliminarproducto(UALL utili,string ipAddress,string MAC,int idio) {


            Logica_idiomaControl idioma = new Logica_idiomaControl();
            Hashtable componentes = new Hashtable();
            componentes = idioma.controlarIdioma(idio, 15);

            try
            {

                encap.Id = utili.IdPedido; // Valor de la fila dentro del gridview
                encap.User = utili.User;

               
                data.EliminarCarrito(encap,ipAddress,MAC);

                utili.Mensaje = componentes["mensaje3"].ToString();

            }
            catch (Exception ei)
            {

                utili.Mensaje = componentes["mensaje4"].ToString();
                throw ei;
            }
            finally
            {

            }

            return utili;
        }

        public UALL condicional(UALL utili) {

            if (utili.IdCondicional == 0)
            {

                utili.Nulo = null;
            }
            else {

                utili.Nulo = "A";
            }

            return utili;
        }

            public UALL consultariventario(UALL utili,int idio) {

             ///mostrar productos
             int CantidadProductoActual = 0;
             datosProducto = data.MostrarProductos();


             Logica_idiomaControl idioma = new Logica_idiomaControl();
             Hashtable componentes = new Hashtable();
             componentes = idioma.controlarIdioma(idio, 15);

             for (int i = 0; i < datosProducto.Rows.Count; i++)
             {

                 if (int.Parse(datosProducto.Rows[i]["id_producto"].ToString()) == utili.IdProducto)
                 {

                     CantidadProductoActual = int.Parse(datosProducto.Rows[i]["cantidad_producto"].ToString());
                        break;
                    }


                    }
                         ////Mostrar pedidocliente

                        datoscarrito = data.MostrarCarrito(utili.IdUsuario.ToString());

                        utili.Cantidad_L = datoscarrito.Rows[utili.ItemIndex]["unidades_producto"].ToString(); /// cantidad del carritopedido seleccionado
                        ///Condiciones si existe el producto

                    if (utili.Cantidad_TB == "")
                    {
                        utili.Mensaje = componentes["mensaje5"].ToString() + utili.Nombre + componentes["mensaje6"].ToString() +
                                         componentes["mensaje7"].ToString() + CantidadProductoActual + "";
                        utili.Nulo = "1";
                    }
                    else
                        if (int.Parse(utili.Cantidad_L) == int.Parse(utili.Cantidad_TB))
                        {

                            utili.Mensaje = componentes["mensaje8"].ToString() + utili.Nombre + componentes["mensaje9"].ToString() +
                                            componentes["mensaje10"].ToString() + CantidadProductoActual + "";
                            
                            utili.Nulo = "1";
                        }
                        else
                        if (CantidadProductoActual < int.Parse(utili.Cantidad_TB))
                        {

                            utili.Mensaje = componentes["mensaje11"].ToString() + utili.Nombre + componentes["mensaje12"].ToString() +
                                         componentes["mensaje13"].ToString() + CantidadProductoActual + "";
                            utili.Nulo = "1";
                        }

                        else if (int.Parse(utili.Cantidad_TB) <= 0)
                        {
                            utili.Mensaje = componentes["mensaje14"].ToString() + utili.Nombre + componentes["mensaje15"].ToString() +
                                         componentes["mensaje16"].ToString() + CantidadProductoActual + "";
                            utili.Nulo = "1";
                        }
                        else
                        {
                            utili.Mensaje = "";
                            utili.Nulo = null;
                        }

            return utili;
        
        }
        public UALL modificarcarrito(UALL utili, string ipAddress, string MAC,int idio){

            Logica_idiomaControl idioma = new Logica_idiomaControl();
            Hashtable componentes = new Hashtable();
            componentes = idioma.controlarIdioma(idio, 15);

            try
            {

                encap.Id = utili.IdPedido;
                encap.Cantidad = int.Parse(utili.Cantidad_TB);
                encap.User = utili.User;

                data.ModificarCarrito(encap, ipAddress, MAC);

                utili.Mensaje = componentes["mensaje17"].ToString();

            }
            catch (NullReferenceException ei)
            {

                utili.Mensaje = componentes["mensaje18"].ToString();
                throw ei;
            }
            finally
            {

            }
            

        return utili;
        }

        public DataTable mostrarproductos() { 
        
            datosProducto = data.MostrarProductos();

            return datosProducto; 
        }
    }
}
