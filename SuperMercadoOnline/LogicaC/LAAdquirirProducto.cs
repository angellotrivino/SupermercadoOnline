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
    public class LAAdquirirProducto
    {
        DataTable AdqurirProductos = new DataTable();
        DAAdquirirProducto data = new DAAdquirirProducto();
        EALL encap = new EALL();

        public DataTable mostraradquirirproductos(int idio) {

        Logica_idiomaControl idioma = new Logica_idiomaControl();
        Hashtable componentes = new Hashtable();
        componentes = idioma.controlarIdioma(idio, 3);

            AdqurirProductos = data.RelacionProductoProveedor();

            AdqurirProductos.Columns.Add("Editar");
            AdqurirProductos.Columns.Add("Actualizar");
            AdqurirProductos.Columns.Add("Cancelar");


            for (int i = 0; i < AdqurirProductos.Rows.Count; i++)
            {
                AdqurirProductos.Rows[i]["Cancelar"] = componentes["LB_Cancelar"].ToString();
                AdqurirProductos.Rows[i]["Editar"] = componentes["LB_Editar"].ToString();
                AdqurirProductos.Rows[i]["Actualizar"] = componentes["LB_Actualizar"].ToString();


            }




                return AdqurirProductos; 
        }

        public UALL adquirirproductos(UALL utili, string ipAddress, string MAC, int idio) {
            Logica_idiomaControl idioma = new Logica_idiomaControl();
            Hashtable componentes = new Hashtable();
            componentes = idioma.controlarIdioma(idio, 3);
            try {
                encap.Id = utili.Id;
                encap.Precio = utili.Precio;
                encap.Cantidad = int.Parse(utili.Cantidad_TB);
                encap.User = utili.User;

                data.AdquirirProducto(encap, ipAddress, MAC);

                

                utili.Mensaje = componentes["mensaje1"].ToString();
                utili.Url = "AdministradorAdquirirProducto.aspx";
                utili.Nulo = null;
            }
            catch (Exception ei) {

                utili.Mensaje = componentes["mensaje2"].ToString();
                utili.Nulo = "1";
            
            }
            
            return utili;
        }
    }
}
