using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using DataC;
using UtilitarioC;
using EncapsularC;
using System.Collections;

namespace LogicaC
{
    
    public class LCatalogo
    {
        DataTable datos = new DataTable();
        DCatalogo data = new DCatalogo();
        UALL utili = new UALL();

        public DataTable llenarDL(String filtro)
        {

            datos = data.obtenerProductos(filtro);

            return datos;
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

        public UALL DL_ProductosVacio(int item, int idio) {

            Logica_idiomaControl idioma = new Logica_idiomaControl();
            Hashtable componentes = new Hashtable();
            componentes = idioma.controlarIdioma(idio,12);

            if (item == 0)
            {
                utili.Mensaje = componentes["Mensaje1"].ToString();

            }
            else
            {

               utili.Mensaje = "";
            }
            return utili;
        }

    }
}
