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
     public  class DClienteProductos
    {
         EALL encap = new EALL();

         public DataTable obtenerProductos(String filtro)
         {
             NpgsqlConnection dataConnection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringNpgsql"].ConnectionString);
             DataTable dataTable = new DataTable();
             try
             {
                 NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("productos.f_obtener_productos", dataConnection);
                 dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;
                 dataAdapter.SelectCommand.Parameters.Add("_filtro", NpgsqlDbType.Varchar, 50).Value = filtro;


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

         public DataTable CarritoLiberarProductos()
         {
             NpgsqlConnection objetoConexion = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringNpgsql"].ConnectionString);

             DataTable dataTable = new DataTable();

             try
             {
                 NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("pedidos.f_carrito_liberar_productos", objetoConexion);
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

         public void LiberarProductos(EALL dato)
         {
             NpgsqlConnection objetoConexion = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringNpgsql"].ConnectionString);

             DataTable dataTable = new DataTable();

             try
             {
                 NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("productos.f_liberar_productos", objetoConexion);
                 dataAdapter.SelectCommand.Parameters.Add("_id_pedido", NpgsqlDbType.Integer).Value = dato.Id;
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
         }

         public DataTable MostrarProductos()
         {
             NpgsqlConnection objetoConexion = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringNpgsql"].ConnectionString);

             DataTable dataTable = new DataTable();
             try
             {
                 NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("productos.f_mostrar_productos_disponibles", objetoConexion);
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

         public EALL insertarpedidoproducto(EALL user, string ipAddress, string MAC)
         {
             NpgsqlConnection objetoConexion = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringNpgsql"].ConnectionString);

             DataTable dataTable = new DataTable();

             try
             {
                 NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("pedidos.f_pedido_producto", objetoConexion);
                 dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;
                 dataAdapter.SelectCommand.Parameters.Add("_id", NpgsqlDbType.Integer).Value = user.Id;
                 dataAdapter.SelectCommand.Parameters.Add("_id_producto", NpgsqlDbType.Integer).Value = user.IdProducto;
                 dataAdapter.SelectCommand.Parameters.Add("_id_proveedor", NpgsqlDbType.Integer).Value = user.IdProveedor;
                 dataAdapter.SelectCommand.Parameters.Add("_cantidad", NpgsqlDbType.Integer).Value = user.Cantidad;

                // dataAdapter.SelectCommand.Parameters.Add("_usser", NpgsqlDbType.Varchar, 45).Value = user.User;
                // dataAdapter.SelectCommand.Parameters.Add("_ip", NpgsqlDbType.Varchar, 100).Value = ipAddress;
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
    }
}
