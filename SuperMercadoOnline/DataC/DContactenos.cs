using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using EncapsularC;
using UtilitarioC;
using System.Data;
using Npgsql;
using NpgsqlTypes;
using System.Configuration;

namespace DataC
{
    public class DContactenos
    {
        EALL encap = new EALL();

        public EALL contactar(EALL user, string ipAddress, string MAC)
        {
            NpgsqlConnection objetoConexion = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringNpgsql"].ConnectionString);

            DataTable dataTable = new DataTable();

            try
            {
                NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("usuarios.f_contactar", objetoConexion);
                dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;
                dataAdapter.SelectCommand.Parameters.Add("_usuario", NpgsqlDbType.Text).Value = user.Nombre;
                dataAdapter.SelectCommand.Parameters.Add("_email", NpgsqlDbType.Text).Value = user.Email;
                dataAdapter.SelectCommand.Parameters.Add("_mensaje", NpgsqlDbType.Text).Value = user.Mensaje;
                //dataAdapter.SelectCommand.Parameters.Add("_id", NpgsqlDbType.Int32).Value = user.Id;
                //dataAdapter.SelectCommand.Parameters.Add("_usser", NpgsqlDbType.Text).Value = user.User;

                //dataAdapter.SelectCommand.Parameters.Add("_ip", NpgsqlDbType.Text).Value = ipAddress;
                //dataAdapter.SelectCommand.Parameters.Add("_mac", NpgsqlDbType.Text).Value = MAC;


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

    }
}
