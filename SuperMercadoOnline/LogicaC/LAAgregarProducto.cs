using System;
using System.Collections.Generic;
using System.Collections;
using System.Linq;
using System.Text;
using System.Data;
using DataC;
using EncapsularC;
using UtilitarioC;

namespace LogicaC
{
    public class LAAgregarProducto
    {
        DataTable Productos = new DataTable();
        DAAgregarProducto data = new DAAgregarProducto();
        EALL encap = new EALL();

        public DataTable listarproductos(int idio)
        {
            Logica_idiomaControl idioma = new Logica_idiomaControl();
            Hashtable componentes = new Hashtable();
            componentes = idioma.controlarIdioma(idio, 5);

            Productos = data.ListarProductos();


            for (int i = 0; i < Productos.Rows.Count; i++)
            {
                if (Productos.Rows[i]["nombre_producto"].Equals("--Seleccione--"))
                {
                    Productos.Rows[i]["nombre_producto"] = componentes["ddl_seleccione5"].ToString();
                }

            }

            return Productos;
        }

        public UALL obtenerDatosProductos(UALL utili)
        {

            Productos = data.MostrarProductos();

            for (int i = 0; i < Productos.Rows.Count; i++)
            {

                if (utili.ItemIndex == int.Parse(Productos.Rows[i]["id_producto"].ToString()))
                {
                    utili.IdProducto = int.Parse(Productos.Rows[i]["id_producto"].ToString());
                    utili.Nombre = Productos.Rows[i]["nombre_producto"].ToString();
                    utili.Descripcion = Productos.Rows[i]["descripcion_producto"].ToString();
                    utili.Imagen = Productos.Rows[i]["imagen_producto"].ToString();

                    if (utili.Imagen == "") {
                        utili.Imagen = "~/Imagenes/ImagenesWeb/producto_vacio.jpg";
                    
                    }

                    break;
                }
            }
            return utili;
        }

        public UALL insertarproducto(UALL utili, string ipAddress, string MAC, int idio)
        {

            Logica_idiomaControl idioma = new Logica_idiomaControl();
            Hashtable componentes = new Hashtable();
            componentes = idioma.controlarIdioma(idio, 5);

            try
            {
                int cont = -1;


                if (!(string.Compare(utili.LogoExtension, ".jpg", true) == 0 || string.Compare(utili.LogoExtension, ".gif", true) == 0 || string.Compare(utili.LogoExtension, ".jpeg", true)
                    == 0 || string.Compare(utili.LogoExtension, ".png", true) == 0 || string.Compare(utili.LogoExtension, ".", true) == 0 || string.Compare(utili.LogoExtension, ".bmp", true)
                    == 0 || string.Compare(utili.LogoExtension, ".wmf", true) == 0))
                {
                    utili.Mensaje = componentes["mensaje1"].ToString();
                    utili.IdCondicional = 1;
                    return utili;
                }

                string origenSaveLLogo = utili.SaveLocationLogo;
                do
                {
                    utili.SaveLocationLogo = origenSaveLLogo;
                    cont++;

                    utili.SaveLocationLogo = "" + utili.SaveLocationLogo + cont + utili.LogoExtension + "";

                } while (System.IO.File.Exists(utili.SaveLocationLogo));

                utili.LogoUrl = "~\\Imagenes\\Productos" + "\\" + cont + utili.LogoExtension + "";

                encap.IdProducto = utili.IdProducto;
                encap.Nombre = utili.Nombre;
                encap.Descripcion = utili.Descripcion;
                encap.LogoUrl = utili.LogoUrl;
                encap.User = utili.User;


                encap = data.InsertarProducto(encap, ipAddress, MAC);

                if (encap.Nulo == "1") /// si hay dato repetido en la base de datos pk
                {
                    utili.Mensaje = componentes["mensaje2"].ToString() + utili.Nombre + componentes["mensaje3"].ToString() + utili.IdProducto + componentes["mensaje4"].ToString();
                    utili.IdCondicional = 1;
                    utili.SaveLocationLogo = "";
                    return utili;
                }


                utili.Mensaje = componentes["mensaje5"].ToString();
                utili.Url = "AdministradorAgregarProducto.aspx";
                utili.IdCondicional = 0;

                return utili;
            }
            catch (Exception ei)
            {
                utili.Mensaje = componentes["mensaje6"].ToString() + utili.Nombre + componentes["mensaje7"].ToString();
                utili.IdCondicional = 1;
                utili.SaveLocationLogo = "";
                return utili;
            }
        }


        public UALL condicional(UALL utili)
        {

            if (utili.IdCondicional == 0)
            {

                utili.Nulo = null;
            }
            else
            {

                utili.Nulo = "1";
            }

            return utili;
        }

        public UALL modificarproducto(UALL utili, string ipAddress, string MAC, int idio)
        {

            Logica_idiomaControl idioma = new Logica_idiomaControl();
            Hashtable componentes = new Hashtable();
            componentes = idioma.controlarIdioma(idio, 5);


            try
            {


                if (utili.LogoExtension != "")
                {
                    int cont = -1;


                    if (!(string.Compare(utili.LogoExtension, ".jpg", true) == 0 || string.Compare(utili.LogoExtension, ".gif", true) == 0 || string.Compare(utili.LogoExtension, ".jpeg", true)
                        == 0 || string.Compare(utili.LogoExtension, ".png", true) == 0 || string.Compare(utili.LogoExtension, ".", true) == 0 || string.Compare(utili.LogoExtension, ".bmp", true)
                        == 0 || string.Compare(utili.LogoExtension, ".wmf", true) == 0))
                    {
                        //componentes["mensaje6"].ToString()
                        utili.Mensaje = componentes["mensaje8"].ToString() + utili.LogoExtension + "";
                        utili.IdCondicional = 1;
                        return utili;
                    }

                    if (System.IO.File.Exists(utili.LogoUrl))
                    {

                        try
                        {
                            System.IO.File.Delete(utili.LogoUrl);


                        }
                        catch (System.IO.IOException ex)
                        {
                            utili.Mensaje = componentes["mensaje9"].ToString() + utili.Mensaje + componentes["mensaje10"].ToString();
                            utili.IdCondicional = 1;
                            return utili;
                        }
                    }

                    string origenSaveLLogo = utili.SaveLocationLogo;
                    do
                    {
                        utili.SaveLocationLogo = origenSaveLLogo;
                        cont++;

                        utili.SaveLocationLogo = "" + utili.SaveLocationLogo + cont + utili.LogoExtension + "";

                    } while (System.IO.File.Exists(utili.SaveLocationLogo));

                    utili.Ruta = "~\\Imagenes\\Productos" + "\\" + cont + utili.LogoExtension + "";

                }
                else {

                    utili.SaveLocationLogo = "";
                }

                encap.IdProducto = utili.IdProducto;
                encap.Nombre = utili.Nombre;
                encap.Descripcion = utili.Descripcion;
                encap.LogoUrl = utili.Ruta;
                encap.User = utili.User;

                data.ModificarProducto(encap, ipAddress, MAC); ////modficar producto

                utili.Mensaje = componentes["mensaje11"].ToString();
                utili.Url = "AdministradorAgregarProducto.aspx";
                utili.IdCondicional = 0;

                return utili;

            }
            catch (Exception exc)
            {
                utili.Mensaje = componentes["mensaje12"].ToString() + utili.Nombre + componentes["mensaje13"].ToString();
                utili.IdCondicional = 1;
                utili.SaveLocationLogo = "";
                return utili;
            }

        }

        public DataTable mostrarproductos()
        {

            Productos = data.MostrarProductos();

            return Productos;

        }

        public UALL eliminarproducto(UALL utili, string ipAddress, string MAC,  int idio)
        {

            Logica_idiomaControl idioma = new Logica_idiomaControl();
            Hashtable componentes = new Hashtable();
            componentes = idioma.controlarIdioma(idio, 5);

            Productos = data.MostrarProductos();

            utili.Nombre = Productos.Rows[utili.ItemIndex]["nombre_producto"].ToString();

            if (System.IO.File.Exists(utili.SaveLocationLogo))
            {

                try
                {
                    System.IO.File.Delete(utili.SaveLocationLogo);

                    encap.IdProducto = utili.IdProducto;
                    encap.User = utili.User;

                    data.EliminarProducto(encap, ipAddress, MAC); /// eliminar producto
                                                                  /// 
                    utili.Mensaje = componentes["mensaje14"].ToString() + utili.Nombre + "";
                    utili.Url = "AdministradorAgregarProducto.aspx";
                    utili.IdCondicional = 0;
                    return utili;
                }
                catch (System.IO.IOException ex)
                {
                    utili.Mensaje = componentes["mensaje15"].ToString() + utili.Nombre + componentes["mensaje16"].ToString();
                    utili.IdCondicional = 1;
                    return utili;
                }
            }
           
            return utili;

        }
    }
}
