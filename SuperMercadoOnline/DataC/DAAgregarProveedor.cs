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
   public class DAAgregarProveedor
    {
       EALL encap = new EALL();

       public DataTable ListarProveedores()
       {
           NpgsqlConnection objetoConexion = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringNpgsql"].ConnectionString);

           DataTable dataTable = new DataTable();
           try
           {
               NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("proveedores.f_listar_proveedores", objetoConexion);
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
       public DataTable ListarProductos()
       {
           NpgsqlConnection objetoConexion = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringNpgsql"].ConnectionString);

           DataTable dataTable = new DataTable();
           try
           {
               NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("productos.f_listar_productos", objetoConexion);
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
       public DataTable MostrarProveedor()
       {
           NpgsqlConnection objetoConexion = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringNpgsql"].ConnectionString);

           DataTable dataTable = new DataTable();

           try
           {
               NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("proveedores.f_mostrar_proveedor", objetoConexion);
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
       public DataTable productosProveedor(int proveedor_id)
       {
           NpgsqlConnection objetoConexion = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringNpgsql"].ConnectionString);

           DataTable dataTable = new DataTable();

           try
           {
               NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("productos.f_productos_proveedor", objetoConexion);
               dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;
               dataAdapter.SelectCommand.Parameters.Add("_id", NpgsqlDbType.Integer).Value = proveedor_id;

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

       public EALL ModificarProvedor(EALL user, string ipAddress, string MAC)
       {
           NpgsqlConnection objetoConexion = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringNpgsql"].ConnectionString);
           DataTable dataTable = new DataTable();

           try
           {
               NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("proveedores.f_modificar_proveedor", objetoConexion);
               dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

               dataAdapter.SelectCommand.Parameters.Add("_id_proveedor", NpgsqlDbType.Integer).Value = user.Nit;
               dataAdapter.SelectCommand.Parameters.Add("_nombre", NpgsqlDbType.Varchar, 45).Value = user.Nombre;
               dataAdapter.SelectCommand.Parameters.Add("_direccion", NpgsqlDbType.Varchar, 45).Value = user.Direccion;
               dataAdapter.SelectCommand.Parameters.Add("_telefono", NpgsqlDbType.Varchar, 45).Value = user.Telefono;
               dataAdapter.SelectCommand.Parameters.Add("_email", NpgsqlDbType.Varchar, 45).Value = user.Email;
               dataAdapter.SelectCommand.Parameters.Add("_logo", NpgsqlDbType.Varchar, 100).Value = user.LogoUrl;

               //dataAdapter.SelectCommand.Parameters.Add("_usser", NpgsqlDbType.Varchar, 45).Value = user.User;
               //dataAdapter.SelectCommand.Parameters.Add("_ip", NpgsqlDbType.Varchar, 100).Value = ipAddress;
               //dataAdapter.SelectCommand.Parameters.Add("_mac", NpgsqlDbType.Varchar, 100).Value = MAC;

               objetoConexion.Open();
               dataAdapter.Fill(dataTable);
           }
           catch (NpgsqlException ei) {

               encap.Nulo = "1";
           
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
           return encap;

       }

       public EALL InsertarProveedor(EALL user, string ipAddress, string MAC)
       {
           NpgsqlConnection objetoConexion = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringNpgsql"].ConnectionString);

           DataTable dataTable = new DataTable();

           try
           {
               NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("proveedores.f_insertar_proveedor", objetoConexion);
               dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

               dataAdapter.SelectCommand.Parameters.Add("_id", NpgsqlDbType.Integer).Value = user.Nit;
               dataAdapter.SelectCommand.Parameters.Add("_nombre", NpgsqlDbType.Varchar, 45).Value = user.Nombre;
               dataAdapter.SelectCommand.Parameters.Add("_direccion", NpgsqlDbType.Varchar, 45).Value = user.Direccion;
               dataAdapter.SelectCommand.Parameters.Add("_telefono", NpgsqlDbType.Varchar, 45).Value = user.Telefono;
               dataAdapter.SelectCommand.Parameters.Add("_email", NpgsqlDbType.Varchar, 45).Value = user.Email;
               dataAdapter.SelectCommand.Parameters.Add("_logo", NpgsqlDbType.Varchar, 100).Value = user.LogoUrl;

              // dataAdapter.SelectCommand.Parameters.Add("_usser", NpgsqlDbType.Varchar, 45).Value = user.User;
               //dataAdapter.SelectCommand.Parameters.Add("_ip", NpgsqlDbType.Varchar, 100).Value = ipAddress;
               //dataAdapter.SelectCommand.Parameters.Add("_mac", NpgsqlDbType.Varchar, 100).Value = MAC;

               objetoConexion.Open();
               dataAdapter.Fill(dataTable);
           }
           catch (NpgsqlException ei) {

               encap.Nulo = "1";
           
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
           return encap;
       }

       public void InsertarProductosProveedor(EALL user, string ipAddress, string MAC)
       {
           NpgsqlConnection objetoConexion = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringNpgsql"].ConnectionString);

           DataTable dataTable = new DataTable();

           try
           {
               NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("productos.f_insertar_producto_proveedor", objetoConexion);
               dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;
               dataAdapter.SelectCommand.Parameters.Add("_id_producto", NpgsqlDbType.Integer).Value = user.IdProducto;
               dataAdapter.SelectCommand.Parameters.Add("_id_proveedor", NpgsqlDbType.Integer).Value = user.IdProveedor;
               dataAdapter.SelectCommand.Parameters.Add("_nombre_producto", NpgsqlDbType.Varchar, 45).Value = user.NombreProducto;
               dataAdapter.SelectCommand.Parameters.Add("_nombre_proveedor", NpgsqlDbType.Varchar, 45).Value = user.NombreProveedor;
               dataAdapter.SelectCommand.Parameters.Add("_precio_producto", NpgsqlDbType.Double).Value = user.Precio;

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

       public void ModificarProductoProvedor(EALL user, string ipAddress, string MAC)
       {
           NpgsqlConnection objetoConexion = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringNpgsql"].ConnectionString);
           DataTable dataTable = new DataTable();

           try
           {
               NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("productos.f_modificar_producto_proveedor", objetoConexion);
               dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

               dataAdapter.SelectCommand.Parameters.Add("_id_producto", NpgsqlDbType.Integer).Value = user.IdProducto;
               dataAdapter.SelectCommand.Parameters.Add("_id_proveedor", NpgsqlDbType.Integer).Value = user.IdProveedor;
               dataAdapter.SelectCommand.Parameters.Add("_precio_producto", NpgsqlDbType.Double).Value = user.Precio;

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

       public void EliminarProductosProveedor(EALL user, string ipAddress, string MAC)
       {
           NpgsqlConnection objetoConexion = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringNpgsql"].ConnectionString);

           DataTable dataTable = new DataTable();

           try
           {
               NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("productos.f_eliminar_productos_proveedor", objetoConexion);
               dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;
               dataAdapter.SelectCommand.Parameters.Add("_id_producto", NpgsqlDbType.Integer).Value = user.IdProducto;
               dataAdapter.SelectCommand.Parameters.Add("_id_proveedor", NpgsqlDbType.Integer).Value = user.IdProveedor;

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

       public void EliminarProveedor(EALL user, string ipAddress, string MAC)
       {
           NpgsqlConnection objetoConexion = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringNpgsql"].ConnectionString);

           DataTable dataTable = new DataTable();

           try
           {
               NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("proveedores.f_eliminar_proveedor", objetoConexion);
               dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;
               dataAdapter.SelectCommand.Parameters.Add("_id_proveedor", NpgsqlDbType.Integer).Value = user.IdProveedor;

              // dataAdapter.SelectCommand.Parameters.Add("_usser", NpgsqlDbType.Varchar, 45).Value = user.User;
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
