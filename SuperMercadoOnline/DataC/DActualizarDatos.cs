using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Npgsql;
using NpgsqlTypes;
using System.Configuration;
using System.Data;
using EncapsularC;
using UtilitarioC;

namespace DataC
{
    public class DActualizarDatos
    {
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
            catch (NpgsqlException e)
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

        public void ModificarUsuario(EALL user, string ipAddress,string MAC)
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

              //  dataAdapter.SelectCommand.Parameters.Add("_usser", NpgsqlDbType.Varchar, 100).Value = user.User;
               // dataAdapter.SelectCommand.Parameters.Add("_ip", NpgsqlDbType.Varchar, 100).Value = ipAddress;
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
    }
}
