using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using EncapsularC;
using DataC;
using UtilitarioC;
using System.Data;
using System.IO;
using System.Collections;

namespace LogicaC
{
    
    public class LMaster
    {
        UALL utili = new UALL();
        DataTable datosUsuario = new DataTable();
        DMaster data = new DMaster();
        
        public UALL Session(UALL utili, int idio) {

            Logica_idiomaControl idioma = new Logica_idiomaControl();
            Hashtable componentes = new Hashtable();
            componentes = idioma.controlarIdioma(idio, 1);


            if (utili.IdTipoUsuario != 0)
            {
               utili.AuxBolean = true; //mostrar controles master


                if (!System.IO.File.Exists(utili.SaveLocationLogo)) // si no existe en la carpeta servidor
                {
                    utili.ImagenUsuario="~/Imagenes/ImagenesWeb/imagen_vacia.png";
                }

                datosUsuario = data.MostrarUsuario(); /// traer usuario de la base de datos.

                for (int i = 0; i < datosUsuario.Rows.Count; i++)
                {

                    if (int.Parse(datosUsuario.Rows[i]["id_usuario"].ToString()) == utili.IdUsuario)
                    {
                        utili.User = datosUsuario.Rows[i]["nick_usuario"].ToString();
                        utili.Nombre = datosUsuario.Rows[i]["nombres_usuario"].ToString() + "   " + datosUsuario.Rows[i]["apellidos_usuario"].ToString();
                        utili.Email = datosUsuario.Rows[i]["email_usuario"].ToString();

                        if (utili.IdTipoUsuario == 1)
                        {
                            if (datosUsuario.Rows[i]["tipo_usuario"].ToString().Equals("Administrador"))
                            {
                                utili.Mensaje = componentes["Administrador"].ToString();
                            }
                        }
                        else
                            if (utili.IdTipoUsuario == 2)
                            {
                                if (datosUsuario.Rows[i]["tipo_usuario"].ToString().Equals("Cajero"))
                                {
                                    utili.Mensaje = componentes["Cajero"].ToString();
                                }
                            }
                            else
                                if (utili.IdTipoUsuario == 3)
                                {
                                    if (datosUsuario.Rows[i]["tipo_usuario"].ToString().Equals("Cliente"))
                                    {
                                        utili.Mensaje = componentes["Cliente"].ToString();
                                    }

                                    
                                }
                    }

                }

            }
            else
            {
                utili.AuxBolean = false;
            
            } 
            
            return utili;
        }

    }

}
