using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using DataC;
using EncapsularC;
using UtilitarioC;
using System.Collections;
namespace LogicaC
{
    public class LAAgregarProveedor
    {
        DataTable Proveedores = new DataTable();
        DataTable Producto = new DataTable();
        DataTable ProductoProveedor = new DataTable();

        DAAgregarProveedor data = new DAAgregarProveedor();
        EALL encap = new EALL();
        UALL utili = new UALL();

        public DataTable listarproveedores(int idio){

            Logica_idiomaControl idioma = new Logica_idiomaControl();
            Hashtable componentes = new Hashtable();
            componentes = idioma.controlarIdioma(idio, 6);

            Proveedores = data.ListarProveedores();

            for (int i = 0; i < Proveedores.Rows.Count; i++)
            {
                if (Proveedores.Rows[i]["nombre_proveedor"].Equals("--Seleccione--"))
                {
                    Proveedores.Rows[i]["nombre_proveedor"] = componentes["ddl_seleccione6"].ToString();
                }

            }

            return Proveedores; 
        }

        public DataTable listarproducto(int idio)
        {
            Logica_idiomaControl idioma = new Logica_idiomaControl();
            Hashtable componentes = new Hashtable();
            componentes = idioma.controlarIdioma(idio, 6);

            Producto = data.ListarProductos();

            for (int i = 0; i < Producto.Rows.Count; i++)
            {
                if (Producto.Rows[i]["nombre_producto"].Equals("--Seleccione--"))
                {
                    Producto.Rows[i]["nombre_producto"] = componentes["ddl_seleccione6.1"].ToString();
                }

            }

            return Producto;
        }

        public DataTable mostrarrelacionproductoproveedor(int proveedor_id) {

            ProductoProveedor = data.productosProveedor(proveedor_id);
            return ProductoProveedor;
        }

        public DataTable mostrarproveedor() {

            Proveedores = data.MostrarProveedor();

            return Proveedores;
        }

        public UALL obtenerdatosproveedor(UALL utili)
        {

            Proveedores = data.MostrarProveedor();


            for (int i = 0; i < Proveedores.Rows.Count; i++)
            {

                if (utili.ItemIndex == int.Parse(Proveedores.Rows[i]["id_proveedor"].ToString()))
                {
                    utili.Id = int.Parse(Proveedores.Rows[i]["id_proveedor"].ToString());
                    utili.Nombre = Proveedores.Rows[i]["nombre_proveedor"].ToString();
                    utili.Direccion = Proveedores.Rows[i]["direccion_proveedor"].ToString();
                    utili.Email = Proveedores.Rows[i]["email_proveedor"].ToString();
                    utili.Telefono = Proveedores.Rows[i]["telefono_proveedor"].ToString();
                    utili.LogoUrl = Proveedores.Rows[i]["logo_proveedor"].ToString();

                    break;
                }
            }
            return utili;
        }

        public UALL actualizarproveedor(UALL utili, string ipAddress, string MAC,int idio)
        {

            Logica_idiomaControl idioma = new Logica_idiomaControl();
            Hashtable componentes = new Hashtable();
            componentes = idioma.controlarIdioma(idio, 6);

            try
            {

                if (utili.LogoExtension != "")
                {
                    if (System.IO.File.Exists(utili.LogoUrl))
                    {

                        try
                        {
                            System.IO.File.Delete(utili.LogoUrl);

                        }
                        catch (System.IO.IOException ex)
                        {
                            utili.Mensaje = componentes["mensaje1"].ToString();
                            utili.Nulo = "1";
                            return utili;
                        }
                    }



                    int cont = -1;

                    if (!(string.Compare(utili.LogoExtension, ".jpg", true) == 0 || string.Compare(utili.LogoExtension, ".gif", true) == 0 || string.Compare(utili.LogoExtension, ".jpeg", true)
                        == 0 || string.Compare(utili.LogoExtension, ".png", true) == 0 || string.Compare(utili.LogoExtension, ".", true) == 0 || string.Compare(utili.LogoExtension, ".bmp", true)
                        == 0 || string.Compare(utili.LogoExtension, ".wmf", true) == 0))
                    {
                        utili.Mensaje = componentes["mensaje2"].ToString() + utili.LogoExtension + "";
                        utili.Nulo = "1";
                        utili.SaveLocationLogo = "";
                        return utili;
                    }

                    string origenSaveLLogo = utili.SaveLocationLogo;
                    do
                    {
                        utili.SaveLocationLogo = origenSaveLLogo;
                        cont++;

                        utili.SaveLocationLogo = "" + utili.SaveLocationLogo + cont + utili.LogoExtension + "";

                    } while (System.IO.File.Exists(utili.SaveLocationLogo));

                    utili.Ruta = "~\\Imagenes\\Logo" + "\\" + cont + utili.LogoExtension + "";

                }
                else
                {

                    utili.SaveLocationLogo = "";
                }

                encap.Nit = utili.IdProveedor;
                encap.Nombre = utili.Nombre;
                encap.Direccion = utili.Direccion;
                encap.Telefono = utili.Telefono;
                encap.Email = utili.Email;
                encap.LogoUrl = utili.Ruta;
                encap.User = utili.User;

                data.ModificarProvedor(encap, ipAddress, MAC);


                utili.Mensaje = componentes["mensaje3"].ToString() + " " + utili.Nombre + componentes["mensaje4"].ToString();
               utili.Ruta = "AdministradorAgregarProov.aspx";
               utili.Nulo = null;
               return utili;
            }
            catch (Exception exc)
            {
                utili.Mensaje = componentes["mensaje5"].ToString()+" " + utili.Nombre + "";
                 utili.Nulo = "1";
                 return utili;
            }

        }

        public UALL insertarproveedor(UALL utili, string ipAddress, string MAC,int idio) {


            Logica_idiomaControl idioma = new Logica_idiomaControl();
            Hashtable componentes = new Hashtable();
            componentes = idioma.controlarIdioma(idio, 6);

          try
            {
                int cont = -1;


                if (!(string.Compare(utili.LogoExtension, ".jpg", true) == 0 || string.Compare(utili.LogoExtension, ".gif", true) == 0 || string.Compare(utili.LogoExtension, ".jpeg", true)
                    == 0 || string.Compare(utili.LogoExtension, ".png", true) == 0 || string.Compare(utili.LogoExtension, ".", true) == 0 || string.Compare(utili.LogoExtension, ".bmp", true)
                    == 0 || string.Compare(utili.LogoExtension, ".wmf", true) == 0))
                {
                    utili.Mensaje = componentes["mensaje6"].ToString()+" "+utili.LogoExtension+"";
                    utili.Nulo = "1";
                    utili.SaveLocationLogo = "";
                    return utili;
                }

                string origenSaveLLogo = utili.SaveLocationLogo;
                do
                {
                    utili.SaveLocationLogo = origenSaveLLogo;
                    cont++;

                    utili.SaveLocationLogo = "" + utili.SaveLocationLogo + cont + utili.LogoExtension + "";

                } while (System.IO.File.Exists(utili.SaveLocationLogo));

                utili.LogoUrl = "~\\Imagenes\\Logo" + "\\" + cont + utili.LogoExtension + "";


                encap.Nit = utili.IdProveedor;
                encap.Nombre = utili.Nombre;
                encap.Direccion = utili.Direccion;
                encap.Telefono = utili.Telefono;
                encap.Email = utili.Email;
                encap.LogoUrl = utili.LogoUrl;
                encap.User = utili.User;

     
                encap = data.InsertarProveedor(encap, ipAddress, MAC);

                if (encap.Nulo == "1") /// si hay dato repetido en la base de datos pk
                {
                    utili.Mensaje = componentes["mensaje7"].ToString()+" " + utili.Nombre + componentes["mensaje8"].ToString()+" "+ utili.IdProveedor + componentes["mensaje9"].ToString();
                    utili.Nulo = "1";
                    utili.SaveLocationLogo = "";
                    return utili;
                }


                utili.Mensaje = componentes["mensaje10"].ToString()+" "+utili.Nombre+"";
                utili.Url = "AdministradorAgregarProov.aspx";
                utili.Nulo = null;

                return utili;
            }
            catch (Exception ei)
            {
                utili.Mensaje = componentes["mensaje11"].ToString() + " " + utili.Nombre + componentes["mensaje12"].ToString();
                utili.Nulo = "1";
                utili.SaveLocationLogo = "";
                return utili;
            }


            return utili;
        }

        public UALL eliminarproveedor(UALL utili, string ipAddress, string MAC, int idio) {

            Logica_idiomaControl idioma = new Logica_idiomaControl();
            Hashtable componentes = new Hashtable();
            componentes = idioma.controlarIdioma(idio, 6);

            if (System.IO.File.Exists(utili.SaveLocationLogo))
            {

                try
                {
                    System.IO.File.Delete(utili.SaveLocationLogo);
                   

                }
                catch (System.IO.IOException ex)
                {
                   utili.Mensaje = componentes["mensaje13"].ToString();
                   utili.Nulo = "1";
                    return utili;
                }
            }

            try
            {

                encap.IdProveedor = utili.IdProveedor;
                encap.User = utili.User;

                data.EliminarProveedor(encap, ipAddress, MAC);
                

               utili.Mensaje = componentes["mensaje14"].ToString();
               utili.Ruta = "AdministradorAgregarProov.aspx";
               utili.Nulo = null;
            }
            catch (Exception ei)
            {
                utili.Mensaje = componentes["mensaje15"].ToString();
                utili.Nulo = "1";
            }
            return utili;
        }

        public UALL relacionProductoProveedor(UALL utili, string ipAddress, string MAC,int idio) {

            ProductoProveedor = data.productosProveedor(utili.IdProveedor);


            Logica_idiomaControl idioma = new Logica_idiomaControl();
            Hashtable componentes = new Hashtable();
            componentes = idioma.controlarIdioma(idio, 6);



            for (int i = 0; i < ProductoProveedor.Rows.Count; i++)
            {

                if (utili.IdProducto== int.Parse(ProductoProveedor.Rows[i]["id_producto"].ToString()))
                {

                    utili.Mensaje = componentes["mensaje16"].ToString()+" "+utili.NombreProducto+componentes["mensaje17"].ToString()+" "+utili.NombreProveedor;
                    utili.Nulo = "1";
                    return utili;
                }

            }

            try
            {

                encap.IdProducto = utili.IdProducto;
                encap.IdProveedor = utili.IdProveedor;
                encap.Precio = utili.Precio;
                encap.NombreProducto = utili.NombreProducto;
                encap.NombreProveedor = utili.NombreProveedor;
                encap.User = utili.User;

                data.InsertarProductosProveedor(encap, ipAddress, MAC);

               utili.Mensaje = componentes["mensaje18"].ToString()+utili.NombreProducto+componentes["mensaje19"].ToString()+utili.NombreProveedor+"";
               utili.Ruta = "AdministradorAgregarProov.aspx";
               utili.Nulo = null;

            }
            catch (Exception ei)
            {
                utili.Mensaje = componentes["mensaje20"].ToString()+ utili.NombreProducto + componentes["mensaje21"].ToString() + utili.NombreProveedor + 
                    componentes["mensaje22"].ToString();
                utili.Nulo = "1";
            }

            return utili;
        }

        public UALL actualizarproductoproveedor(UALL utili, string ipAddress, string MAC,int idio) {

            Logica_idiomaControl idioma = new Logica_idiomaControl();
            Hashtable componentes = new Hashtable();
            componentes = idioma.controlarIdioma(idio, 6);
            try
            {
                ProductoProveedor = data.productosProveedor(utili.IdProveedor);

                utili.NombreProducto = ProductoProveedor.Rows[utili.ItemIndex]["nombre_producto"].ToString();

                if (utili.Precio <= 0) {

                    utili.Mensaje = componentes["mensaje23"].ToString()+utili.NombreProducto+"";
                    utili.Nulo = "A";
                    return utili;
                
                }

                encap.IdProducto = utili.IdProducto;
                encap.IdProveedor = utili.IdProveedor;
                encap.Precio = utili.Precio;
                encap.User = utili.User;

                data.ModificarProductoProvedor(encap, ipAddress, MAC);

                utili.Mensaje = componentes["mensaje24"].ToString();
                utili.Nulo = "1";
                
            }
            catch (Exception ei)
            {
                utili.Mensaje = componentes["mensaje25"].ToString();
                utili.Nulo = "1";
            }


            return utili;
        }

        public UALL condicional(int index) {

            if (index == 0) {

                utili.Nulo = "1";
            }else
                if (index == 1)
                {

                    utili.Nulo = null;
                }

            return utili;
        }

        public UALL eliminarproductoproveedor(UALL utili, string ipAddress, string MAC,int idio) {

            Logica_idiomaControl idioma = new Logica_idiomaControl();
            Hashtable componentes = new Hashtable();
            componentes = idioma.controlarIdioma(idio, 6);


            try
            {
                ProductoProveedor = data.productosProveedor(utili.IdProveedor);
                utili.NombreProducto = ProductoProveedor.Rows[utili.ItemIndex]["nombre_producto"].ToString();

                encap.IdProducto = utili.IdProducto;
                encap.IdProveedor = utili.IdProveedor;
                encap.User = utili.User;

                data.EliminarProductosProveedor(encap, ipAddress, MAC);

                utili.Mensaje = componentes["mensaje26"].ToString()+utili.NombreProducto+"";
            }
            catch (Exception exc)
            {
                utili.Mensaje = componentes["mensaje27"].ToString() + utili.NombreProducto + "";
            }

            return utili;
        }
    }

    

}
