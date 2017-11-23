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
    public class LActualizarDatos
    {
        UALL utili = new UALL();
        EALL encap = new EALL();
        DActualizarDatos data = new DActualizarDatos();
        DataTable datosUsuario = new DataTable();

        public UALL pageload(UALL utili)
        {

            if (utili.IdTipoUsuario == 1)
            {
                utili.Url = "Administrador.aspx";
                utili.IdTipoUsuarioS = null;

            }else 
            if (utili.IdTipoUsuario == 2)
            {
                utili.Url = "Cajero.aspx";
                utili.IdTipoUsuarioS = null;

            } else 
            if (utili.IdTipoUsuario == 3)
            {
                utili.Url = "Cliente.aspx";
                utili.IdTipoUsuarioS = null;

            }
                else
                        if (utili.IdTipoUsuario == 0)
                        {
                            utili.Url = "Login.aspx";
                            utili.IdTipoUsuarioS = "0";
                        }

            return utili;

        }

        public UALL llenarcampos(UALL utili) {

            datosUsuario = data.MostrarUsuario(); // recuperar datos

            for (int i = 0; i < datosUsuario.Rows.Count; i++)
            {

                if (int.Parse(datosUsuario.Rows[i]["id_usuario"].ToString())==utili.IdUsuario)
                {

                    utili.IdUsuario = int.Parse(datosUsuario.Rows[i]["id_usuario"].ToString());
                    utili.Nombre = datosUsuario.Rows[i]["nombres_usuario"].ToString();
                    utili.Apellido = datosUsuario.Rows[i]["apellidos_usuario"].ToString();
                    utili.Direccion = datosUsuario.Rows[i]["direccion_usuario"].ToString();
                    utili.Telefono = datosUsuario.Rows[i]["telefono_usuario"].ToString();
                    utili.Email = datosUsuario.Rows[i]["email_usuario"].ToString();
                    utili.User = datosUsuario.Rows[i]["nick_usuario"].ToString();
                    utili.ImagenUsuario = datosUsuario.Rows[i]["imagen_usuario"].ToString();

                    break;
                }
            }

            return utili;
        }

        public UALL actualizardatos(UALL utili, string ipAddress, string MAC,int idio)
        {
            Logica_idiomaControl idioma = new Logica_idiomaControl();
            Hashtable componentes = new Hashtable();
            componentes = idioma.controlarIdioma(idio, 14);



            datosUsuario = data.MostrarUsuario();

            for (int i = 0; i < datosUsuario.Rows.Count; i++)
            {
                if (utili.Login == datosUsuario.Rows[i]["nick_usuario"].ToString() && utili.User != datosUsuario.Rows[i]["nick_usuario"].ToString())
                {
                    utili.Mensaje = componentes["mensaje1"].ToString();
                    utili.Nulo = null;
                    return utili;
                }
            }

            for (int i = 0; i < datosUsuario.Rows.Count; i++)
            {

                if (int.Parse(datosUsuario.Rows[i]["id_usuario"].ToString()) == utili.IdUsuario)
                {

                    if (!(utili.PasswordR1.Equals(datosUsuario.Rows[i]["pass_usuario"].ToString())))
                    {
                        utili.Mensaje = componentes["mensaje2"].ToString();
                        utili.Nulo = "1";
                        return utili;
                    }
                }

            }

            if (!(utili.Password.Equals(utili.Password1.ToString())))
            {
                utili.Mensaje = componentes["mensaje3"].ToString();
                utili.Nulo = "1";
                return utili;
            }



            if (utili.LogoExtension != "")
            {


                int cont = -1;

                if (!(string.Compare(utili.LogoExtension, ".jpg", true) == 0 || string.Compare(utili.LogoExtension, ".gif", true) == 0 || string.Compare(utili.LogoExtension, ".jpeg", true)
                    == 0 || string.Compare(utili.LogoExtension, ".png", true) == 0 || string.Compare(utili.LogoExtension, ".", true) == 0 || string.Compare(utili.LogoExtension, ".bmp", true)
                    == 0 || string.Compare(utili.LogoExtension, ".wmf", true) == 0))
                {
                    utili.Mensaje = componentes["mensaje4"].ToString();
                    utili.Nulo = null;
                    return utili;
                }

                if (System.IO.File.Exists(utili.ImagenUsuario))
                {

                    try
                    {
                        System.IO.File.Delete(utili.ImagenUsuario);


                    }
                    catch (System.IO.IOException ex)
                    {
                        Console.WriteLine(ex.Message);

                    }
                }

                string origenSaveLLogo = utili.SaveLocationLogo;
                do
                {
                    utili.SaveLocationLogo = origenSaveLLogo;
                    cont++;

                    utili.SaveLocationLogo = utili.SaveLocationLogo + cont + utili.LogoExtension + "";

                } while (System.IO.File.Exists(utili.SaveLocationLogo));

                utili.Ruta = "~\\Imagenes\\Usuario" + "\\" + cont + utili.LogoExtension + "";
            }


                encap.Nombre = utili.Nombre;
                encap.Apellido = utili.Apellido;
                encap.Cedula = utili.Cedula;
                encap.Direccion = utili.Direccion;
                encap.Email = utili.Email;
                encap.Telefono = utili.Telefono;
                encap.Login = utili.Login;

                if (utili.Password != "")
                {//Condicion si desea cambiarla o no, para dejar la actual
                    encap.Password = utili.Password1;
                }
                else
                {
                    encap.Password = utili.PasswordR1;
                }
                encap.LogoUrl = utili.Ruta;

                encap.User = utili.User;

                data.ModificarUsuario(encap, ipAddress, MAC);

                utili.Mensaje = componentes["mensaje5"].ToString();
                utili.Url = "ClienteActualizarDatos.aspx";
                utili.Nulo = "A";
                utili.ImagenUsuario = utili.Ruta;

                return utili;

            
        }
    }
}
