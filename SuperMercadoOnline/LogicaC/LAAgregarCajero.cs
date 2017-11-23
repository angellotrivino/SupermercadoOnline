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
    public class LAAgregarCajero
    {
        DataTable Cajeros = new DataTable();
        DataTable Usuarios = new DataTable();
        DAAgregarCajero data = new DAAgregarCajero();
        EALL encap = new EALL();

        public DataTable listarcajeros(int idio){

            Logica_idiomaControl idioma = new Logica_idiomaControl();
            Hashtable componentes = new Hashtable();
            componentes = idioma.controlarIdioma(idio, 4);
        
            Cajeros = data.ListarCajeros();

            for (int i = 0; i < Cajeros.Rows.Count; i++)
            {
                if (Cajeros.Rows[i]["nombre_usuario"].Equals("--Seleccione--"))
                {
                    Cajeros.Rows[i]["nombre_usuario"] = componentes["ddl_seleccione"].ToString();
                }
                
            }



            return Cajeros;


        }

        public DataTable mostrarcajeros(int idio) {

            Cajeros = data.MostrarCajeros();
            Cajeros.Columns.Add("Eliminar");   

            Logica_idiomaControl idioma = new Logica_idiomaControl();
            Hashtable componentes = new Hashtable();
            componentes = idioma.controlarIdioma(idio, 4);

            for (int i = 0; i < Cajeros.Rows.Count; i++)
            {
                Cajeros.Rows[i]["Eliminar"] = componentes["LB_Eliminar"].ToString();
                


            }

            return Cajeros;
        
        }

        public UALL insertarcajero(UALL utili, string ipAddress, string MAC, int idio)
        {

            int cont = -1;

            Logica_idiomaControl idioma = new Logica_idiomaControl();
            Hashtable componentes = new Hashtable();
            componentes = idioma.controlarIdioma(idio, 4);

            try
            {

                ////mirar si hay login repetidos o iguales

                Usuarios = data.MostrarUsuario();

                //Logica_idiomaControl idioma = new Logica_idiomaControl();
                //Hashtable componentes = new Hashtable();
                //componentes = idioma.controlarIdioma(idio, 4);

                for (int i = 0; i < Usuarios.Rows.Count; i++)
                {

                    if (utili.Login == Usuarios.Rows[i]["nick_usuario"].ToString() && utili.IdCajero != int.Parse(Usuarios.Rows[i]["id_usuario"].ToString()))
                    {

                        utili.Mensaje = componentes["mensaje1"].ToString() + ":" + utili.Login +" "+ componentes["mensaje2"].ToString();
                        utili.Nulo = "1";
                        utili.SaveLocationLogo = "";
                        return utili;
                    }


                }

                ///Si la contraseña nueva y la confirmacion 

                if (!(utili.Password.Equals(utili.Password1)))
                {
                    utili.Mensaje = componentes["mensaje3"].ToString();
                    utili.Nulo = "1";
                    utili.SaveLocationLogo = "";
                    return utili;
                }
                else
                    /////si el tipo de foto no es una imagen
                    if (!(string.Compare(utili.LogoExtension, ".jpg", true) == 0 || string.Compare(utili.LogoExtension, ".gif", true) == 0 || string.Compare(utili.LogoExtension, ".jpeg", true)
                        == 0 || string.Compare(utili.LogoExtension, ".png", true) == 0 || string.Compare(utili.LogoExtension, ".", true) == 0 || string.Compare(utili.LogoExtension, ".bmp", true)
                        == 0 || string.Compare(utili.LogoExtension, ".wmf", true) == 0))
                    {
                        utili.Mensaje = componentes["mensaje4"].ToString();
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

                utili.Url = "~\\Imagenes\\Usuario" + "\\" + cont + utili.LogoExtension + "";

                encap.Nombre = utili.Nombre;
                encap.Apellido = utili.Apellido;
                encap.Cedula = utili.Cedula;
                encap.Direccion = utili.Direccion;
                encap.Email = utili.Email;
                encap.Telefono = utili.Telefono;
                encap.Id = 2;
                encap.Login = utili.Login;
                encap.Password = utili.Password;
                encap.LogoUrl = utili.Url;

                encap.User = utili.User;

                encap = data.InsertarCajero(encap, ipAddress, MAC);

                if (encap.Nulo == "1")
                {

                    utili.Mensaje = componentes["mensaje5"].ToString() + ":" + utili.Cedula +" "+componentes["mensaje6"].ToString(); ;
                    utili.Nulo = "1";
                    utili.SaveLocationLogo = "";
                    return utili;

                }
                utili.Mensaje = componentes["mensaje7"].ToString() + utili.Login + "";
                utili.Url = "AdministradorAgregarCajeros.aspx";
                utili.Nulo = null;

                return utili;

            }
            catch (Exception ex)
            {
                utili.Mensaje = componentes["mensaje8"].ToString();
                utili.Nulo = "1";
                utili.SaveLocationLogo = "";
                return utili;

            }
            return utili;
        }

        public UALL obtenerdatoscajero(UALL utili)
        {

            Cajeros = data.MostrarCajeros();

            


            for (int i = 0; i < Cajeros.Rows.Count; i++)
            {

                if (utili.ItemIndex == int.Parse(Cajeros.Rows[i]["id_usuario"].ToString()))
                {
                    utili.IdCajero = int.Parse(Cajeros.Rows[i]["id_usuario"].ToString());
                    utili.Nombre = Cajeros.Rows[i]["nombres_usuario"].ToString();
                    utili.Apellido = Cajeros.Rows[i]["apellidos_usuario"].ToString();
                    utili.Direccion = Cajeros.Rows[i]["direccion_usuario"].ToString();
                    utili.Email = Cajeros.Rows[i]["email_usuario"].ToString();
                    utili.Telefono = Cajeros.Rows[i]["telefono_usuario"].ToString();
                    utili.LogoUrl = Cajeros.Rows[i]["imagen_usuario"].ToString();
                    utili.Login = Cajeros.Rows[i]["nick_usuario"].ToString();

                    break;
                }
            }

            return utili;
        }

        public UALL actualizarcajero(UALL utili, string ipAddress, string MAC,int idio)
        {
            Logica_idiomaControl idioma = new Logica_idiomaControl();
            Hashtable componentes = new Hashtable();
            componentes = idioma.controlarIdioma(idio, 4);
            try
            {
                Usuarios = data.MostrarUsuario();

                for (int i = 0; i < Usuarios.Rows.Count; i++) {

                    if (utili.Login == Usuarios.Rows[i]["nick_usuario"].ToString() && utili.IdCajero != int.Parse(Usuarios.Rows[i]["id_usuario"].ToString()))
                    {
                        //utili.Mensaje = componentes["mensaje2"].ToString();
                        utili.Mensaje = componentes["mensaje9"].ToString() + utili.Login + " " + componentes["mensaje10"].ToString();
                        utili.Nulo = "1";
                        utili.SaveLocationLogo = "";
                        return utili;
                    }
                
                
                }

                    if (utili.Password != utili.Password1)
                    {

                        utili.Mensaje = componentes["mensaje11"].ToString();
                        utili.Nulo = "1";
                        utili.SaveLocationLogo = "";
                        return utili;

                    }
                    else
                        if (utili.Password == "")
                        {

                            Cajeros = data.MostrarCajeros();

                            for (int i = 0; i < Cajeros.Rows.Count; i++)
                            {

                                if (utili.IdCajero == int.Parse(Cajeros.Rows[i]["id_usuario"].ToString()))
                                {

                                    utili.Password = Cajeros.Rows[i]["pass_usuario"].ToString();
                                    break;
                                }


                            }

                        }

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
                            utili.Mensaje = componentes["mensaje12"].ToString();
                            utili.Nulo = "1";
                            return utili;
                        }
                    }



                    int cont = -1;

                    if (!(string.Compare(utili.LogoExtension, ".jpg", true) == 0 || string.Compare(utili.LogoExtension, ".gif", true) == 0 || string.Compare(utili.LogoExtension, ".jpeg", true)
                        == 0 || string.Compare(utili.LogoExtension, ".png", true) == 0 || string.Compare(utili.LogoExtension, ".", true) == 0 || string.Compare(utili.LogoExtension, ".bmp", true)
                        == 0 || string.Compare(utili.LogoExtension, ".wmf", true) == 0))
                    {
                        utili.Mensaje = componentes["mensaje13"].ToString() + utili.LogoExtension + "";
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

                    utili.Ruta = "~\\Imagenes\\Usuario" + "\\" + cont + utili.LogoExtension + "";

                }
                else
                {

                    utili.SaveLocationLogo = "";
                }

                encap.Cedula = utili.IdCajero;
                encap.Nombre = utili.Nombre;
                encap.Apellido = utili.Apellido;
                encap.Direccion = utili.Direccion;
                encap.Telefono = utili.Telefono;
                encap.Email = utili.Email;
                encap.LogoUrl = utili.Ruta;
                encap.Login = utili.Login;
                encap.Password = utili.Password;

                encap.User = utili.User;

                data.ModificarCajero(encap, ipAddress, MAC);


                utili.Mensaje = componentes["mensaje14"].ToString()+":" + utili.Nombre + " " + componentes["mensaje15"].ToString();
                utili.Ruta = "AdministradorAgregarCajeros.aspx";
                utili.Nulo = null;
                return utili;
            }
            catch (Exception exc)
            {
                utili.Mensaje = componentes["mensaje16"].ToString()+" "+ utili.Nombre + "";
                utili.Nulo = "1";
                return utili;
            }

        }

        public UALL eliminarcajero(UALL utili, string ipAddress, string MAC,int idio)
        {
            Logica_idiomaControl idioma = new Logica_idiomaControl();
            Hashtable componentes = new Hashtable();
            componentes = idioma.controlarIdioma(idio, 4);

            if (System.IO.File.Exists(utili.SaveLocationLogo))
            {

                try
                {
                    System.IO.File.Delete(utili.SaveLocationLogo);


                }
                catch (System.IO.IOException ex)
                {
                    utili.Mensaje = componentes["mensaje17"].ToString();
                    utili.Nulo = "1";
                    return utili;
                }
            }

            try
            {

                encap.IdCajero = utili.IdCajero;
                encap.User = utili.User;

                data.EliminarCajero(encap, ipAddress, MAC);


                utili.Mensaje = componentes["mensaje18"].ToString();
                utili.Ruta = "AdministradorAgregarCajeros.aspx";
                utili.Nulo = null;
            }
            catch (Exception ei)
            {
                utili.Mensaje = componentes["mensaje19"].ToString();
                utili.Nulo = "1";
            }
            return utili;
        }


    }
}
