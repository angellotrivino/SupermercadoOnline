# SupermercadoOnline
Tienda Online, MVC, librerías de clases, en ASP.Net C#.


## ¿Qué muestra la aplicación?

En la Página web muestra diferentes formularios funcionales del SupermercadoOnline. En ``` cd SuperMercadoOnline/WebSite/Presentacion``` muestra los .aspx o formularios de cada rol de la aplicación como el administrador, cajero y cliente. El administrador puede agregar cajeros, productos, proveedores, etc., el cajero puede consultar los productos, generar el recibo, etc., y por ultimo el cliente agrega productos al carrito de compras, escribe un mensaje, etc.

También esta la carpeta .../LogicaPresentacion donde se almacena la logica o los aspx.cs de cada formulario. La carpeta .../Imagenes, .../Crystal donde se guardan la estructura de los reportes, por otro lado esta la pagina principal "_ index.apsx", etc.

En la ruta ``` cd SuperMercadoOnline``` muestra las librerías de clase que se utilizan por seguridad para el aplicativo como: DataC, EncapsularC, LogicaC, UtilitarioC. Además cuenta con:

 -Componentes de clases.
 -MutliIdioma.
 -Bloqueo de sesión (máximo 3 intentos) y Sesiones activas en 3 computadores (máximo).


La carpeta ``` cd Base_de_datos``` hay dos versiones realizadas en el Sistema Gestor de Base de datos (SGBD) MySQL y PostGreSQL, la primera contiene almacenado los datos de todos los componentes de los formularios y su tradución de español a ingles y viceversa, el segundo los demás datos requeridos.


## Configuración de la aplicación

Se debe cargar los archivos de las bases de datos mencionadas en en cada SGBD ya instaladas.

La Configuración de la conexion de la base de datos y el proyecto, se debe hacer en ``` cd SuperMercadoOnline/WebSite/web.config ```

Cambiar los valores host, port, user y password dependiendo de la configuración del SGBD, al momento de la instalación.

```
<connectionStrings>

  <add name="ConnectionStringMySql" connectionString="Database=bd_supermercado; User=isw1; Password='isw1'; Port=3306; Host=localhost"/>
  <add name="ConnectionStringNpgsql" connectionString="Database=bd_supermercadoonline; User=postgres; Password='admin'; Port=3307; Host=localhost"/>
</connectionStrings>

```

Y así!, ya debería poder ejecutarse el proyecto.
