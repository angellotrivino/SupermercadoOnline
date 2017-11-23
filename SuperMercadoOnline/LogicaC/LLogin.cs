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
   public class LLogin
    {
       DLogin data = new DLogin();
       EALL encap = new EALL();
       DataTable datos = new DataTable();
       UALL utili = new UALL();

       public UALL obtenerdatos(string user, string password, string ipAddress, string MAC,int idio) {


           Logica_idiomaControl idioma = new Logica_idiomaControl();
           Hashtable componentes = new Hashtable();
           componentes = idioma.controlarIdioma(idio, 21);


        encap.User = user;
        encap.Password = password;

        datos = data.obtenerdatos(encap, ipAddress, MAC);
        
        if (datos.Rows.Count > 0)
        {

            utili.IdTipoUsuario = int.Parse(datos.Rows[0]["tipo_usuario_id"].ToString());
            utili.IdUsuario = int.Parse(datos.Rows[0]["id_usuario"].ToString());
            utili.ImagenUsuario = datos.Rows[0]["imagen_usuario"].ToString();

            
            if (utili.IdTipoUsuario == 1)
            {
                utili.Mensaje = componentes["mensaje1"].ToString();
                utili.Url = "Administrador.aspx";

            }
            else
                if (utili.IdTipoUsuario == 3)
                {
                    utili.Mensaje = componentes["mensaje2"].ToString();
                    utili.Url = "Cliente.aspx";

                }
                else
                    if (utili.IdTipoUsuario == 2)
                    {
                        utili.Mensaje = componentes["mensaje3"].ToString();
                        utili.Url = "Cajero.aspx";
                    }

            //// limite sesion y intentos sesion 
            UALL utili_sesion = new UALL();
            utili_sesion.Id = utili.IdUsuario;
            utili_sesion.Port = 0;

            utili_sesion = limite_sesion(utili_sesion);

            encap.Id = utili.IdUsuario;
            datos = data.obtener_intentos_sesion(encap);

            int _cont_intent_error = int.Parse(datos.Rows[0]["f_obtener_intentos_sesion"].ToString());

            if (_cont_intent_error == 3) {

                utili.Mensaje = "ha superado el limite de intentos en esta sesion, max: 3, debe esperar 30 min";
                utili.Url = "Login.aspx";
                utili.IdTipoUsuario = 0;

            }else
            if (utili_sesion.Control == 1) {

                utili.Mensaje = "ha superado el limite de sesiones, max: " + utili_sesion.I_cant_sesion.ToString();
                utili.Url = "Login.aspx";
                utili.IdTipoUsuario = 0;
            }
                
            ///
        }
        else
        {   /// intentos maximos (3)
            encap.User = user;
            datos = data.sesion_intentos(encap);

            int control = int.Parse(datos.Rows[0]["f_sesion_intentos"].ToString());


            ///
            if (control == 1) {

                utili.Mensaje = "Ha superado el numero de intentos (3), debe esperar 30 min para ingresar nuevamente";
                utili.Url = "Login.aspx";
            
            }
            else
            {
                utili.Mensaje = componentes["mensaje4"].ToString();
                utili.Url = "Login.aspx";
            }

        }

        return utili;
       }

       public UALL pageload(UALL utili) {

           if (utili.IdTipoUsuario == 0)
           {
               utili.IdTipoUsuarioS = null;

           }else
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
                       if (utili.IdTipoUsuario == 3)
                       {
                           utili.Url = "Cliente.aspx";
                           utili.IdTipoUsuarioS = "3";
                       }
           return utili;
       
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

       public UALL crearcuenta(UALL utili, string ipAddress, string MAC,int idio) {


           Logica_idiomaControl idioma = new Logica_idiomaControl();
           Hashtable componentes = new Hashtable();
           componentes = idioma.controlarIdioma(idio, 21);


           int cont = -1;
           try
           {
               datos = data.MostrarUsuario();

               for (int i = 0; i < datos.Rows.Count; i++)
               {
                   if (utili.User == datos.Rows[i]["nick_usuario"].ToString())
                   {
                       utili.Mensaje = componentes["mensaje5"].ToString();
                       utili.IdCondicional = 1;
                       return utili;

                   }

               }

               if (!(utili.Password.Equals(utili.Password1)))
               {
                   utili.Mensaje = componentes["mensaje6"].ToString();
                   utili.IdCondicional = 1;
                   return utili;
               }else
               if (!(string.Compare(utili.LogoExtension, ".jpg", true) == 0 || string.Compare(utili.LogoExtension, ".gif", true) == 0 || string.Compare(utili.LogoExtension, ".jpeg", true)
                   == 0 || string.Compare(utili.LogoExtension, ".png", true) == 0 || string.Compare(utili.LogoExtension, ".", true) == 0 || string.Compare(utili.LogoExtension, ".bmp", true)
                   == 0 || string.Compare(utili.LogoExtension, ".wmf", true) == 0))
               {
                   utili.Mensaje = componentes["mensaje7"].ToString();
                   utili.IdCondicional = 1;
                   return utili;
               }

               string origenSaveLLogo = utili.SaveLocationLogo;
               do
               {
                   utili.SaveLocationLogo = origenSaveLLogo;
                   cont++;

                   utili.SaveLocationLogo = ""+ utili.SaveLocationLogo + cont + utili.LogoExtension + "";

               } while (System.IO.File.Exists(utili.SaveLocationLogo));

               utili.Url = "~\\Imagenes\\Usuario" + "\\" + cont + utili.LogoExtension + "";
               
               encap.Nombre = utili.Nombre;
               encap.Apellido = utili.Apellido;
               encap.Cedula = utili.Cedula;
               encap.Direccion = utili.Direccion;
               encap.Email = utili.Email;
               encap.Telefono = utili.Telefono;
               encap.Id = 3;
               encap.User = utili.User;
               encap.Password = utili.Password;
               encap.LogoUrl = utili.Url;

               encap = data.InsertarUsuario(encap, ipAddress, MAC);

               if (encap.Nulo == "1"){

                   utili.Mensaje = componentes["mensaje8"].ToString() + utili.Cedula + componentes["mensaje9"].ToString();
                   utili.IdCondicional = 1;
                   return utili;
               
               }
               utili.Mensaje = componentes["mensaje10"].ToString();
               utili.Url = "Login.aspx";
               utili.IdCondicional = 0;

               return utili;

           }
           catch (Exception ex)
           {
               utili.Mensaje = componentes["mensaje11"].ToString();
               utili.IdCondicional = 1;
               return utili;

           }
       }


       public UALL limite_sesion(UALL utili) {

           encap.Id = utili.Id;
           encap.Port = utili.Port;

           datos = data.limite_sesion(encap);

           if (utili.Port == 0)
           {
               utili.Control = Int32.Parse(datos.Rows[0]["control"].ToString());
               utili.I_cant_sesion = Int32.Parse(datos.Rows[0]["i_cant_sesion"].ToString());
               utili.I_cont_sesion = Int32.Parse(datos.Rows[0]["i_cont_sesion"].ToString());
           }

           return utili;
       }

       public void liberar_sesion() {

           datos = data.MostrarUsuario();

           for (int i = 0; i < datos.Rows.Count; i++) {

               encap.Id = int.Parse(datos.Rows[i]["id_usuario"].ToString());
               data.liberar_sesion(encap);
           
           }           

       }
    }
}
