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

    public class LAMensajes
    {
        DataTable Mensajes = new DataTable();
        DAMensajes data = new DAMensajes();

        public DataTable mensajes() {

            Mensajes = data.Mensajes();

            return Mensajes;
        }
    }
}
