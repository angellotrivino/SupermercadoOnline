using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using Npgsql;
using NpgsqlTypes;
using System.Configuration;
using EncapsularC;
using UtilitarioC;

namespace DataC
{
    public class DAAdquirirProducto
    {

        public DataTable RelacionProductoProveedor()
        {
            NpgsqlConnection objetoConexion = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringNpgsql"].ConnectionString);

            DataTable dataTable = new DataTable();

            try
            {
                NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("productos.f_relacion_producto_proveedor", objetoConexion);
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

        public void AdquirirProducto(EALL user, string ipAddress, string MAC)
        {
            NpgsqlConnection objetoConexion = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringNpgsql"].ConnectionString);

            DataTable dataTable = new DataTable();
            try
            {
                NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("productos.f_adquirir_productos", objetoConexion);
                dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

                dataAdapter.SelectCommand.Parameters.Add("_id_producto_proveedor", NpgsqlDbType.Integer).Value = user.Id;
                dataAdapter.SelectCommand.Parameters.Add("_precio_producto_v", NpgsqlDbType.Double).Value = user.Precio;
                dataAdapter.SelectCommand.Parameters.Add("_cantidad_producto", NpgsqlDbType.Integer).Value = user.Cantidad;

                //dataAdapter.SelectCommand.Parameters.Add("_usser", NpgsqlDbType.VarChar, 45).Value = user.User;
                //dataAdapter.SelectCommand.Parameters.Add("_ip", NpgsqlDbType.VarChar, 100).Value = ipAddress;
                //dataAdapter.SelectCommand.Parameters.Add("_mac", NpgsqlDbType.VarChar, 100).Value = MAC;

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
