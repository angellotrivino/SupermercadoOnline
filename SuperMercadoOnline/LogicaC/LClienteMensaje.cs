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
    public class LClienteMensaje
    {
        EALL encap = new EALL();
        UALL utili = new UALL();
        DContactenos data = new DContactenos();

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

        public UALL insertarmensaje(UALL utili, string ipAddress, string MAC,int idio)
        {
            Logica_idiomaControl idioma = new Logica_idiomaControl();
            Hashtable componentes = new Hashtable();
            componentes = idioma.controlarIdioma(idio, 15);
            try
            {
                encap.Nombre = utili.Nombre;
                encap.Email = utili.Email;
                encap.Mensaje = utili.Mensaje;
                encap.User = utili.User;
                encap.Id = utili.IdUsuario;

                encap = data.contactar(encap, ipAddress, MAC);

                if (encap.Nulo == "1") {
            
                    
                    utili.Mensaje = componentes["mensaje1"].ToString();
                    return utili;
                
                }

                utili.Mensaje = componentes["mensaje2"].ToString();
            }
            catch (Exception ei)
            {

                utili.Mensaje = componentes["mensaje3"].ToString();


            }
            return utili;
        }
    }
}
