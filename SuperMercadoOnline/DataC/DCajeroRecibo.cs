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
    public class DCajeroRecibo
    {
        public DataTable ReciboCajero(EALL user)
        {
            NpgsqlConnection objetoConexion = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringNpgsql"].ConnectionString);

            DataTable dataTable = new DataTable();

            try
            {
                NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("facturas.f_recibo_cajero", objetoConexion);
                dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;
                dataAdapter.SelectCommand.Parameters.Add("_id_vendedor", NpgsqlDbType.Integer).Value = user.IdCajero;
                dataAdapter.SelectCommand.Parameters.Add("_id_cliente", NpgsqlDbType.Integer).Value = user.IdCliente;


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
        public DataTable ReciboCliente(EALL user)
        {
            NpgsqlConnection objetoConexion = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringNpgsql"].ConnectionString);

            DataTable dataTable = new DataTable();

            try
            {
                NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("facturas.f_recibo_cliente", objetoConexion);
                dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;
                dataAdapter.SelectCommand.Parameters.Add("_id_vendedor", NpgsqlDbType.Integer).Value = user.IdCajero;
                dataAdapter.SelectCommand.Parameters.Add("_id_vliente", NpgsqlDbType.Integer).Value = user.IdCliente;


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
