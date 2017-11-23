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
    public class DClienteRecibo
    {
        public DataTable ClientePedido(int idCliente)
        {
            NpgsqlConnection objetoConexion = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringNpgsql"].ConnectionString);

            DataTable dataTable = new DataTable();

            try
            {
                NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("pedidos.f_cliente_pedidos", objetoConexion);
                dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;
                dataAdapter.SelectCommand.Parameters.Add("_id_cliente", NpgsqlDbType.Integer).Value = idCliente;


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

        public DataTable FiltroClientePedido(DateTime _filtro, int idCliente)
        {
            NpgsqlConnection objetoConexion = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringNpgsql"].ConnectionString);

            DataTable dataTable = new DataTable();

            try
            {
                NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("pedidos.f_filtro_cliente_pedidos", objetoConexion);
                dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;
                dataAdapter.SelectCommand.Parameters.Add("_filtro_fecha", NpgsqlDbType.Timestamp).Value = _filtro;
                dataAdapter.SelectCommand.Parameters.Add("_id_cliente", NpgsqlDbType.Integer).Value = idCliente;


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
