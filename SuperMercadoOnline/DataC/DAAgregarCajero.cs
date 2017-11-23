using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Configuration;
using Npgsql;
using NpgsqlTypes;
using EncapsularC;
using UtilitarioC;

namespace DataC
{
   public class DAAgregarCajero
    {

       EALL encap = new EALL();

       public DataTable ListarCajeros()
       {
           NpgsqlConnection objetoConexion = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringNpgsql"].ConnectionString);

           DataTable dataTable = new DataTable();
           try
           {
               NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("usuarios.f_listar_cajeros", objetoConexion);
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

       public DataTable MostrarCajeros()
       {

           NpgsqlConnection objetoConexion = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringNpgsql"].ConnectionString);

           DataTable dataTable = new DataTable();
           try
           {
               NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("usuarios.f_mostrar_cajeros", objetoConexion);
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


       public EALL InsertarCajero(EALL user, string ipAddress, string MAC)
       {


           NpgsqlConnection objetoConexion = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringNpgsql"].ConnectionString);

           DataTable dataTable = new DataTable();
           try
           {
               NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("usuarios.f_insertar_cajero", objetoConexion);
               dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

               dataAdapter.SelectCommand.Parameters.Add("_id", NpgsqlDbType.Integer).Value = user.Cedula;
               dataAdapter.SelectCommand.Parameters.Add("_nombres", NpgsqlDbType.Varchar, 45).Value = user.Nombre;
               dataAdapter.SelectCommand.Parameters.Add("_apellidos", NpgsqlDbType.Varchar, 45).Value = user.Apellido;
               dataAdapter.SelectCommand.Parameters.Add("_direccion", NpgsqlDbType.Varchar, 45).Value = user.Direccion;
               dataAdapter.SelectCommand.Parameters.Add("_telefono", NpgsqlDbType.Varchar, 45).Value = user.Telefono;
               dataAdapter.SelectCommand.Parameters.Add("_email", NpgsqlDbType.Varchar, 45).Value = user.Email;
               dataAdapter.SelectCommand.Parameters.Add("_idTipo", NpgsqlDbType.Integer).Value = user.Id;
               dataAdapter.SelectCommand.Parameters.Add("_nick", NpgsqlDbType.Varchar, 45).Value = user.Login;
               dataAdapter.SelectCommand.Parameters.Add("_pass", NpgsqlDbType.Varchar, 45).Value = user.Password;
               dataAdapter.SelectCommand.Parameters.Add("_imagen", NpgsqlDbType.Varchar, 100).Value = user.LogoUrl;

              // dataAdapter.SelectCommand.Parameters.Add("_usser", NpgsqlDbType.Varchar, 100).Value = user.User;
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

       public void ModificarCajero(EALL user, string ipAddress, string MAC)
       {
           NpgsqlConnection objetoConexion = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringNpgsql"].ConnectionString);

           DataTable dataTable = new DataTable();
           try
           {
               NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("usuarios.f_modificar_usuario", objetoConexion);
               dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

               dataAdapter.SelectCommand.Parameters.Add("_id", NpgsqlDbType.Integer).Value = user.Cedula;
               dataAdapter.SelectCommand.Parameters.Add("_nombres", NpgsqlDbType.Varchar, 45).Value = user.Nombre;
               dataAdapter.SelectCommand.Parameters.Add("_apellidos", NpgsqlDbType.Varchar, 45).Value = user.Apellido;
               dataAdapter.SelectCommand.Parameters.Add("_direccion", NpgsqlDbType.Varchar, 45).Value = user.Direccion;
               dataAdapter.SelectCommand.Parameters.Add("_telefono", NpgsqlDbType.Varchar, 45).Value = user.Telefono;
               dataAdapter.SelectCommand.Parameters.Add("_email", NpgsqlDbType.Varchar, 45).Value = user.Email;
               dataAdapter.SelectCommand.Parameters.Add("_nick", NpgsqlDbType.Varchar, 45).Value = user.Login;
               dataAdapter.SelectCommand.Parameters.Add("_pass", NpgsqlDbType.Varchar, 45).Value = user.Password;
               dataAdapter.SelectCommand.Parameters.Add("_imagen", NpgsqlDbType.Varchar, 100).Value = user.LogoUrl;

              // dataAdapter.SelectCommand.Parameters.Add("_usser", NpgsqlDbType.Varchar, 100).Value = user.User;
               
               //dataAdapter.SelectCommand.Parameters.Add("_ip", NpgsqlDbType.Varchar, 100).Value = ipAddress;
              // dataAdapter.SelectCommand.Parameters.Add("_mac", NpgsqlDbType.Varchar, 100).Value = MAC;

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
       }

       public void EliminarCajero(EALL user, string ipAddress, string MAC)
       {
           NpgsqlConnection objetoConexion = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringNpgsql"].ConnectionString);

           DataTable dataTable = new DataTable();

           try
           {
               NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("usuarios.f_eliminar_usuario", objetoConexion);
               dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;
               dataAdapter.SelectCommand.Parameters.Add("_id_usuario", NpgsqlDbType.Integer).Value = user.IdCajero;

               //dataAdapter.SelectCommand.Parameters.Add("_usser", NpgsqlDbType.Varchar, 45).Value = user.User;
               //dataAdapter.SelectCommand.Parameters.Add("_ip", NpgsqlDbType.Varchar, 100).Value = ipAddress;
               //dataAdapter.SelectCommand.Parameters.Add("_mac", NpgsqlDbType.Varchar, 100).Value = MAC;
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
       }
    }
}
