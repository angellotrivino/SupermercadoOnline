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
    public class DAUtilidad
    {
        public DataTable MostrarUtilidad()
        {
            NpgsqlConnection objetoConexion = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringNpgsql"].ConnectionString);

            DataTable dataTable = new DataTable();
            try
            {
                NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("facturas.f_utilidad", objetoConexion);
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
    }
}
