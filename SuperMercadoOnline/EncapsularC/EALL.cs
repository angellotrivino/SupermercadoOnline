using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace EncapsularC
{
    public class EALL
    {
        private string smtpClientString;

        public string SmtpClientString
        {
            get { return smtpClientString; }
            set { smtpClientString = value; }
        }


        private int port;

        public int Port
        {
            get { return port; }
            set { port = value; }
        }
        private string correoOrigen;

        public string CorreoOrigen
        {
            get { return correoOrigen; }
            set { correoOrigen = value; }
        }
        private string correoDestino;

        public string CorreoDestino
        {
            get { return correoDestino; }
            set { correoDestino = value; }
        }
        private string asunto;

        public string Asunto
        {
            get { return asunto; }
            set { asunto = value; }
        }

        private DateTime fecha;

        public DateTime Fecha
        {
            get { return fecha; }
            set { fecha = value; }
        }

        private string nulo;

        public string Nulo
        {
            get { return nulo; }
            set { nulo = value; }
        }
        private string descripcion;

        public string Descripcion
        {
            get { return descripcion; }
            set { descripcion = value; }
        }

        private int idCajero;

        public int IdCajero
        {
            get { return idCajero; }
            set { idCajero = value; }
        }

        private Int32 idPedido;

        public Int32 IdPedido
        {
            get { return idPedido; }
            set { idPedido = value; }
        }

        private Int32 idCliente;

        public Int32 IdCliente
        {
            get { return idCliente; }
            set { idCliente = value; }
        }
        private string login;

        public string Login
        {
            get { return login; }
            set { login = value; }
        }

        private string user;

        public string User
        {
            get { return user; }
            set { user = value; }
        }
        private string password;

        public string Password
        {
            get { return password; }
            set { password = value; }
        }

        private string nombre;

        public string Nombre
        {
            get { return nombre; }
            set { nombre = value; }
        }
        private string apellido;

        public string Apellido
        {
            get { return apellido; }
            set { apellido = value; }
        }

        private Int64 cedulaInt64;

        public Int64 CedulaInt64
        {
            get { return cedulaInt64; }
            set { cedulaInt64 = value; }
        }


        private Int32 cedula;

        private Int32 nit;

        public Int32 Nit
        {
            get { return nit; }
            set { nit = value; }
        }


        public Int32 Cedula
        {
            get { return cedula; }
            set { cedula = value; }
        }
        private string direccion;

        public string Direccion
        {
            get { return direccion; }
            set { direccion = value; }
        }
        private string email;

        public string Email
        {
            get { return email; }
            set { email = value; }
        }
        private string telefono;

        public string Telefono
        {
            get { return telefono; }
            set { telefono = value; }
        }

        private double precio;

        public double Precio
        {
            get { return precio; }
            set { precio = value; }
        }

        private int id;

        public int Id
        {
            get { return id; }
            set { id = value; }
        }

        private string logoUrl;

        public string LogoUrl
        {
            get { return logoUrl; }
            set { logoUrl = value; }
        }

        private Int32 idProveedor;

        public Int32 IdProveedor
        {
            get { return idProveedor; }
            set { idProveedor = value; }
        }
        private Int32 cantidad;

        public Int32 Cantidad
        {
            get { return cantidad; }
            set { cantidad = value; }
        }
        private Int32 idProducto;

        public Int32 IdProducto
        {
            get { return idProducto; }
            set { idProducto = value; }
        }

        private string nombreProducto;

        public string NombreProducto
        {
            get { return nombreProducto; }
            set { nombreProducto = value; }
        }

        private string nombreProveedor;

        public string NombreProveedor
        {
            get { return nombreProveedor; }
            set { nombreProveedor = value; }
        }

        private string mensaje;

        public string Mensaje
        {
            get { return mensaje; }
            set { mensaje = value; }
        }
    }
}
