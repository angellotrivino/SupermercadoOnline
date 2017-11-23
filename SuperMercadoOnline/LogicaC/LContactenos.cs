using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DataC;
using EncapsularC;
using UtilitarioC;
using System.Collections;

namespace LogicaC
{
    public class LContactenos
    {
        EALL encap = new EALL();
        DContactenos data = new DContactenos();
        UALL utili = new UALL();

        public UALL insertarmensaje(UALL utili, string ipAddress, string MAC, int idio){

            Logica_idiomaControl idioma = new Logica_idiomaControl();
            Hashtable componentes = new Hashtable();
            componentes = idioma.controlarIdioma(idio, 19);

            

            try
            {
                encap.Nombre = utili.Nombre;
                encap.Email = utili.Email;
                encap.Mensaje = utili.Mensaje;
                encap.User = utili.User;
                encap.Id = utili.IdUsuario;

                encap = data.contactar(encap, ipAddress, MAC);

                if (encap.Nulo == "1") {
                    utili.Mensaje =componentes["mensaje1"].ToString(); 
                    return utili;
                }
                utili.Mensaje = componentes["mensaje2"].ToString();
            }
            catch (Exception ei) {

                utili.Mensaje = componentes["mensaje3"].ToString();
                
            
            }
            return utili;
        }

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
    }
}
