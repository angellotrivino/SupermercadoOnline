using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using EncapsularC;
using DataC;
using UtilitarioC;
using System.Data;
using System.Collections;

namespace LogicaC
{
    public class LClienteProductos
    {
        UALL utili = new UALL();
        DataTable datos = new DataTable();
        EALL encap = new EALL();
        DClienteProductos data = new DClienteProductos();

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

        public DataTable llenarDL(String filtro)
        {
            datos = data.obtenerProductos(filtro);
            return datos;
        }

        public void liberarproductos() {

            datos = data.CarritoLiberarProductos();

            for (int i = 0; i < datos.Rows.Count; i++)
            {

                try
                {
                    encap.Id = int.Parse(datos.Rows[i]["id_pedido"].ToString());
                    data.LiberarProductos(encap);
                }
                catch (Exception ei)
                {

                    throw ei;
                }

            }
  
        
        }

        public UALL DL_CatalogoVacio(int item,int idio)
        {


            Logica_idiomaControl idioma = new Logica_idiomaControl();
            Hashtable componentes = new Hashtable();
            componentes = idioma.controlarIdioma(idio, 17);

            if (item == 0)
            {
                utili.Mensaje = componentes["mensaje1"].ToString();

            }
            else
            {

                utili.Mensaje = "";
            }
            return utili;
        }

        public UALL insertarproductocarrito(UALL utili, string ipAddress, string MAC,int idio)
        {

            Logica_idiomaControl idioma = new Logica_idiomaControl();
            Hashtable componentes = new Hashtable();
            componentes = idioma.controlarIdioma(idio, 17);

            try
            {
                ///mostrar productos
                datos = data.obtenerProductos(utili.Mensaje1);

                /// encapsular campos
                encap.IdProducto = int.Parse(datos.Rows[utili.ItemIndex]["id_producto"].ToString());
                encap.IdProveedor = int.Parse(datos.Rows[utili.ItemIndex]["id_proveedor"].ToString());

                encap.Cantidad = int.Parse(utili.Cantidad_TB);
                encap.Id = utili.IdUsuario;
                encap.User = utili.User;

                encap = data.insertarpedidoproducto(encap, ipAddress, MAC);

                if (encap.Nulo == "1") {

                    utili.Mensaje = componentes["mensaje2"].ToString();
                    return utili;
                }
                utili.Mensaje = componentes["mensaje3"].ToString();

            }
            catch (Exception ei)
            {
                utili.Mensaje = componentes["mensaje4"].ToString();
                

            }
              return utili;
            }

        public UALL consultariventario(UALL utili,int idio) {


            Logica_idiomaControl idioma = new Logica_idiomaControl();
            Hashtable componentes = new Hashtable();
            componentes = idioma.controlarIdioma(idio, 17);


             ///mostrar productos
             int CantidadProductoActual = 0;
                datos = data.MostrarProductos();

                for (int i = 0; i < datos.Rows.Count; i++ ){

                    if (int.Parse(datos.Rows[i]["id_producto_proveedor"].ToString()) == utili.IdProducto) {

                        CantidadProductoActual = int.Parse(datos.Rows[i]["cantidad_producto"].ToString());
                        break;
                    }


                    }
                        ///Condiciones si existe el producto

                    if (utili.Cantidad_TB == "")
                    {
                        utili.Mensaje = componentes["mensaje5"].ToString() + utili.Nombre + componentes["mensaje6"].ToString();
                        utili.Nulo = "1";
                    }
                    else
                        if (CantidadProductoActual < int.Parse(utili.Cantidad_TB))
                        {

                            utili.Mensaje = componentes["mensaje7"].ToString() + utili.Nombre + componentes["mensaje8"].ToString();
                            utili.Nulo = "1";
                        }

                        else if (int.Parse(utili.Cantidad_TB) <= 0)
                        {
                            utili.Mensaje = componentes["mensaje9"].ToString() + utili.Nombre + componentes["mensaje10"].ToString();
                            utili.Nulo = "1";
                        }
                        else
                        {
                            utili.Mensaje = "";
                            utili.Nulo = null;
                        }

            return utili;
        
        }
        }

}
