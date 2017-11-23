using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Npgsql;
using NpgsqlTypes;
using System.Data;
using System.Configuration;
using System.Xml.Linq;

using EncapsularC;
using UtilitarioC;

namespace DataC
{
    public class DLogin
    {
        EALL encap = new EALL();
        public DataTable obtenerdatos(EALL datos, string ipAddress, string MAC){
            

            DataTable Usuario = new DataTable();
            NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringNpgsql"].ConnectionString);

            try
            {

                NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("usuarios.f_loggin", conection);
                dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;
                dataAdapter.SelectCommand.Parameters.Add("pass", NpgsqlDbType.Text).Value = datos.Password;
                dataAdapter.SelectCommand.Parameters.Add("nom", NpgsqlDbType.Text).Value = datos.User;
                //dataAdapter.SelectCommand.Parameters.Add("ip", NpgsqlDbType.Text).Value = ipAddress;
                //dataAdapter.SelectCommand.Parameters.Add("mac", NpgsqlDbType.Text).Value = MAC;

                dataAdapter.Fill(Usuario);
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
            return Usuario;
        
        
        }

        public DataTable MostrarUsuario()
        {
           
            NpgsqlConnection objetoConexion = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringNpgsql"].ConnectionString);

            DataTable dataTable = new DataTable();
            try
            {
                NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("usuarios.f_mostrar_usuario", objetoConexion);
                dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

                objetoConexion.Open();
                dataAdapter.Fill(dataTable);
            }
            catch (Exception e)
            {
                throw e;
            }
            finally
            {
                if (objetoConexion != null)
                {
                    objetoConexion.Close();
                }
            }
            return dataTable;
        }

        public EALL InsertarUsuario(EALL user, string ipAddress, string MAC)
        {
            

            NpgsqlConnection objetoConexion = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringNpgsql"].ConnectionString);

            DataTable dataTable = new DataTable();
            try
            {
                NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("usuarios.f_insertar_usuario", objetoConexion);
                dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

                dataAdapter.SelectCommand.Parameters.Add("_id", NpgsqlDbType.Integer).Value = user.Cedula;
                dataAdapter.SelectCommand.Parameters.Add("_nombres", NpgsqlDbType.Varchar, 45).Value = user.Nombre;
                dataAdapter.SelectCommand.Parameters.Add("_apellidos", NpgsqlDbType.Varchar, 45).Value = user.Apellido;
                dataAdapter.SelectCommand.Parameters.Add("_direccion", NpgsqlDbType.Varchar, 45).Value = user.Direccion;
                dataAdapter.SelectCommand.Parameters.Add("_telefono", NpgsqlDbType.Varchar, 45).Value = user.Telefono;
                dataAdapter.SelectCommand.Parameters.Add("_email", NpgsqlDbType.Varchar, 45).Value = user.Email;
                dataAdapter.SelectCommand.Parameters.Add("_id_tipo", NpgsqlDbType.Integer).Value = user.Id;
                dataAdapter.SelectCommand.Parameters.Add("_nick", NpgsqlDbType.Varchar, 45).Value = user.User;
                dataAdapter.SelectCommand.Parameters.Add("_pass", NpgsqlDbType.Varchar, 45).Value = user.Password;
                dataAdapter.SelectCommand.Parameters.Add("_imagen", NpgsqlDbType.Varchar, 100).Value = user.LogoUrl;

                //dataAdapter.SelectCommand.Parameters.Add("_ip", NpgsqlDbType.Varchar, 100).Value = ipAddress;
                //dataAdapter.SelectCommand.Parameters.Add("_mac", NpgsqlDbType.Varchar, 100).Value = MAC;

                objetoConexion.Open();
                dataAdapter.Fill(dataTable);
            }
            catch (NpgsqlException e)
            {
                encap.Nulo = "1";
            }
            finally
            {
                if (objetoConexion != null)
                {
                    objetoConexion.Close();
                }
            }
            return encap;
        }


        public DataTable limite_sesion(EALL datos)
        {


            DataTable Usuario = new DataTable();
            NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringNpgsql"].ConnectionString);

            try
            {

                NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("usuarios.f_limite_sesion", conection);
                dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;
                dataAdapter.SelectCommand.Parameters.Add("_id_usuario", NpgsqlDbType.Integer).Value = datos.Id;
                dataAdapter.SelectCommand.Parameters.Add("_opcion_cerrar", NpgsqlDbType.Integer).Value = datos.Port;

                dataAdapter.Fill(Usuario);
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
            return Usuario;


        }

        public DataTable sesion_intentos(EALL datos)
        {


            DataTable Usuario = new DataTable();
            NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringNpgsql"].ConnectionString);

            try
            {

                NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("usuarios.f_sesion_intentos", conection);
                dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;
                dataAdapter.SelectCommand.Parameters.Add("_nick_usuario", NpgsqlDbType.Text).Value = datos.User;

                dataAdapter.Fill(Usuario);
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
            return Usuario;


        }

        public DataTable obtener_intentos_sesion(EALL datos)
        {
            DataTable Usuario = new DataTable();
            NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringNpgsql"].ConnectionString);

            try
            {

                NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("usuarios.f_obtener_intentos_sesion", conection);
                dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;
                dataAdapter.SelectCommand.Parameters.Add("_id_usuario", NpgsqlDbType.Integer).Value = datos.Id;

                dataAdapter.Fill(Usuario);
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
            return Usuario;


        }

        public DataTable liberar_sesion(EALL datos)
        {
            DataTable Usuario = new DataTable();
            NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringNpgsql"].ConnectionString);

            try
            {

                NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("usuarios.f_liberar_sesion", conection);
                dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;
                dataAdapter.SelectCommand.Parameters.Add("_id_usuario", NpgsqlDbType.Integer).Value = datos.Id;

                dataAdapter.Fill(Usuario);
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
            return Usuario;


        }
       
    
    }

}
