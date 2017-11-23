using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using EncapsularC;
using UtilitarioC;
using DataC;
using System.Collections;

namespace LogicaC
{

    public class LOlvidoContraseña
    {
        UALL utili = new UALL();
        DataTable Usuarios = new DataTable();
        DOlvidoContraseña data = new DOlvidoContraseña();

        public UALL pageload(UALL utili)
        {

            if (utili.IdTipoUsuario == 0)
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
                        if (utili.IdTipoUsuario == 3)
                        {
                            utili.Url = "Cliente.aspx";
                            utili.IdTipoUsuarioS = "3";
                        }
            return utili;

        }

        public UALL datosMail(UALL utili,int idio) {


            Logica_idiomaControl idioma = new Logica_idiomaControl();
            Hashtable componentes = new Hashtable();
            componentes = idioma.controlarIdioma(idio, 23);

             ///hora
            DateTime hora = DateTime.Now;
            int h = hora.Hour;

            ///cuenta hotmail
            ///
                utili.SmtpClientString = "smtp.live.com";
                utili.Port = 587;
                utili.CorreoOrigen="supermercadoonline@hotmail.com";
                utili.Descripcion = "SupermercadoOnline";
                utili.Asunto = componentes["mensaje1"].ToString();
                Usuarios = data.MostrarUsuario();

                for (int i = 0; i < Usuarios.Rows.Count; i++) {

                    if (utili.CedulaInt64 == Int64.Parse(Usuarios.Rows[i]["id_usuario"].ToString()))
                    {

                        utili.CedulaInt64 = Int64.Parse(Usuarios.Rows[i]["id_usuario"].ToString());
                        utili.Nombre = Usuarios.Rows[i]["nombres_usuario"].ToString();
                        utili.Apellido = Usuarios.Rows[i]["apellidos_usuario"].ToString();
                        utili.Email = Usuarios.Rows[i]["email_usuario"].ToString();
                        utili.Login = Usuarios.Rows[i]["nick_usuario"].ToString();
                        utili.Password = Usuarios.Rows[i]["pass_usuario"].ToString();

                        

                        if (h > 6 && h < 12) {

                            utili.Mensaje1 = componentes["mensaje2"].ToString();
                        
                        } else if (h > 12 && h < 18) {

                            utili.Mensaje1 = componentes["mensaje3"].ToString();
                        
                        }else if (h > 18 || h < 6) {

                            utili.Mensaje1 = componentes["mensaje4"].ToString();

                        }

                        utili.Mensaje = componentes["mensaje5"].ToString() + utili.Nombre + "  " + utili.Apellido + ".\n" +
                                        componentes["mensaje6"].ToString() + utili.CedulaInt64 + ".\n" +
                                        componentes["mensaje7"].ToString() + utili.Email + ".\n" +
                                        componentes["mensaje8"].ToString() + utili.Login + componentes["mensaje9"].ToString() + utili.Password + ".\n\n" +
                                        componentes["mensaje10"].ToString() + "\n\n" +
                                        utili.Mensaje1+". \n\n" +
                                        componentes["mensaje11"].ToString() + "\n\n" +
                                        componentes["mensaje12"].ToString();

                        utili.Mensaje1 = componentes["mensaje13"].ToString();
                        utili.Ruta = "Login.aspx";
                        utili.Nulo = "1";

                        break;
                    }

                    if (utili.Nombre == null) {

                        utili.Mensaje1 = componentes["mensaje14"].ToString() + utili.Login + componentes["mensaje15"].ToString();
                        utili.Nulo = null;
                    }
                
                
                }


                utili.CorreoDestino = utili.Email;

                utili.Password = "Latempestad1014@";
            
                
           
            return utili;
        }
    }
}
