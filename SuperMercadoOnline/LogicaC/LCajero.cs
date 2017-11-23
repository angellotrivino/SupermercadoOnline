using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using DataC;
using EncapsularC;
using UtilitarioC;

namespace LogicaC
{
   public class LCajero
    {
       
       public UALL pageload(UALL utili)
       {

           if (utili.IdTipoUsuario == 2)
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
                   if (utili.IdTipoUsuario == 3)
                   {
                       utili.Url = "Cliente.aspx";
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
