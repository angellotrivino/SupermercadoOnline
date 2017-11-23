using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DataC;
using EncapsularC;
using UtilitarioC;

namespace LogicaC
{
    public class LCliente
    {
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

    }
}
