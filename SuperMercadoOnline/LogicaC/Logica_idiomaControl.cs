using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DataC;
using System.Data;
using System.Collections;

namespace LogicaC
{
    public class Logica_idiomaControl
    {

        public String guardarImg(String nombreArchivo, String extension)
        {
            object aux = null; ;
            String img = "";

            if (!(nombreArchivo.Equals("") && extension.Equals("")))
            {
                img = nombreArchivo;


            }
            else
            {

                int aux2 = (int)aux;
            }

            return img;
        }

        public String fileUploadVacio(String nombreArchivo, String extension, String tb_nombre)
        {

            String url;

            if (nombreArchivo.Equals("") && extension.Equals(""))
            {
                // saveLocation = imagen;
                url = tb_nombre;


            }
            else
            {

                // saveLocation = (Server.MapPath("~\\imagenesSubidas") + "\\" + nombreArchivo);
                url = "~//Imagenes//ImagenesWeb" + "//" + nombreArchivo;

            }

            if (!(nombreArchivo.Equals("") && extension.Equals("")))
            {
                int validacion = 0;
                object aux = null;

                if (!(extension.Equals(".JPG") || extension.Equals(".GIF") || extension.Equals(".PNG") || extension.Equals(".JPEG")))
                {
                    validacion = 1;

                }
                if (validacion == 1)
                {
                    int aux2 = (int)aux;

                }
            }
            return url;

        }




        public void validarImg(int idio, int form, String compo)
        {

            object aux = null;
            String[] compoImagenes = { 
             "I_ProductoNuevo",
             "I_Catalogo",
             "I_paginafueraS",
             "I_VuelvaPronto",
             "I_catalogo",
             "I_Login",
             "I_Contactenos",
             "I_InicioCliente",
             "I_DatosUsuario",
             "I_AgregarProductos",
             "I_carritoCompras",
             "i_ActualizarDatos"};
            int[] formComp ={
             2,
             12,
             20,
             20,
             22,
             22,
             22,
             22,
             22,
             22,
             22,
             22};
           
            for (int i = 0; i < compoImagenes.Length; i++)
            {

                if (compo.Equals(compoImagenes[i]) && form == formComp[i])
                {

                    int aux2 = (int)aux;

                }

            }

           

        }

        public void validarImagenExistente(Boolean validar)
        {
            int validacion = 0;
            object aux = null;

            if (validar)
            {
                int aux2 = (int)aux;


            }

        }


        public void validarFU_TB(bool tb_mensaje)
        {
            object aux = null;

            if (tb_mensaje)
            {
                int aux2 = (int)aux;
            }


        }


        
        public String mostrartb(int idio, int form, String compo)
        {

            Logica_idiomaControl idioma = new Logica_idiomaControl();
            DataTable componente = idioma.traerCompon(idio,form);
            String mensaje="";

            for (int i = 0; i < componente.Rows.Count; i++)
            {

                if (compo.Equals(componente.Rows[i]["componente"].ToString()))
                {
                    mensaje = componente.Rows[i]["texto"].ToString();


                }

            }

            return mensaje;

        }



        public void modificarIdioma(int id_form, String componente, String texto, int id_idioma)
        {

            Data_idiomas dato = new Data_idiomas();
            dato.modificarIdioma(id_form, componente, texto, id_idioma);
        }

        public Hashtable controlarIdioma(int id_idioma, int id_formulario)
        {
            Hashtable componentes = new Hashtable();

            Data_idiomas data = new Data_idiomas();
            DataTable datos = data.traerNombre(id_idioma, id_formulario);

            for (int i = 0; i < datos.Rows.Count; i++)
            {
                String compo = datos.Rows[i]["componente"].ToString();
                String texto = datos.Rows[i]["texto"].ToString();
                componentes.Add(compo, texto);
            }

            return componentes;
        }


        public DataTable traerCompon(int id_idioma, int id_formulario)
        {


            Data_idiomas data = new Data_idiomas();
            DataTable datos = data.traerNombre(id_idioma, id_formulario);



            return datos;
        }

        public void validarTitulo(int filas)
        {
            object aux = null;

            if (filas != 0)
            {
                int aux2 = (int)aux;

            }

        }

        public DataTable llenarDDLIdioma()
        {



            Data_idiomas idioma = new Data_idiomas();
            DataTable idiom = idioma.traerIdiomas();



            return idiom;

        }



        public void enviarIdioma(String idioma, String terminacion)
        {



            Data_idiomas idi = new Data_idiomas();
            idi.insertaridioma(idioma, terminacion);


        }

        public void crearCompo()
        {

            Data_idiomas compo = new Data_idiomas();
            compo.crearcompo();



        }


        public DataTable llenarDDLFormularios()
        {



            Data_idiomas formu = new Data_idiomas();
            DataTable forms = formu.traerFormularios();



            return forms;

        }


        
    }
}
