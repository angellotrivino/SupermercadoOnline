using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Npgsql;
using NpgsqlTypes;
using System.Configuration;
using EncapsularC;
using UtilitarioC;
using System.Data;

namespace DataC
{
    public class DMaster
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
    }
}
