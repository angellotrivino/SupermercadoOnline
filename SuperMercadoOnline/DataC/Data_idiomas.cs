using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using MySql.Data.MySqlClient;
using System.Configuration;


namespace DataC
{
    public class Data_idiomas
    {
        //sp_modificarIdioma

        public void modificarIdioma(int id_form, String componente, String texto, int id_idioma) // traerLos nombres de los componentes
        {

            DataTable archivo = new DataTable();
            MySqlConnection conection = new MySqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringMySql"].ConnectionString);

            try
            {
                MySqlDataAdapter dataAdapter = new MySqlDataAdapter("sp_modificarIdioma", conection);
                dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;
                dataAdapter.SelectCommand.Parameters.Add("_id_formulario", MySqlDbType.Int32).Value = id_form;
                dataAdapter.SelectCommand.Parameters.Add("_componente", MySqlDbType.VarChar,1000).Value = componente;
                dataAdapter.SelectCommand.Parameters.Add("_texto", MySqlDbType.VarChar,1000).Value = texto;
                dataAdapter.SelectCommand.Parameters.Add("_id_idioma", MySqlDbType.Int32).Value = id_idioma;

                conection.Open();
                dataAdapter.Fill(archivo);
            }
            catch (Exception Ex)
            {
                throw Ex;
            }
            finally
            {
                if (conection != null)
                {
                    conection.Close();
                }
            }

        }


        public DataTable traerNombre(int id_idioma, int id_formulario) // traerLos nombres de los componentes
        {

            DataTable archivo = new DataTable();
            MySqlConnection conection = new MySqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringMySql"].ConnectionString);

            try
            {
                MySqlDataAdapter dataAdapter = new MySqlDataAdapter("sp_traerComponentesIdioma", conection);
                dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;
                dataAdapter.SelectCommand.Parameters.Add("_ididioma", MySqlDbType.Int32).Value = id_idioma;
                dataAdapter.SelectCommand.Parameters.Add("_idform", MySqlDbType.Int32).Value = id_formulario;

                conection.Open();
                dataAdapter.Fill(archivo);
            }
            catch (Exception Ex)
            {
                throw Ex;
            }
            finally
            {
                if (conection != null)
                {
                    conection.Close();
                }
            }
            return archivo;
        }

        public DataTable traerIdiomas() // ddl de idiomas
        {

            DataTable archivo = new DataTable();
            MySqlConnection conection = new MySqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringMySql"].ConnectionString);

            try
            {
                MySqlDataAdapter dataAdapter = new MySqlDataAdapter("sp_traerIdioma", conection);
                dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

                conection.Open();
                dataAdapter.Fill(archivo);
            }
            catch (Exception Ex)
            {
                throw Ex;
            }
            finally
            {
                if (conection != null)
                {
                    conection.Close();
                }
            }
            return archivo;
        }


        public void insertaridioma(String nombre, String terminacion)
        {


            DataTable insertar = new DataTable();
            MySqlConnection conection = new MySqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringMySql"].ConnectionString);

            try
            {
                MySqlDataAdapter dataAdapter = new MySqlDataAdapter("SP_CREAR_IDIOMA", conection);
                dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;
                dataAdapter.SelectCommand.Parameters.Add("_nombre", MySqlDbType.VarChar, 1000).Value = nombre;
                dataAdapter.SelectCommand.Parameters.Add("_terminacion", MySqlDbType.VarChar, 1000).Value = terminacion;
               


                conection.Open();
                dataAdapter.Fill(insertar);
            }
            catch (Exception Ex)
            {
                throw Ex;
            }
            finally
            {
                if (conection != null)
                {
                    conection.Close();
                }
            }

          


        }


        //para crear componentes
        public void crearcompo() 
        {

            DataTable insertar = new DataTable();
            MySqlConnection conection = new MySqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringMySql"].ConnectionString);

            try
            {
                MySqlDataAdapter dataAdapter = new MySqlDataAdapter("SP_CREAR_COMPONENTES", conection);
                dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

                conection.Open();
                dataAdapter.Fill(insertar);
            }
            catch (Exception Ex)
            {
                throw Ex;
            }
            finally
            {
                if (conection != null)
                {
                    conection.Close();
                }
            }
            
        }


        //traerformulariosddl
        public DataTable traerFormularios() // ddl de formularios
        {

            DataTable archivo = new DataTable();
            MySqlConnection conection = new MySqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringMySql"].ConnectionString);

            try
            {
                MySqlDataAdapter dataAdapter = new MySqlDataAdapter("SP_TRAER_FORMULARIOS", conection);
                dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

                conection.Open();
                dataAdapter.Fill(archivo);
            }
            catch (Exception Ex)
            {
                throw Ex;
            }
            finally
            {
                if (conection != null)
                {
                    conection.Close();
                }
            }
            return archivo;
        }
        


    }        


    }





