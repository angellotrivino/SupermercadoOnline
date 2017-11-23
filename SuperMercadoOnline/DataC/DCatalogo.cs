using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using Npgsql;
using NpgsqlTypes;
using System.Configuration;

namespace DataC
{
    public class DCatalogo
    {

        public DataTable obtenerProductos(String filtro)
        {

            NpgsqlConnection dataConnection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringNpgsql"].ConnectionString);
            DataTable dataTable = new DataTable();
            try
            {
                NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("productos.f_obtener_productos", dataConnection);
                dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;
                dataAdapter.SelectCommand.Parameters.Add("_filtro", NpgsqlDbType.Text).Value = filtro;

                dataConnection.Open();
                dataAdapter.Fill(dataTable);
            }
            catch (Exception e)
            {
                throw e;
            }
            finally
            {
                if (dataConnection != null)
                {
                    dataConnection.Close();
                }
            }
            return dataTable;
        }
    }
}
