/*
SQLyog Enterprise - MySQL GUI v8.1
MySQL - 6.0.11-alpha-community : Database - bd_supermercado
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`bd_supermercado` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `bd_supermercado`;

/*Table structure for table `componentes` */

DROP TABLE IF EXISTS `componentes`;

CREATE TABLE `componentes` (
  `id_componentes` int(11) NOT NULL AUTO_INCREMENT,
  `id_formulario` int(11) DEFAULT NULL,
  `componente` varchar(1000) DEFAULT NULL,
  `texto` varchar(1000) DEFAULT NULL,
  `id_idioma` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_componentes`)
) ENGINE=InnoDB AUTO_INCREMENT=1499 DEFAULT CHARSET=latin1;

/*Data for the table `componentes` */

insert  into `componentes`(id_componentes,id_formulario,componente,texto,id_idioma) values (1,2,'B_InsertarProductos','Insertar Productos y Eliminar',1),(2,2,'B_InsertarProductos','Insert Product and remove',2),(3,2,'B_InsertarProveedores','Insertar, Modificar, Eliminar Proveedor',1),(4,2,'B_InsertarProveedores','Insert, modify, remove supplier',2),(5,2,'B_AdquirirProducto','Adquirir Producto Proveedor',1),(6,2,'B_AdquirirProducto','purchase product supplier',2),(7,2,'B_GenerarReportes','Generar Reporte',1),(8,2,'B_GenerarReportes','Generate Report',2),(9,2,'B_Cajeros','Insertar, Modificar, Eliminar Cajero',1),(10,2,'B_Cajeros','Insert, Modify, remove cashier',2),(11,2,'B_ActualizarDatos','Actualizar Datos',1),(12,2,'B_ActualizarDatos','Update data',2),(13,2,'B_MensajesClientes','Mensajes',1),(14,2,'B_MensajesClientes','Messages',2),(15,3,'L_TituloAdquiProdu','ADQUIRIR PRODUCTO \"POR QUE FALTAN PRODUCTOS EN EL INVENTARIO\"',1),(16,3,'L_TituloAdquiProdu','get product \'\' because missing products in the inventory \"',2),(17,3,'Logo Proveedor','Logo Proveedor',1),(18,3,'Logo Proveedor','supplier logo',2),(19,3,'Nombre Proveedor','Nombre Proveedor',1),(20,3,'Nombre Proveedor','name supplier ',2),(21,3,'Imagen Producto','Imagen Producto',1),(22,3,'Imagen Producto','Image Product',2),(23,3,'Nombre Producto','Nombre Producto',1),(24,3,'Nombre Producto','Name Product',2),(25,3,'Precio Compra','Precio compra',1),(26,3,'Precio Compra','purchase price',2),(27,3,'Precio Venta','Precio Venta',1),(28,3,'Precio Venta','sale price',2),(29,3,'Unidades','Unidades',1),(30,3,'Unidades','units',2),(31,3,'Opciones','Opciones',1),(32,3,'Opciones','options',2),(33,3,'LB_Actualizar','Actualizar',1),(34,3,'LB_Actualizar','Update',2),(35,3,'LB_Cancelar','Cancelar',1),(36,3,'LB_Cancelar','Cancel',2),(37,3,'LB_Editar','Editar',1),(38,3,'LB_Editar','Edit',2),(39,3,'mensaje1','Se ha adquirido el producto correctamnte',1),(40,3,'mensaje1','This product has been loaded successfully',2),(41,3,'mensaje2','Error al adquirir el producto, intentelo de nuevo',1),(42,3,'mensaje2','Failed to purchase, try again',2),(43,4,'B_Modificar','Modificar',1),(44,4,'B_Modificar','Update',2),(45,4,'L_TituloAgreModCaj','AGREGAR Y MODIFICAR CAJERO ',1),(46,4,'L_TituloAgreModCaj','Add and modify cashier',2),(47,4,'L_ModCaj','Modificar Cajero',1),(48,4,'L_ModCaj','Update cashier',2),(49,4,'L_TituloAgreCajero','AGREGAR Y ACTUALIZAR CAJERO',1),(50,4,'L_TituloAgreCajero','Add and update cashier',2),(51,4,'L_Cedula','Numero de cedula',1),(52,4,'L_Cedula','Identification number',2),(53,4,'REV_CedulaNumeros','Solo numeros',1),(54,4,'REV_CedulaNumeros','Only numbers',2),(55,4,'L_Nombres','Nombre',1),(56,4,'L_Nombres','Name',2),(57,4,'REV_NombresLetras','Solo letras ',1),(58,4,'REV_NombresLetras','Only letters ',2),(59,4,'L_Apellidos','Apellidos',1),(60,4,'L_Apellidos','Last name',2),(61,4,'REV_ApellidosLetras','Solo letras ',1),(62,4,'REV_ApellidosLetras','Only letters ',2),(63,4,'L_Direccion','Direccion de residencia ',1),(64,4,'L_Direccion','Address',2),(65,4,'L_Correo','Correo electronico ',1),(66,4,'L_Correo','E-mail',2),(67,4,'REV_correo','Correo invalido. Ejemplo: nombre@direccion.co',1),(68,4,'REV_correo','E-mail failed. Example: name@mail.com',2),(69,4,'L_Telefono','Telefono',1),(70,4,'L_Telefono','Telephone',2),(71,4,'REV_TelefonoNumeros','Solo numeros ',1),(72,4,'REV_TelefonoNumeros','Only numbers',2),(73,4,'L_ContraseñaN','Contraseña nueva ',1),(74,4,'L_ContraseñaN','New password ',2),(75,4,'L_ContraseñaNConf','Confirmar contraseña nueva ',1),(76,4,'L_ContraseñaNConf','Confirm password',2),(77,4,'L_Imagen','Imagen ',1),(78,4,'L_Imagen','Image',2),(79,4,'L_Login','Usuario(Login)',1),(80,4,'L_Login','User (Login)',2),(81,4,'B_Actualizar','Actualizar',1),(82,4,'B_Actualizar','Update',2),(83,4,'B_Cancelar','Cancelar',1),(84,4,'B_Cancelar','Cancel',2),(85,4,'B_AgregarCajero','Agregar cajero',1),(86,4,'B_AgregarCajero','Add cashier',2),(87,4,'L_TituloMostElimCajero','Mostrar y eliminar cajero ',1),(88,4,'L_TituloMostElimCajero','showing and clearing cashier ',2),(89,4,'Codigo','Codigo',1),(90,4,'Codigo','Code',2),(91,4,'Imagen','Imagen',1),(92,4,'Imagen','Image',2),(93,4,'Nombres','Nombres',1),(94,4,'Nombres','Name',2),(95,4,'Apellidos','Apellidos',1),(96,4,'Apellidos','Last name',2),(97,4,'Direccion','Direccion',1),(98,4,'Direccion','Address',2),(99,4,'Telefono','Telefono',1),(100,4,'Telefono','Telephone',2),(101,4,'Correo','Correo',1),(102,4,'Correo','E-mail',2),(103,4,'Usuario','Usuario',1),(104,4,'Usuario','User',2),(105,4,'Contraseña','Contraseña',1),(106,4,'Contraseña','Password',2),(107,4,'Eliminar','Eliminar',1),(108,4,'Eliminar','Remove',2),(109,4,'LB_Eliminar','Eliminar',1),(110,4,'LB_Eliminar','Remove',2),(111,4,'mensaje1','Ese usuario(Login)',1),(113,4,'mensaje1','This User(Login)',2),(114,4,'mensaje2','ya se esta registrado, digite otro',1),(115,4,'mensaje2','already registered, another Digitel',2),(116,4,'mensaje3','Las contraseñas no coinciden',1),(117,4,'mensaje3','the passwords don\'t match',2),(118,4,'mensaje4','No se admite ese tipo de imagen o archivo',1),(120,4,'mensaje4','This type of image file or is not supported',2),(121,4,'mensaje5','Este usuario(Login) con numero de cedula',1),(122,4,'mensaje5','This user (Login) with identification number',2),(123,4,'mensaje6','ya esta resgistrado',1),(124,4,'mensaje6','already registered',2),(125,4,'mensaje7','Se ha registrado correctamente el cajero',1),(126,4,'mensaje7','You have successfully registered the cashier',2),(127,4,'mensaje8','No se ha podido registrar el usuario, intentelo de nuevo',1),(128,4,'mensaje8','Failed TO register the USER, try again',2),(129,4,'mensaje9','Ese usuario(Login)',1),(130,4,'mensaje9 ','This user (Login)',2),(131,4,'mensaje10','ya se esta registrado, digite otro',1),(132,4,'mensaje10','already registered, another Digitel',2),(133,4,'mensaje11','Las contraseñas no coinciden',1),(134,4,'mensaje11','the Passwords don\'t match',2),(135,4,'mensaje12','No se ha eliminado correctamente',1),(136,4,'mensaje12','It has not been removed correctly',2),(137,4,'mensaje13','No se admite ese tipo de imagen o archivo',1),(138,4,'mensaje13','This type of image file or is not supported',2),(139,4,'mensaje14','El cajero',1),(140,4,'mensaje14','The cashier',2),(141,4,'mensaje15','ha sido actualizado correctamente',1),(142,4,'mensaje15','It has been updated successfully',2),(143,4,'mensaje16','Error al modificar el Cajero',1),(144,4,'mensaje16','Failed to modify the Cashier',2),(145,4,'mensaje17','No se ha eliminado correctamente el cajero',1),(146,4,'mensaje17','NO cashier successfully removed',2),(147,4,'mensaje18','El Cajero ha sido eliminado Corectamente',1),(148,4,'mensaje18','The cashier has been successfully removed',2),(149,4,'mensaje19','El cajero no ha sido eliminado Corectamente',1),(150,4,'mensaje19','The cashier has not been removed correctly',2),(151,5,'L_TituloIngProd','INGRESAR NUEVO PRODUCTO',1),(152,5,'L_TituloIngProd','enter new product',2),(153,5,'L_TituloModProd','MODIFICAR PRODUCTO',1),(154,5,'L_TituloModProd','UPDATE PRODUCT',2),(155,5,'B_Modificar','Modificar',1),(156,5,'B_Modificar','Update',2),(157,5,'L_TituloActualizar','INGRESAR Y ACTUALIZAR PRODUCTO',1),(158,5,'L_TituloActualizar','access and update product',2),(159,5,'L_Codigo','Codigo',1),(160,5,'L_Codigo','Code',2),(161,5,'REV_NumerosCodigo','Solo numero',1),(162,5,'REV_NumerosCodigo','Only numbers',2),(163,5,'L_Nombre','Nombre',1),(164,5,'L_Nombre','Name',2),(165,5,'L_Imagen','Imagen',1),(166,5,'L_Imagen','Image',2),(167,5,'RFV_FUProducto','Falta la imagen',1),(168,5,'RFV_FUProducto','without image',2),(169,5,'L_Descripcion','Descripcion',1),(170,5,'L_Descripcion','Description',2),(171,5,'B_NProducto','Guardar Producto',1),(172,5,'B_NProducto','Save Product',2),(173,5,'B_Actualizar','Actualizar',1),(174,5,'B_Actualizar','Update',2),(175,5,'B_Cancelar','Cancelar',1),(176,5,'B_Cancelar','Cancel',2),(177,5,'L_tituloMostElimiProd','MOSTRAR Y ELIMINAR PRODUCTOS',1),(178,5,'L_tituloMostElimiProd','SHOW AND REMOVE PRODUCTS',2),(179,5,'L_TituloNombre','NOMBRE',1),(180,5,'L_TituloNombre','NAME',2),(181,5,'L_TituloCodigo','CODIGO',1),(182,5,'L_TituloCodigo','CODE',2),(183,5,'mensaje1','No se admite ese tipo de imagen o archivo',1),(184,5,'mensaje1','This type of image file or is not supported',2),(185,5,'mensaje2','Este producto ',1),(186,5,'mensaje2','This Product ',2),(187,5,'mensaje3',', con codigo ',1),(188,5,'mensaje3',', with code ',2),(189,5,'mensaje4',', ya esta resgistrado ',1),(190,5,'mensaje4',', already register ',2),(191,5,'mensaje5','Se ha registrado correctamente ',1),(192,5,'mensaje5','It has been recorded correctly ',2),(193,5,'mensaje6','Error al insertar el producto ',1),(194,5,'mensaje6','Failed to insert the product ',2),(195,5,'mensaje7',', intentelo de nuevo ',1),(196,5,'mensaje7',', Try again ',2),(197,5,'mensaje8','No se admite ese tipo de imagen o archivo, ',1),(198,5,'mensaje8','This image or file type is not supported, ',2),(199,5,'mensaje9','No se ha cambiado correctamente el producto ',1),(200,5,'mensaje9','The product could not be changed correctly ',2),(201,5,'mensaje10',', intentelo de nuevo ',1),(202,5,'mensaje10',', try again ',2),(203,5,'mensaje11','Se ha modificado correctamente',1),(204,5,'mensaje11','It has been successfully changed',2),(205,5,'mensaje12','Error al modificar el producto ',1),(206,5,'mensaje12','Failed to modify the product ',2),(207,5,'mensaje13',', intentelo de nuevo',1),(208,5,'mensaje13',', Try again ',2),(209,5,'mensaje14','Se ha eliminado correctamente el producto: ',1),(210,5,'mensaje14','You have successfully removed the product: ',2),(211,5,'mensaje15','No se ha eliminado el producto: ',1),(212,5,'mensaje15','It has NOT removed the product: ',2),(213,5,'mensaje16',', intente de nuevo',1),(214,5,'mensaje16',', Try again',2),(215,6,'L_TituloAgreModProov','AGREGAR Y MODIFICAR PROVEEDOR ',1),(216,6,'L_TituloAgreModProov','ADD AND MODIFY PROVIDER',2),(217,6,'L_ModProov','MODIFICAR PROVEEDOR ',1),(218,6,'L_ModProov','UPDATE PROVIDER',2),(219,6,'B_Modificar','Modificar',1),(220,6,'B_Modificar','Modify',2),(221,6,'L_TituloActualizarProve','AGREGAR Y ACTUALIZAR PROVEEDOR ',1),(222,6,'L_TituloActualizarProve','ADD AND UPDATE PROVIDER',2),(223,6,'L_Nit','NIT',1),(224,6,'L_Nit','NIT',2),(225,6,'REV_NumerosNit','Solo numeros',1),(226,6,'REV_NumerosNit','Only numbers',2),(227,6,'L_Nombre','Nombre',1),(228,6,'L_Nombre','Nombre',2),(229,6,'L_EMail','E-Mail',1),(230,6,'L_EMail','E-Mail',2),(231,6,'REV_Correo','Ej: motas@mail.co',1),(232,6,'REV_Correo','Ej: motas@mail.co',2),(233,6,'L_Direccion','Direccion',1),(234,6,'L_Direccion','Address',2),(235,6,'L_Imagen','Imagen',1),(236,6,'L_Imagen','Image',2),(237,6,'L_Telefono','Telefono',1),(238,6,'L_Telefono','Telephone',2),(239,6,'REV_Telefono','Numero de telefono de 10 digitos',1),(240,6,'REV_Telefono','Telephone number of 10 digits',2),(241,6,'B_Actualizar','Actualizar',1),(242,6,'B_Actualizar','Update',2),(243,6,'B_Cancelar','Cancelar',1),(244,6,'B_Cancelar','Cancele',2),(245,6,'B_AgregarProveedor','Agregar Producto',1),(246,6,'B_AgregarProveedor','Add Product',2),(247,6,'L_TituloAgreProdProve','AGREGAR RELACION DE PRODUCTOS CON PROVEEDOR',1),(248,6,'L_TituloAgreProdProve','ADD RELATION OF PRODUCTS WITH PROVIDER',2),(249,6,'L_Producto','Producto: ',1),(250,6,'L_Producto','Product: ',2),(251,6,'L_PrecioProdProv','Precio Producto Proveedor:',1),(252,6,'L_PrecioProdProv','Price Product Provider:',2),(253,6,'REV_NumerosPrecioPrProv','Solo numeros y decimales (,)',1),(254,6,'REV_NumerosPrecioPrProv','Only numbers and decimals (,)',2),(255,6,'L_Proveedor','Proveedor',1),(256,6,'L_Proveedor','Provider',2),(257,6,'B_AgregarProducto','Agregar Producto',1),(258,6,'B_AgregarProducto','Add Product',2),(259,6,'L_TituloMostProveYProducProve','MOSTRAR PROVEEDOR Y SELECCIONE PARA MOSTRAR LA RELACION PRODUCTO CON PROVEEDOR',1),(260,6,'L_TituloMostProveYProducProve','SHOW PROVIDER AND SELECT PRODUCT TO SHOW THE RELATION WITH PROVIDER',2),(261,6,'Seleccione','Seleccione',1),(262,6,'Seleccione','Select',2),(263,6,'Imagen','Imagen',1),(264,6,'Imagen','Image',2),(265,6,'Nombre','Nombre',1),(266,6,'Nombre','Name',2),(267,6,'Direccion','Direccion',1),(268,6,'Direccion','address',2),(269,6,'Telefono','Telefono',1),(270,6,'Telefono','Telephone',2),(271,6,'EMail','EMail',1),(272,6,'EMail','EMail',2),(273,6,'Eliminar','Eliminar',1),(274,6,'Eliminar','Remove',2),(275,6,'L_TituloPrecioProductoMod','Precio a Modificar',1),(276,6,'L_TituloPrecioProductoMod','Price a Modify',2),(277,6,'DL_REV_NumerosProducto','Solo numeros y decimales (,)',1),(278,6,'DL_REV_NumerosProducto','Only numbers and decimals (,)',2),(279,6,'LB_ActualizarPrecio','Actualizar Precio',1),(280,6,'LB_ActualizarPrecio','Update Price',2),(281,6,'LB_EliminarProducto','Eliminar Producto',1),(282,6,'LB_EliminarProducto','Remove Product',2),(289,6,'mensaje1','No se ha eliminado correctamente',1),(290,6,'mensaje1','It has not been removed correctly',2),(291,6,'mensaje2','No se admite ese tipo de imagen o archivo, ',1),(292,6,'mensaje2','This image or file type is not supported, ',2),(293,6,'mensaje3','El proveedor',1),(294,6,'mensaje3','The provider',2),(295,6,'mensaje4','ha sido Actualizado Corectamente',1),(296,6,'mensaje4','It has been updated successfully',2),(297,6,'mensaje5','Error al modificar el Proveedor',1),(298,6,'mensaje5','Failed to modify the Provider',2),(299,6,'mensaje6','No se admite ese tipo de imagen o archivo',1),(300,6,'mensaje6','This type of image file or is not supported,',2),(301,6,'mensaje7','Este proveedor',1),(302,6,'mensaje7','This provider',2),(303,6,'mensaje8',',con codigo: ',1),(304,6,'mensaje8',',withe code: ',2),(305,6,'mensaje9',',ya esta resgistrado',1),(306,6,'mensaje9',',already register',2),(307,6,'mensaje10','Se ha registrado correctamente el proveedor: ',1),(308,6,'mensaje10','You have successfully registered provider: ',2),(309,6,'mensaje11','Error al insertar el proveedor ',1),(310,6,'mensaje11','Failed to insert the provider',2),(311,6,'mensaje12',', intentelo de nuevo',1),(312,6,'mensaje12',', Try again',2),(313,6,'mensaje13','No se ha eliminado correctamente el proveedor',1),(314,6,'mensaje13','NO provider has successfully removed',2),(315,6,'mensaje14','El proveedor ha sido eliminado Corectamente',1),(316,6,'mensaje14','The provider has been successfully removed',2),(317,6,'mensaje15','El proveedor no ha sido eliminado Corectamente',1),(318,6,'mensaje15','The provider has not been removed correctly',2),(319,6,'mensaje16','Este producto ',1),(320,6,'mensaje16','This product ',2),(321,6,'mensaje17',' ya fue asignado a este proveedor ',1),(322,6,'mensaje17',' and he was assigned to this supplier ',2),(323,6,'mensaje18','Se ha relacionado bien el producto ',1),(324,6,'mensaje18','It has linked the product well ',2),(325,6,'mensaje19',' en proveedor ',1),(326,6,'mensaje19',' in provider ',2),(327,6,'mensaje20','No se ha relacionado bien el producto ',1),(328,6,'mensaje20','No related product well ',2),(329,6,'mensaje21',' en proveedor ',1),(330,6,'mensaje21',' in provider ',2),(331,6,'mensaje22',', intenlo de nuevo',1),(332,6,'mensaje22',', try again',2),(333,6,'mensaje23','Debe digitar un valor mayor a 0, del producto ',1),(334,6,'mensaje23','You must type a value greater than 0, the product ',2),(335,6,'mensaje24','Se ha actualizado correctamente el producto proveedor',1),(336,6,'mensaje24','They have updated the product provider',2),(337,6,'mensaje25','NO se ha actualizado correctamente el producto proveedor',1),(338,6,'mensaje25','NO has been successfully updated your product supplier',2),(339,6,'mensaje26','Se ha eliminado correctamente el producto ',1),(340,6,'mensaje26','You have successfully removed the product ',2),(341,6,'mensaje27','No se ha eliminado correctamente el producto ',1),(342,6,'mensaje27','No product successfully removed',2),(343,7,'L_TituloMensajes','MENSAJES',1),(344,7,'L_TituloMensajes','MESSAGES',2),(345,7,'Nombre','Nombre',1),(346,7,'Nombre','Name',2),(347,7,'Email','Email',1),(348,7,'Email','Email',2),(349,7,'Mensaje','Mensaje',1),(350,7,'Mensaje','Message',2),(351,9,'B_CajeroConsulta','Consultar Pedidos',1),(352,9,'B_CajeroConsulta','Check order',2),(353,9,'B_ActualizarDatos','Actualizar Datos',1),(354,9,'B_ActualizarDatos','Update Data',2),(355,10,'L_TituloConsultaCajero','INGRESE EL NUMERO DE CEDULA DEL CLIENTE A BUSCAR PEDIDO',1),(356,10,'L_TituloConsultaCajero','Enter the customer identification number to search order',2),(357,10,'L_TtituloPedido','Buscar Pedido Cliente. CEDULA : ',1),(358,10,'L_TtituloPedido','Search Customer Order. IDENTIFICATION:',2),(359,10,'B_BuscarCedula','Buscar',1),(360,10,'B_BuscarCedula','search',2),(361,10,'REV_NumerosCedula','Solo numeros',1),(362,10,'REV_NumerosCedula','Only numbers',2),(363,10,'Proveedor','Proveedor',1),(364,10,'Proveedor','Provider',2),(365,10,'Producto','Producto',1),(366,10,'Producto','Product',2),(367,10,'Descripcion','Descripcion',1),(368,10,'Descripcion','Description',2),(369,10,'Precio','Precio',1),(370,10,'Precio','Price',2),(371,10,'Cantidad','Cantidad',1),(372,10,'Cantidad','quantity',2),(373,10,'Total','Total',1),(374,10,'Total','Total',2),(375,10,'horadereserva','hora de reserva ',1),(376,10,'horadereserva','hour of reserve',2),(377,10,'Eliminar','Eliminar',1),(378,10,'Eliminar','Remove',2),(379,10,'B_vender','VENDER PRODUCTOS',1),(380,10,'B_vender','SELL PRODUCTS',2),(381,10,'L_titulototalpedido','Total Pedido',1),(382,10,'L_titulototalpedido','Total order',2),(383,10,'L_TituloConsultaProductos','INGRESE EL PRODUCTO A BUSCAR',1),(384,10,'L_TituloConsultaProductos','ENTER THE PRODUCT TO SEARCH',2),(385,10,'L_TituloProducto','Buscar Producto',1),(386,10,'L_TituloProducto','Search Product',2),(387,10,'B_BuscarProducto','Buscar',1),(388,10,'B_BuscarProducto','Search',2),(389,10,'REV_letras_numeros0','Sole letras y numeros',1),(390,10,'REV_letras_numeros0','Only letters and numbers',2),(391,10,'L_TituloProducto1','Producto',1),(392,10,'L_TituloProducto1','Product',2),(393,10,'L_TituloProveedor','Proveedor',1),(394,10,'L_TituloProveedor','Provider',2),(395,10,'L_TituloPrecio','Precio',1),(396,10,'L_TituloPrecio','Price',2),(397,10,'L_TiruloCantidad','Cantidad',1),(398,10,'L_TiruloCantidad','quantity',2),(399,10,'REV_SoloNumeros','Solo numeros',1),(400,10,'REV_SoloNumeros','Only numbers',2),(401,10,'B_Comprar','Comprar',1),(402,10,'B_Comprar','Buy',2),(403,10,'mensaje1','NO HAY PEDIDO DE ESTE CLIENTE O NO EXISTE',1),(404,10,'mensaje1','there isn\'t request of this service or it does not exist',2),(405,10,'mensaje2','NO SE ENCONTRARON RESULTADOS',1),(406,10,'mensaje2','They not found results',2),(407,10,'mensaje3','Error al enviar el mensaje intente de nuevo o mas tarde',1),(408,10,'mensaje3','Error sending message or try again later',2),(409,10,'mensaje4','Se ha registrado correctamente el producto',1),(410,10,'mensaje4','You have successfully registered the product',2),(411,10,'mensaje5','Error en registrar el producto intentelo de nuevo',1),(412,10,'mensaje5','error in registration try again',2),(413,10,'mensaje6','Se ha borrado corretamente el producto',1),(414,10,'mensaje6','You have successfully deleted the product',2),(415,10,'mensaje7','No se ha borrado corretamente el producto, vuelva a intentarlo',1),(416,10,'mensaje7','It has not been deleted successfully cleared, try again',2),(417,10,'mensaje8','Se ha vendido correctamente',1),(418,10,'mensaje8','It has been sold successfully',2),(419,10,'mensaje9','No se ha vendido correctamente, intentelo de nuevo',1),(420,10,'mensaje9','It has not been sold successfully, try again',2),(421,12,'B_contactenos','CONTACTENOS',1),(422,12,'B_contactenos','CONTACT US',2),(423,12,'B_ManualUsuario','MANUAL DE USUARIO',1),(424,12,'B_ManualUsuario','USER MANUAL',2),(425,12,'LB_Login','INICIAR SESION',1),(426,12,'LB_Login','LOG IN ',2),(427,12,'I_Catalogo','~/Imagenes/ImagenesWeb/catalogo.jpg',1),(428,12,'I_Catalogo','~/Imagenes/ImagenesWeb/general_catalog.png',2),(429,12,'L_Producto','BUSCAR PRODUCTO',1),(430,12,'L_Producto','SEARCH PRODUCT',2),(431,12,'B_Buscar','Buscar',1),(432,12,'B_Buscar','Search',2),(433,12,'REV_letras_numeros','Solo letras y numeros',1),(434,12,'REV_letras_numeros','Only letters and numbers ',2),(435,12,'L_Titulo','PRODUCTO',1),(436,12,'L_Titulo','PRODUCT',2),(437,12,'L_Subtitulo','PRECIO',1),(438,12,'L_Subtitulo','PRICE',2),(439,12,'L_TituloProve','PROVEEDOR',1),(440,12,'L_TituloProve','PROVIDER',2),(441,12,'B_Comprar','Comprar',1),(442,12,'B_Comprar','Buy',2),(443,12,'Mensaje1','NO SE ENCONTRARON RESULTADOS',1),(444,12,'Mensaje1','Result don\'t have been found',2),(445,13,'B_ClienteProducto','PRODUCTOS',1),(446,13,'B_ClienteProducto','PRODUCTS',2),(447,13,'B_ClienteCarro','CARRO',1),(448,13,'B_ClienteCarro','CAR',2),(449,13,'B_Facturas','FACTURAS PEDIDO',1),(450,13,'B_Facturas','PAY ORDER',2),(451,13,'B_Contactar','CONTACTAR',1),(452,13,'B_Contactar','CONTACT',2),(453,13,'B_ActualizarDatos','ACTUALIZAR DATOS',1),(454,13,'B_ActualizarDatos','UPDATE',2),(455,14,'L_TituloActualizarDatos','ACTUALIZAR DATOS',1),(456,14,'L_TituloActualizarDatos','UPDATE',2),(457,14,'L_Cedula','Numero de cedula',1),(458,14,'L_Cedula','Identification number',2),(459,14,'REV_CedulaNumeros','Solo numeros',1),(460,14,'REV_CedulaNumeros','Only numbers',2),(461,14,'L_Nombres','Nombres',1),(462,14,'L_Nombres','Name',2),(463,14,'REV_NombresLetras','Solo letras',1),(464,14,'REV_NombresLetras','Only letters',2),(465,14,'L_Apellidos','Apellidos',1),(466,14,'L_Apellidos','Last name',2),(467,14,'REV_ApellidosLetras','Solo letras',1),(468,14,'REV_ApellidosLetras','Only letters',2),(469,14,'L_Direccion','Direccion de residencia',1),(470,14,'L_Direccion','Home Address',2),(471,14,'L_Correo','Correo electronico',1),(472,14,'L_Correo','e-mail',2),(473,14,'REV_correo','Correo invalido',1),(474,14,'REV_correo','Email invalid ',2),(475,14,'L_Telefono','Telefono',1),(476,14,'L_Telefono','Telephone',2),(477,14,'REV_TelefonoNumeros','Solo numeros',1),(478,14,'REV_TelefonoNumeros','Only numbers ',2),(479,14,'L_Contraseña','Contraseña actual',1),(480,14,'L_Contraseña','Current password',2),(481,14,'L_ContraseñaN','Contraseña nueva ',1),(482,14,'L_ContraseñaN','New password ',2),(483,14,'L_ContraseñaNConf','Confirmar contraseña nueva',1),(484,14,'L_ContraseñaNConf','Confirm new password',2),(485,14,'L_Imagen','Imagen',1),(486,14,'L_Imagen','Image',2),(487,14,'L_Login','Usuario (Login)',1),(488,14,'L_Login','User (login)',2),(489,14,'B_ActualizarDatos','Actualizar datos',1),(490,14,'B_ActualizarDatos','Update',2),(491,14,'mensaje1','Ese Usuario ya se encuentra registrado, intente con otro',1),(492,14,'mensaje1','This user is already registered, try another',2),(493,14,'mensaje2','La Contraseña Actual no es correcta',1),(494,14,'mensaje2','The current password is not correct',2),(495,14,'mensaje3','La contraseña nueva no coinciden',1),(496,14,'mensaje3','The new password does not match',2),(497,14,'mensaje4','No se admite ese tipo de imagen o archivo',1),(498,14,'mensaje4','This type of image file or isn\'t supported',2),(499,14,'mensaje5','Se ha Actualizado Correctamente',1),(500,14,'mensaje5','It has been updated successfully',2),(501,15,'L_TituloCantidad','CANTIDAD DE PRODUCTOS DISPONIBLES',1),(502,15,'L_TituloCantidad','QUANTITY OF PRODUCTS AVAILABLE',2),(503,15,'L_TituloProducto','Producto',1),(504,15,'L_TituloProducto','Product',2),(505,15,'L_TituloCantidad1','Cantidad',1),(506,15,'L_TituloCantidad1','Quantify',2),(507,15,'L_TituloModCarrito','MODIFICAR O ELIMINAR CARRITO PEDIDO',1),(508,15,'L_TituloModCarrito','MODIFY OR REMOVE CART ORDER',2),(509,15,'Proveedor','Proveedor',1),(510,15,'Proveedor','Provider',2),(511,15,'Producto','Producto',1),(512,15,'Producto','Product',2),(513,15,'Decripcion','Descripcion',1),(514,15,'Decripcion','Description',2),(515,15,'Precio','Precio',1),(516,15,'Precio','Price',2),(517,15,'Cantidad','Cantidad',1),(518,15,'Cantidad','Quantify',2),(519,15,'Total','Total',1),(520,15,'Total','Total',2),(521,15,'Fecha','Fecha',1),(522,15,'Fecha','Date',2),(523,15,'Estado','Estado',1),(524,15,'Estado','Status',2),(525,15,'Editar','Editar',1),(526,15,'Editar','Edit',2),(527,15,'Eliminar','Eliminar',1),(528,15,'Eliminar','Remove',2),(529,15,'L_MensajeTotal','TOTAL PEDIDO',1),(530,15,'L_MensajeTotal','TOTAL ORDER',2),(531,15,'B_Comprar','APARTAR PRODUCTOS',1),(532,15,'B_Comprar','SEPARATE PRODUCTS',2),(533,15,'Label4','CARRITO DE COMPRAS',1),(534,15,'Label4','SHOPPING CART',2),(535,15,'mensaje1','Se ha comprado correctamente',1),(536,15,'mensaje1','It has been purchased properly',2),(537,15,'mensaje2','No se comprado correctamente intente de nuevo',1),(538,15,'mensaje2','It has not been properly purchased try again',2),(539,15,'mensaje3','Se ha borrado correctamente el producto',1),(540,15,'mensaje3','You have successfully deleted the product',2),(541,15,'mensaje4','No se ha borrado corretamente el producto, vuelva a intentarlo',1),(542,15,'mensaje4','It has not been deleted successfully product, try again',2),(543,15,'mensaje5','Digite la cantidad de ',1),(544,15,'mensaje5','Enter the amount of',2),(545,15,'mensaje6',' a comprar. ',1),(546,15,'mensaje6',' to buy. ',2),(547,15,'mensaje7','Cantidad disponible: ',1),(548,15,'mensaje7','Quantity Available: ',2),(549,15,'mensaje8','La cantidad a modificar de ',1),(550,15,'mensaje8','The amount to modify ',2),(551,15,'mensaje9',' debe ser diferente al actual.',1),(552,15,'mensaje9',' It must be different from today.',2),(553,15,'mensaje10','Cantidad disponible: ',1),(554,15,'mensaje10','Quantity Available:  ',2),(555,15,'mensaje11','Ya no hay esa cantidad de ',1),(556,15,'mensaje11','There is no longer that much ',2),(557,15,'mensaje12',', intentelo de nuevo. ',1),(558,15,'mensaje12',', Try again. ',2),(559,15,'mensaje13','Cantidad disponible: ',1),(560,15,'mensaje13','Quantity Available:  ',2),(561,15,'mensaje14','La cantidad de ',1),(562,15,'mensaje14','The amount of ',2),(563,15,'mensaje15',' debe ser mayor a cero(0). ',1),(564,15,'mensaje15',' must be greater than zero (0). ',2),(565,15,'mensaje16','Cantidad disponible: ',1),(566,15,'mensaje16','Quantity Available:  ',2),(567,15,'mensaje17','Se ha modificado el pedido correctamente ',1),(568,15,'mensaje17','It changed the order correctly',2),(569,15,'mensaje18','No se ha modificado el pedido correctamente, vuelva a intentarlo',1),(570,15,'mensaje18','It has not been modified the order correctly, try again',2),(571,16,'L_TituloMensaje','INGRESE EL MENSAJE O QUEJA QUE TENGA!',1),(572,16,'L_TituloMensaje','Entering the message or complaints you have!',2),(573,16,'L_nombre','Nombre:',1),(574,16,'L_nombre','Name:',2),(575,16,'REV_letras','Solo letras',1),(576,16,'REV_letras','Only letters',2),(577,16,'L_contactenos','Contactenos:',1),(578,16,'L_contactenos','Contact Us:',2),(579,16,'L_email','E-mail:',1),(580,16,'L_email','E-mail:',2),(581,16,'REV_correo','Correo invalido. Ejemplo: nombre@direccion.co',1),(582,16,'REV_correo','Mail invalid. Example: nombre@direccion.co',2),(583,16,'L_pais','Pais: Colombia',1),(584,16,'L_pais','Country:Colombia',2),(585,16,'L_ciudad',' Ciudad: Facatativa',1),(586,16,'L_ciudad','City: Facatativa',2),(587,16,'L_telefono','  Telefono: 1800077549',1),(588,16,'L_telefono','  Telephone: 1800077549',2),(589,16,'L_mail','E-mail: supermercadoonline@hotmail.com',1),(590,16,'L_mail','E-mail: supermercadoonline@hotmail.com',2),(591,16,'L_Mensaje','Mensaje',1),(592,16,'L_Mensaje','Message',2),(593,16,'RFV_Mensaje','MENSAJE OBLIGATORIO',1),(594,16,'RFV_Mensaje','MANDATORY MESSAGE',2),(595,16,'B_Enviar','Enviar',1),(596,16,'B_Enviar','Send',2),(597,16,'mensaje1','Error al enviar el mensaje intente de nuevo o mas tarde',1),(598,16,'mensaje1','Error sending message OR try again later',2),(599,16,'mensaje2','Se ha enviado correctamente',1),(600,16,'mensaje2','It has been successfully submitted',2),(601,16,'mensaje3','Error al enviar el mensaje intente de nuevo o mas tarde',1),(602,16,'mensaje3','Error sending message or try again later',2),(603,17,'L_TituloInserProductos','INGRESAR PRODUCTOS AL CARRITO',1),(604,17,'L_TituloInserProductos','ENTER PRODUCTS TO CART',2),(605,17,'L_Producto','Buscar Producto',1),(606,17,'L_Producto','Search Product',2),(607,17,'B_Buscar','Buscar',1),(608,17,'B_Buscar','Search',2),(609,17,'REV_letras_numeros','Solo letras y numeros',1),(610,17,'REV_letras_numeros','Only letters and numbers',2),(611,17,'L_TituloProducto','Producto',1),(612,17,'L_TituloProducto','Product',2),(613,17,'L_TituloProve','Proveedor',1),(614,17,'L_TituloProve','Provider',2),(615,17,'L_TituloPrecio','Precio',1),(616,17,'L_TituloPrecio','Price',2),(617,17,'L_TiruloCantidad','Cantidad',1),(618,17,'L_TiruloCantidad','quantity',2),(619,17,'REV_SoloNumeros','Solo numeros',1),(620,17,'REV_SoloNumeros','Only Numbers',2),(621,17,'B_Comprar','Comprar',1),(622,17,'B_Comprar','Buy',2),(623,17,'mensaje1','NO SE ENCONTRARON RESULTADOS',1),(624,17,'mensaje1','RESULTS NOT FOUND',2),(625,17,'mensaje2','Error en registrar el producto, intentelo de nuevo',1),(626,17,'mensaje2','error in registration the product, intentelo de nuevo',2),(627,17,'mensaje3','Se ha registrado correctamente el producto',1),(628,17,'mensaje3','You have successfully registered the product',2),(629,17,'mensaje4','Error en registrar el producto,intentelo de nuevo',1),(630,17,'mensaje4','error in registration the product, intentelo de nuevo',2),(631,17,'mensaje5','Digite la cantidad de ',1),(632,17,'mensaje5','Enter the amount of ',2),(633,17,'mensaje6',' a comprar',1),(634,17,'mensaje6',' to buy',2),(635,17,'mensaje7','Ya no hay esa cantidad de ',1),(636,17,'mensaje7','There is no longer that much ',2),(637,17,'mensaje8',', intentelo de nuevo',1),(638,17,'mensaje8',', try again',2),(639,17,'mensaje9','La cantidad de ',1),(640,17,'mensaje9','The amount of ',2),(641,16,'mensaje10',' debe ser mayor a cero(0)\"',1),(642,17,'mensaje10','must be greater than zero (0) \"',2),(643,18,'L_TituloPedidos','PEDIDOS REALIZADOS',1),(644,18,'L_TituloPedidos','MADE ORDERS',2),(645,18,'Seleccione','Seleccione',1),(646,18,'Seleccione','Select',2),(647,18,'NumeroRecibo','Numero Recibo',1),(648,18,'NumeroRecibo','receipt number',2),(649,18,'Fecha Diaria','Fecha Diaria',1),(650,18,'Fecha Diaria','daily date',2),(651,19,'B_Login','INICIAR SESION',1),(652,19,'B_Login','LOG IN',2),(653,19,'B_Catalogo','CATALOGO',1),(654,19,'B_Catalogo','CATALOG',2),(655,19,'L_TituloMensajeVisitante','MENSAJE O QUEJA AL SUPERMERCADO',1),(656,19,'L_TituloMensajeVisitante','MESSAGE OR COMPLAINT TO THE SUPERMARKET',2),(657,19,'L_Nombre','Nombre',1),(658,19,'L_Nombre','Name',2),(659,19,'REV_letras','Solo letras',1),(660,19,'REV_letras','Only letters',2),(661,19,'L_EMail','Correo',1),(662,19,'L_EMail','Email',2),(663,19,'REV_correo','Correo invalido. Ejemplo: nombre@direccion.co',1),(664,19,'REV_correo','Email invalid. Example: name@address.co',2),(665,19,'L_pais','Pais:Colombia',1),(666,19,'L_pais','Country:Colombia',2),(667,19,'L_ciudad','Ciudad:Facatativa',1),(668,19,'L_ciudad','City:Facatativa',2),(669,19,'L_Telefono','Telefono: 1800077549',1),(670,19,'L_Telefono','Telephone: 1800077549',2),(671,19,'L_mail',' E-mail: supermercadoonline@hotmail.com',1),(672,19,'L_mail',' E-mail: supermercadoonline@hotmail.com',2),(673,19,'L_Mensaje','Mensaje',1),(674,19,'L_Mensaje','Message',2),(675,19,'RFV_Mensaje','MENSAJE OBLIGATORIO',1),(676,19,'RFV_Mensaje','MANDATORY MESSAGE',2),(677,19,'B_Enviar','Enviar',1),(678,19,'B_Enviar','Send',2),(679,19,'mensaje1','Error al enviar el mensaje intente de nuevo o mas tarde',1),(680,19,'mensaje1','Error sending message or try again later',2),(681,19,'mensaje2','Se ha enviado correctamente',1),(682,19,'mensaje2','It has been successfully submitted',2),(683,19,'mensaje3','Error al enviar el mensaje intente de nuevo o mas tarde',1),(684,19,'mensaje3','Error sending message or try again later',2),(685,20,'I_paginafueraS','~/Imagenes/ImagenesWeb/pagina fuera de servicio.png',1),(686,20,'I_paginafueraS','~/Imagenes/ImagenesWeb/page_not_found.png',2),(687,20,'I_VuelvaPronto','~/Imagenes/ImagenesWeb/vuelva pronto.png',1),(688,20,'I_VuelvaPronto','~/Imagenes/ImagenesWeb/come_soon.png',2),(689,21,'B_contactenos','Contactenos',1),(690,21,'B_contactenos','Contact us',2),(691,21,'B_ManualUsuario','Manual de Usuario',1),(692,21,'B_ManualUsuario','User Manual',2),(693,21,'LB_Catalogo','Catalogo',1),(694,21,'LB_Catalogo','Catalog',2),(695,21,'L_0','Iniciar Sesion',1),(696,21,'L_0','LOG IN',2),(697,21,'L_1','¡¡Registrarse ahora!!',1),(698,21,'L_1','¡¡Register now!!',2),(699,21,'L_Usuario','Usuario',1),(700,21,'L_Usuario','User',2),(701,21,'L_ContraseñaLogin','Contraseña',1),(702,21,'L_ContraseñaLogin','Password',2),(703,21,'B_inicio_sesion','Inicio de Sesion',1),(704,21,'B_inicio_sesion','Log in',2),(705,21,'LB_ContraseñaOlvido','¿Olvido Su contraseña?',1),(706,21,'LB_ContraseñaOlvido','Forget your Password?',2),(707,21,'L_idioma','Idioma',1),(708,21,'L_idioma','Lenguage',2),(709,21,'L_Nombres','Nombre',1),(710,21,'L_Nombres','Name',2),(711,21,'L_Apellidos','Apellidos',1),(712,21,'L_Apellidos','Last Name',2),(713,21,'L_Cedula','Numero de Cedula',1),(714,21,'L_Cedula','Identification number',2),(715,21,'L_Direccion','Direccion de Residencia',1),(716,21,'L_Direccion','Home Address',2),(717,21,'L_Correo','Correo Electronico:',1),(718,21,'L_Correo','Email:',2),(719,21,'L_etiqueta7','Telefono',1),(720,21,'L_etiqueta7','Telephone',2),(721,21,'L_UsuarioIng','Usuario (Login)',1),(722,21,'L_UsuarioIng','User (Login)',2),(723,21,'L_ContraseñaIng','Contraseña',1),(724,21,'L_ContraseñaIng','Password',2),(725,21,'L_ContraseñaConfIngNue','Confirmar Contraseña',1),(726,21,'L_ContraseñaConfIngNue','Confirm Password',2),(727,21,'L_Imagen','Imagen',1),(728,21,'L_Imagen','Image',2),(729,21,'REV_letrasNombre','Solo Letras',1),(730,21,'REV_letrasNombre','Only Letters',2),(731,21,'REV_letrasApellidos','Solo Letras',1),(732,21,'REV_letrasApellidos','Only Letters',2),(733,21,'REV_NumerosCedula','Solo numeros',1),(734,21,'REV_NumerosCedula','Only Numbers',2),(735,21,'REV_correo','Correo Invalido. Ejemplo:nombre@direccion.com',1),(736,21,'REV_correo','Invalid Email. Example:name@address.com',2),(737,21,'REV_Numeros1','Solo Numeros',1),(738,21,'REV_Numeros1','Only numbers',2),(739,21,'B_CrearCuenta','Crear Cuenta',1),(740,21,'B_CrearCuenta','Create Account',2),(741,21,'mensaje1','Bienvenido Administrador',1),(742,21,'mensaje1','Welcome Manager',2),(743,21,'mensaje2','Bienvenido Cliente',1),(744,21,'mensaje2','Welcome Customer',2),(745,21,'mensaje3','Bienvenido Cajero',1),(746,21,'mensaje3','Welcome Cashier',2),(747,21,'mensaje4','Error en el usuario o contraseña',1),(748,21,'mensaje4','Error in username or password',2),(749,21,'mensaje5','Ese Usuario(Login) ya se encuentra registrado, intente con otro',1),(750,21,'mensaje5','This User (Login) is already registered, try another',2),(751,21,'mensaje6','Las contraseñas no coinciden',1),(752,21,'mensaje6','Passwords do not match',2),(753,21,'mensaje7','No se admite ese tipo de imagen',1),(754,21,'mensaje7','This type of image is not supported',2),(755,21,'mensaje8','Este Usuario con numero de cedula: ',1),(756,21,'mensaje8','The user with ID number: ',2),(757,21,'mensaje9',', ya esta resgistrado',1),(758,21,'mensaje9',', already registered',2),(759,21,'mensaje10','Se ha registrado correctamente',1),(760,21,'mensaje10','It has been recorded correctly',2),(761,21,'mensaje11','No se ha podido registrar el usuario, intentelo de nuevo',1),(762,21,'mensaje11','Failed to register the user, try again ',2),(763,23,'L_TituloRecupContra','RECUPERAR CONTRASEÑA',1),(764,23,'L_TituloRecupContra','RECOVER PASSWORD',2),(765,23,'L_TituloCedula','Digite la cedula: ',1),(766,23,'L_TituloCedula','Enter the identification: ',2),(767,23,'REV_NumerosCedula','Solo numeros',1),(768,23,'REV_NumerosCedula','Only numbers',2),(769,23,'B_Enviar','Enviar',1),(770,23,'B_Enviar','Send',2),(771,23,'mensaje1','Recuperacion de usuario y contraseña - SupermercadoOnline',1),(772,23,'mensaje1','Recovery and password - Supermarket Online',2),(773,23,'mensaje2','Que tenga una feliz mañana',1),(774,23,'mensaje2','Have a happy morning',2),(775,23,'mensaje3','Que tenga una feliz tarde',1),(776,23,'mensaje3','Have a happy afternoon',2),(777,23,'mensaje4','Que tenga una feliz noche',1),(778,23,'mensaje4','Have a happy night',2),(779,23,'mensaje5','Señor(a) ',1),(780,23,'mensaje5','Sir(a) ',2),(781,23,'mensaje6','Cedula de ciudadania: ',1),(782,23,'mensaje6','Document: ',2),(783,23,'mensaje7','Correo Electronico: ',1),(784,23,'mensaje7','Email: ',2),(785,23,'mensaje8','Su Usuario es: ',1),(786,23,'mensaje8','Your Username is: ',2),(787,23,'mensaje9',' Y su Contraseña es: ',1),(788,23,'mensaje9',' And password is: ',2),(789,23,'mensaje10','Recuerde no olvidar su usuario y contraseña de nuevo. ',1),(790,23,'mensaje10','Remember not to forget your username and password again.',2),(791,23,'mensaje11','Atentamente:  ',1),(792,23,'mensaje11','Sincerely: ',2),(793,23,'mensaje12','SupermercadoOnline',1),(794,23,'mensaje12','SupermarketOnline',2),(795,23,'mensaje13','Se ha enviado correctamente el usuario y la contraseña al correo electronico',1),(796,23,'mensaje13','It has been sent user and password the email',2),(797,23,'mensaje14','No se ha enviado correctamente la contraseña al correo electronico, usuario ',1),(798,23,'mensaje14','It not sent correctly to email password, user',2),(799,23,'mensaje15','No valido o no existe',1),(800,23,'mensaje15','Invalid or nonexistent',2),(801,1,'L_FechaMensaje','Fecha Actual.',1),(802,1,'L_FechaMensaje','Current Date',2),(803,1,'L_TUsuario','Usuario',1),(804,1,'L_TUsuario','User',2),(805,1,'L_TEMail','EMAIL',1),(806,1,'L_TEMail','E-MAIL',2),(807,1,'L_TTipoUsuario','Tipo de usuario',1),(808,1,'L_TTipoUsuario','User type',2),(809,1,'LB_CerrarSesion','Cerrar Sesion',1),(810,1,'LB_CerrarSesion','Close session ',2),(811,2,'I_ProductoNuevo','~/Imagenes/ImagenesWeb/Producto_Nuevo.jpg',1),(812,2,'I_ProductoNuevo','~/Imagenes/ImagenesWeb/newproduct.png',2),(813,13,'java1','Productos Cliente',1),(814,13,'java1','customer product',2),(815,13,'java2','Carro productos Cliente',1),(816,13,'java2','Customer Cart',2),(817,23,'java1','Compruebe su conexion a internet',1),(818,23,'java1','Check your Internet connection',2),(819,15,'lb_apartado','Apartado',1),(820,15,'lb_apartado','Reserved',2),(821,15,'lb_noapartado','No Apartado',1),(822,15,'lb_noapartado','Not reserved',2),(823,4,'ddl_seleccione','--seleccione--',1),(824,4,'ddl_seleccione','--Select--',2),(825,5,'ddl_seleccione5','--seleccione--',1),(826,5,'ddl_seleccione5','--Select--',2),(827,6,'ddl_seleccione6','--seleccione--',1),(828,6,'ddl_seleccione6','--Select--',2),(829,6,'ddl_seleccione6.1','--seleccione--',1),(830,6,'ddl_seleccione6.1','--Select--',2),(831,21,'ddl_idiomaItem1','Español',1),(832,21,'ddl_idiomaItem2','Ingles',1),(833,21,'ddl_idiomaItem1','Spanish',2),(834,21,'ddl_idiomaItem2','English',2),(835,1,'Administrador','Administrador',1),(836,1,'Administrador','Manager',2),(837,1,'Cliente','Cliente',1),(838,1,'Cliente','Client',2),(839,1,'Cajero','Cajero',1),(840,1,'Cajero','Cashier',2),(841,8,'TituloUtilidad','Utilidad de los Productos',1),(842,8,'TituloUtilidad','Utility Products',2),(843,8,'nombreUtilidad','Nombre Producto',1),(844,8,'nombreUtilidad','Product Name',2),(845,8,'provedorUtilidad','Nombre Proveedor',1),(846,8,'provedorUtilidad','Provider Name',2),(847,8,'ventaUtilidad','Precio Venta',1),(848,8,'ventaUtilidad','Sale price',2),(849,8,'compraUtilidad','Precio Compra',1),(850,8,'compraUtilidad','Price of buy',2),(851,8,'utilidad','Utilidad',1),(852,8,'utilidad','Utility',2),(853,8,'totalUtilidad','Total Utilidad',1),(854,8,'totalUtilidad','Total utility',2),(855,11,'Factura Pedido','Factura Pedido',1),(856,11,'Factura Pedido','Order Invoice',2),(857,11,'Cajero','Cajero',1),(858,11,'Cajero','Cashier',2),(859,11,'Cliente','Cliente',1),(860,11,'Cliente','Customer',2),(861,11,'nombreProducto','Nombre Producto',1),(862,11,'nombreProducto','Name Product',2),(863,11,'valorUnitario','valor unitario',1),(864,11,'valorUnitario','unit value',2),(865,11,'cantidad','Cantidad',1),(866,11,'cantidad','quantity',2),(867,11,'TotalProducto','Total Producto',1),(868,11,'TotalProducto','total product',2),(869,11,'Total Pedido','Total Pedido',1),(870,11,'Total Pedido','Total order',2),(872,18,'Factura Pedido','Factura Pedido',1),(873,18,'Factura Pedido','Order Invoice',2),(874,18,'Cliente','Cliente',1),(875,18,'Cliente','Customer',2),(876,18,'Nombre producto','Nombre producto',1),(877,18,'Nombre producto','Product Name ',2),(878,18,'Nombre proveedor','Nombre proveedor',1),(879,18,'Nombre proveedor','Name provider',2),(880,18,'Valor unitario','Valor unitario',1),(881,18,'Valor unitario','Unit value',2),(882,18,'Cantidad','Cantidad',1),(883,18,'Cantidad','Quantity\r\n',2),(884,18,'Total producto','Total producto',1),(885,18,'Total producto','Total product',2),(886,18,'Total Pedido','Total Pedido',1),(887,18,'Total Pedido','Total order',2),(888,18,'Seleccione1','Seleccione',1),(889,18,'Seleccione1','Select',2),(890,22,'L_ManualUsuario','Manual de Usuario',1),(891,22,'L_ManualUsuario','manual user',2),(892,22,'L_Catalogo','Catalogo',1),(893,22,'L_Catalogo','Catalog',2),(894,22,'L_TextoCatalogo','En el catálogo general se encuentra los productos que están en venta, puede buscar un producto en especial o dejar un comentario o mensaje, dándole clic en el botón contáctenos, o iniciar sesión si tiene una cuenta existente.',1),(895,22,'L_TextoCatalogo','In the general catalog is the products that are on sale, you can search a particular product or leave a comment or message, giving click on the contact button or login if you have an existing account.',2),(896,22,'L_InicioSesion','Inicio de sesion',1),(897,22,'L_InicioSesion','Login',2),(898,22,'L_InicioSesionSub','Inicio de sesion',1),(899,22,'L_InicioSesionSub','Login',2),(900,22,'L_TextoInicioSesion','Si el visitante se encuentra registrado actualmente, puede acceder con el usuario y la contraseña.',1),(901,22,'L_TextoInicioSesion','If the visitor is currently registered, you can login with the username and password.',2),(902,22,'L_RegistreseSub','REGISTRESE AHORA!',1),(903,22,'L_RegistreseSub','SIGN UP NOW!',2),(904,22,'L_TextoRegistrese','Si el visitante es nuevo en el sitio web puede registrarse de manera gratuita, debe ingresar como mínimo los nombres, apellidos, número de cedula, dirección de residencia, correo electrónico, teléfono, usuario (Login), contraseña y una imagen del usuario.',1),(905,22,'L_TextoRegistrese','If the visitor is new to the website can sign up for free, you must enter at least the full name, identity card number, home address, email, telephone (login), password and an image of the user.',2),(906,22,'L_Contactenos','CONTACTENOS',1),(907,22,'L_Contactenos','CONTACT US',2),(908,22,'L_TextoContactenos','En este formulario el visitante puede dejar un mensaje de las opiniones que tenga, referente al sitio web. Recordando que el nombre, e-mail y el mensaje son campos obligatorios.',1),(909,22,'L_TextoContactenos','In this form the visitor can leave a message of the opinions you have, concerning the website. Recalling that the name, email and message are required fields.',2),(910,22,'L_MenuClieOIni','MENU CLIENTE O INICIO CLIENTE',1),(911,22,'L_MenuClieOIni','MENU CUSTOMER OR HOME CUSTOMER',2),(912,22,'L_TextoMenuCliente','Al iniciar sesión el cliente, podrá ver un formulario donde podrá agregar sus productos a comprar, mirar sus productos actuales en el carro de compras o actualizar sus datos personales.',1),(913,22,'L_TextoMenuCliente','When you log the client, you will see a form where you can add your products to buy, look at their current products in the shopping cart or update your personal information.',2),(914,22,'L_TextoDatosUsuario','Al iniciar sesión se mostrar la foto del cliente, nombres y apellidos del usuario, email, tipo de usuario: Cliente, un botonlink para cerrar sesión si lo desea.',1),(915,22,'L_TextoDatosUsuario','When you log to show the picture of the client, user names, email, user type: Client, a botonlink to log if desired.',2),(916,22,'L_DatosUsuario','DATOS DE USUARIO',1),(917,22,'L_DatosUsuario','DATA OF USER',2),(918,22,'L_AgregarProductos','AGREGAR PRODUCTOS',1),(919,22,'L_AgregarProductos','ADD PRODUCTS',2),(920,22,'L_TextoAgregarProductos','En este formulario el cliente podrá apartar sus productos al carrito de compras, pero recordando que no puede superar la cantidad establecida, también puede buscar un producto en especial, ver su carrito o devolverse a la página de inicio del cliente.',1),(921,22,'L_TextoAgregarProductos','In this form the customer may divert their products to the shopping cart, but remembering that can not exceed the amount set, you can also search for a particular product, do your shopping or returned to the home page of the client.',2),(922,22,'L_CarritoCompras','CARRITO DE COMPRAS',1),(923,22,'L_CarritoCompras','SHOPPING CART',2),(924,22,'L_TextoCarritoCompras','En este formulario el cliente puede apartar sus productos o comprarlos, puede editar su carrito y eliminar un producto que no desee, puede devolverse a la página de inicio del cliente y le muestra el precio total a pagar o total pedido.',1),(925,22,'L_TextoCarritoCompras','In this form the customer can buy your products or away, you can edit your cart and delete an unwanted product may be returned to the home of the customer and shows you the total price to be paid or total order.',2),(926,22,'L_ActualizarDatos','ACTUALIZAR DATOS',1),(927,22,'L_ActualizarDatos','UPDATE DATA',2),(928,22,'L_TextoActualizarDatos','Acá el cliente puede modificar sus datos personales (nombres, apellidos, número de cedula, dirección de residencia, correo electrónico, teléfono, usuario (Login), contraseña y la imagen).',1),(929,22,'L_TextoActualizarDatos','Here the customer can modify your personal data (names, identity card number, home address, email, telephone (login), password and image).',2),(930,22,'I_catalogo','~/Imagenes/ImagenesWeb/catalogo_manual_usuario.png',1),(931,22,'I_catalogo','~/Imagenes/ImagenesWeb/catalog_manual.png',2),(932,22,'I_Login','~/Imagenes/ImagenesWeb/login_manual_usuario.png',1),(933,22,'I_Login','~/Imagenes/ImagenesWeb/login_manual.png',2),(934,22,'I_Contactenos','~/Imagenes/ImagenesWeb/contactenos_manual_usuario.png',1),(935,22,'I_Contactenos','~/Imagenes/ImagenesWeb/contactenos_manual.png',2),(936,22,'I_InicioCliente','~/Imagenes/ImagenesWeb/inicio_cliente_manual_usuario.png',1),(937,22,'I_InicioCliente','~/Imagenes/ImagenesWeb/inicio_cliente.png',2),(938,22,'I_DatosUsuario','~/Imagenes/ImagenesWeb/datos_usuario_manual_usuario.png',1),(939,22,'I_DatosUsuario','~/Imagenes/ImagenesWeb/datos_usuario_manual.png',2),(940,22,'I_AgregarProductos','~/Imagenes/ImagenesWeb/agregar_producto_manual_usuario.png',1),(941,22,'I_AgregarProductos','~/Imagenes/ImagenesWeb/agregar_producto_manual.png',2),(942,22,'I_carritoCompras','~/Imagenes/ImagenesWeb/carrito_compras_manual_usuario.png',1),(943,22,'I_carritoCompras','~/Imagenes/ImagenesWeb/carrito_compras_manual.png',2),(944,22,'i_ActualizarDatos','~/Imagenes/ImagenesWeb/actualizar_datos_manual_usuario.png',1),(945,22,'i_ActualizarDatos','~/Imagenes/ImagenesWeb/actualizar_datos_manual.png',2),(946,24,'l_idioma','IDIOMA',1),(947,24,'l_idioma','LANGUAGE',2),(948,24,'l_nidioma','Nuevo idioma',1),(949,24,'l_nidioma','New language',2),(950,24,'l_terminacion','Terminacion',1),(951,24,'l_terminacion','Termination',2),(952,24,'b_guardar','Guardar',1),(953,24,'b_guardar','Save',2),(954,24,'b_editar','Editar',1),(955,24,'b_editar','Edit',2),(956,24,'L_idiomaddl','Idioma',1),(957,24,'L_idiomaddl','Language',2),(958,24,'l_formulario','Formulario',1),(959,24,'l_formulario','Form',2),(960,24,'l_mensaje','Mensaje',1),(961,24,'l_mensaje','Message',2),(962,24,'b_consultar','Consultar',1),(963,24,'b_consultar','Consult',2),(964,24,'B_Modificaridio','Modificar',1),(965,24,'B_Modificaridio','Update',2),(966,2,'B_InsertarProductos','',3),(967,2,'B_InsertarProveedores','Insertar, Modificar, Eliminar Proveedor',3),(968,2,'B_AdquirirProducto','Adquirir Producto Proveedor',3),(969,2,'B_GenerarReportes','Generar Reporte',3),(970,2,'B_Cajeros','Insertar, Modificar, Eliminar Cajero',3),(971,2,'B_ActualizarDatos','Actualizar Datos',3),(972,2,'B_MensajesClientes','Mensajes',3),(973,3,'L_TituloAdquiProdu','ADQUIRIR PRODUCTO \"POR QUE FALTAN PRODUCTOS EN EL INVENTARIO\"',3),(974,3,'Logo Proveedor','Logo Proveedor',3),(975,3,'Nombre Proveedor','Nombre Proveedor',3),(976,3,'Imagen Producto','Imagen Producto',3),(977,3,'Nombre Producto','Nombre Producto',3),(978,3,'Precio Compra','Precio compra',3),(979,3,'Precio Venta','Precio Venta',3),(980,3,'Unidades','Unidades',3),(981,3,'Opciones','Opciones',3),(982,3,'LB_Actualizar','Actualizar',3),(983,3,'LB_Cancelar','Cancelar',3),(984,3,'LB_Editar','Editar',3),(985,3,'mensaje1','Se ha adquirido el producto correctamnte',3),(986,3,'mensaje2','Error al adquirir el producto, intentelo de nuevo',3),(987,4,'B_Modificar','Modificar',3),(988,4,'L_TituloAgreModCaj','AGREGAR Y MODIFICAR CAJERO ',3),(989,4,'L_ModCaj','Modificar Cajero',3),(990,4,'L_TituloAgreCajero','AGREGAR Y ACTUALIZAR CAJERO',3),(991,4,'L_Cedula','Numero de cedula',3),(992,4,'REV_CedulaNumeros','Solo numeros',3),(993,4,'L_Nombres','Nombre',3),(994,4,'REV_NombresLetras','Solo letras ',3),(995,4,'L_Apellidos','Apellidos',3),(996,4,'REV_ApellidosLetras','Solo letras ',3),(997,4,'L_Direccion','Direccion de residencia ',3),(998,4,'L_Correo','Correo electronico ',3),(999,4,'REV_correo','Correo invalido. Ejemplo: nombre@direccion.co',3),(1000,4,'L_Telefono','Telefono',3),(1001,4,'REV_TelefonoNumeros','Solo numeros ',3),(1002,4,'L_ContraseñaN','Contraseña nueva ',3),(1003,4,'L_ContraseñaNConf','Confirmar contraseña nueva ',3),(1004,4,'L_Imagen','Imagen ',3),(1005,4,'L_Login','Usuario(Login)',3),(1006,4,'B_Actualizar','Actualizar',3),(1007,4,'B_Cancelar','Cancelar',3),(1008,4,'B_AgregarCajero','Agregar cajero',3),(1009,4,'L_TituloMostElimCajero','Mostrar y eliminar cajero ',3),(1010,4,'Codigo','Codigo',3),(1011,4,'Imagen','Imagen',3),(1012,4,'Nombres','Nombres',3),(1013,4,'Apellidos','Apellidos',3),(1014,4,'Direccion','Direccion',3),(1015,4,'Telefono','Telefono',3),(1016,4,'Correo','Correo',3),(1017,4,'Usuario','Usuario',3),(1018,4,'Contraseña','Contraseña',3),(1019,4,'Eliminar','Eliminar',3),(1020,4,'LB_Eliminar','Eliminar',3),(1021,4,'mensaje1','Ese usuario(Login)',3),(1022,4,'mensaje2','ya se esta registrado, digite otro',3),(1023,4,'mensaje3','Las contraseñas no coinciden',3),(1024,4,'mensaje4','No se admite ese tipo de imagen o archivo',3),(1025,4,'mensaje5','Este usuario(Login) con numero de cedula',3),(1026,4,'mensaje6','ya esta resgistrado',3),(1027,4,'mensaje7','Se ha registrado correctamente el cajero',3),(1028,4,'mensaje8','No se ha podido registrar el usuario, intentelo de nuevo',3),(1029,4,'mensaje9','Ese usuario(Login)',3),(1030,4,'mensaje10','ya se esta registrado, digite otro',3),(1031,4,'mensaje11','Las contraseñas no coinciden',3),(1032,4,'mensaje12','No se ha eliminado correctamente',3),(1033,4,'mensaje13','No se admite ese tipo de imagen o archivo',3),(1034,4,'mensaje14','El cajero',3),(1035,4,'mensaje15','ha sido actualizado correctamente',3),(1036,4,'mensaje16','Error al modificar el Cajero',3),(1037,4,'mensaje17','No se ha eliminado correctamente el cajero',3),(1038,4,'mensaje18','El Cajero ha sido eliminado Corectamente',3),(1039,4,'mensaje19','El cajero no ha sido eliminado Corectamente',3),(1040,5,'L_TituloIngProd','INGRESAR NUEVO PRODUCTO',3),(1041,5,'L_TituloModProd','MODIFICAR PRODUCTO',3),(1042,5,'B_Modificar','Modificar',3),(1043,5,'L_TituloActualizar','INGRESAR Y ACTUALIZAR PRODUCTO',3),(1044,5,'L_Codigo','Codigo',3),(1045,5,'REV_NumerosCodigo','Solo numero',3),(1046,5,'L_Nombre','Nombre',3),(1047,5,'L_Imagen','Imagen',3),(1048,5,'RFV_FUProducto','Falta la imagen',3),(1049,5,'L_Descripcion','Descripcion',3),(1050,5,'B_NProducto','Guardar Producto',3),(1051,5,'B_Actualizar','Actualizar',3),(1052,5,'B_Cancelar','Cancelar',3),(1053,5,'L_tituloMostElimiProd','MOSTRAR Y ELIMINAR PRODUCTOS',3),(1054,5,'L_TituloNombre','NOMBRE',3),(1055,5,'L_TituloCodigo','CODIGO',3),(1056,5,'mensaje1','No se admite ese tipo de imagen o archivo',3),(1057,5,'mensaje2','Este producto ',3),(1058,5,'mensaje3',', con codigo ',3),(1059,5,'mensaje4',', ya esta resgistrado ',3),(1060,5,'mensaje5','Se ha registrado correctamente ',3),(1061,5,'mensaje6','Error al insertar el producto ',3),(1062,5,'mensaje7',', intentelo de nuevo ',3),(1063,5,'mensaje8','No se admite ese tipo de imagen o archivo, ',3),(1064,5,'mensaje9','No se ha cambiado correctamente el producto ',3),(1065,5,'mensaje10',', intentelo de nuevo ',3),(1066,5,'mensaje11','Se ha modificado correctamente',3),(1067,5,'mensaje12','Error al modificar el producto ',3),(1068,5,'mensaje13',', intentelo de nuevo',3),(1069,5,'mensaje14','Se ha eliminado correctamente el producto: ',3),(1070,5,'mensaje15','No se ha eliminado el producto: ',3),(1071,5,'mensaje16',', intente de nuevo',3),(1072,6,'L_TituloAgreModProov','AGREGAR Y MODIFICAR PROVEEDOR ',3),(1073,6,'L_ModProov','MODIFICAR PROVEEDOR ',3),(1074,6,'B_Modificar','Modificar',3),(1075,6,'L_TituloActualizarProve','AGREGAR Y ACTUALIZAR PROVEEDOR ',3),(1076,6,'L_Nit','NIT',3),(1077,6,'REV_NumerosNit','Solo numeros',3),(1078,6,'L_Nombre','Nombre',3),(1079,6,'L_EMail','E-Mail',3),(1080,6,'REV_Correo','Ej: motas@mail.co',3),(1081,6,'L_Direccion','Direccion',3),(1082,6,'L_Imagen','Imagen',3),(1083,6,'L_Telefono','Telefono',3),(1084,6,'REV_Telefono','Numero de telefono de 10 digitos',3),(1085,6,'B_Actualizar','Actualizar',3),(1086,6,'B_Cancelar','Cancelar',3),(1087,6,'B_AgregarProveedor','Agregar Producto',3),(1088,6,'L_TituloAgreProdProve','AGREGAR RELACION DE PRODUCTOS CON PROVEEDOR',3),(1089,6,'L_Producto','Producto: ',3),(1090,6,'L_PrecioProdProv','Precio Producto Proveedor:',3),(1091,6,'REV_NumerosPrecioPrProv','Solo numeros y decimales (,)',3),(1092,6,'L_Proveedor','Proveedor',3),(1093,6,'B_AgregarProducto','Agregar Producto',3),(1094,6,'L_TituloMostProveYProducProve','MOSTRAR PROVEEDOR Y SELECCIONE PARA MOSTRAR LA RELACION PRODUCTO CON PROVEEDOR',3),(1095,6,'Seleccione','Seleccione',3),(1096,6,'Imagen','Imagen',3),(1097,6,'Nombre','Nombre',3),(1098,6,'Direccion','Direccion',3),(1099,6,'Telefono','Telefono',3),(1100,6,'EMail','EMail',3),(1101,6,'Eliminar','Eliminar',3),(1102,6,'L_TituloPrecioProductoMod','Precio a Modificar',3),(1103,6,'DL_REV_NumerosProducto','Solo numeros y decimales (,)',3),(1104,6,'LB_ActualizarPrecio','Actualizar Precio',3),(1105,6,'LB_EliminarProducto','Eliminar Producto',3),(1106,6,'mensaje1','No se ha eliminado correctamente',3),(1107,6,'mensaje2','No se admite ese tipo de imagen o archivo, ',3),(1108,6,'mensaje3','El proveedor',3),(1109,6,'mensaje4','ha sido Actualizado Corectamente',3),(1110,6,'mensaje5','Error al modificar el Proveedor',3),(1111,6,'mensaje6','No se admite ese tipo de imagen o archivo',3),(1112,6,'mensaje7','Este proveedor',3),(1113,6,'mensaje8',',con codigo: ',3),(1114,6,'mensaje9',',ya esta resgistrado',3),(1115,6,'mensaje10','Se ha registrado correctamente el proveedor: ',3),(1116,6,'mensaje11','Error al insertar el proveedor ',3),(1117,6,'mensaje12',', intentelo de nuevo',3),(1118,6,'mensaje13','No se ha eliminado correctamente el proveedor',3),(1119,6,'mensaje14','El proveedor ha sido eliminado Corectamente',3),(1120,6,'mensaje15','El proveedor no ha sido eliminado Corectamente',3),(1121,6,'mensaje16','Este producto ',3),(1122,6,'mensaje17',' ya fue asignado a este proveedor ',3),(1123,6,'mensaje18','Se ha relacionado bien el producto ',3),(1124,6,'mensaje19',' en proveedor ',3),(1125,6,'mensaje20','No se ha relacionado bien el producto ',3),(1126,6,'mensaje21',' en proveedor ',3),(1127,6,'mensaje22',', intenlo de nuevo',3),(1128,6,'mensaje23','Debe digitar un valor mayor a 0, del producto ',3),(1129,6,'mensaje24','Se ha actualizado correctamente el producto proveedor',3),(1130,6,'mensaje25','NO se ha actualizado correctamente el producto proveedor',3),(1131,6,'mensaje26','Se ha eliminado correctamente el producto ',3),(1132,6,'mensaje27','No se ha eliminado correctamente el producto ',3),(1133,7,'L_TituloMensajes','MENSAJES',3),(1134,7,'Nombre','Nombre',3),(1135,7,'Email','Email',3),(1136,7,'Mensaje','Mensaje',3),(1137,9,'B_CajeroConsulta','Consultar Pedidos',3),(1138,9,'B_ActualizarDatos','Actualizar Datos',3),(1139,10,'L_TituloConsultaCajero','INGRESE EL NUMERO DE CEDULA DEL CLIENTE A BUSCAR PEDIDO',3),(1140,10,'L_TtituloPedido','Buscar Pedido Cliente. CEDULA : ',3),(1141,10,'B_BuscarCedula','Buscar',3),(1142,10,'REV_NumerosCedula','Solo numeros',3),(1143,10,'Proveedor','Proveedor',3),(1144,10,'Producto','Producto',3),(1145,10,'Descripcion','Descripcion',3),(1146,10,'Precio','Precio',3),(1147,10,'Cantidad','Cantidad',3),(1148,10,'Total','Total',3),(1149,10,'horadereserva','hora de reserva ',3),(1150,10,'Eliminar','Eliminar',3),(1151,10,'B_vender','VENDER PRODUCTOS',3),(1152,10,'L_titulototalpedido','Total Pedido',3),(1153,10,'L_TituloConsultaProductos','INGRESE EL PRODUCTO A BUSCAR',3),(1154,10,'L_TituloProducto','Buscar Producto',3),(1155,10,'B_BuscarProducto','Buscar',3),(1156,10,'REV_letras_numeros0','Sole letras y numeros',3),(1157,10,'L_TituloProducto1','Producto',3),(1158,10,'L_TituloProveedor','Proveedor',3),(1159,10,'L_TituloPrecio','Precio',3),(1160,10,'L_TiruloCantidad','Cantidad',3),(1161,10,'REV_SoloNumeros','Solo numeros',3),(1162,10,'B_Comprar','Comprar',3),(1163,10,'mensaje1','NO HAY PEDIDO DE ESTE CLIENTE O NO EXISTE',3),(1164,10,'mensaje2','NO SE ENCONTRARON RESULTADOS',3),(1165,10,'mensaje3','Error al enviar el mensaje intente de nuevo o mas tarde',3),(1166,10,'mensaje4','Se ha registrado correctamente el producto',3),(1167,10,'mensaje5','Error en registrar el producto intentelo de nuevo',3),(1168,10,'mensaje6','Se ha borrado corretamente el producto',3),(1169,10,'mensaje7','No se ha borrado corretamente el producto, vuelva a intentarlo',3),(1170,10,'mensaje8','Se ha vendido correctamente',3),(1171,10,'mensaje9','No se ha vendido correctamente, intentelo de nuevo',3),(1172,12,'B_contactenos','CONTACTENOS',3),(1173,12,'B_ManualUsuario','MANUAL DE USUARIO',3),(1174,12,'LB_Login','INICIAR SESION',3),(1175,12,'I_Catalogo','~/Imagenes/ImagenesWeb/catalogo.jpg',3),(1176,12,'L_Producto','BUSCAR PRODUCTO',3),(1177,12,'B_Buscar','Buscar',3),(1178,12,'REV_letras_numeros','Solo letras y numeros',3),(1179,12,'L_Titulo','PRODUCTO',3),(1180,12,'L_Subtitulo','PRECIO',3),(1181,12,'L_TituloProve','PROVEEDOR',3),(1182,12,'B_Comprar','Comprar',3),(1183,12,'Mensaje1','NO SE ENCONTRARON RESULTADOS',3),(1184,13,'B_ClienteProducto','PRODUCTOS',3),(1185,13,'B_ClienteCarro','CARRO',3),(1186,13,'B_Facturas','FACTURAS PEDIDO',3),(1187,13,'B_Contactar','CONTACTAR',3),(1188,13,'B_ActualizarDatos','ACTUALIZAR DATOS',3),(1189,14,'L_TituloActualizarDatos','ACTUALIZAR DATOS',3),(1190,14,'L_Cedula','Numero de cedula',3),(1191,14,'REV_CedulaNumeros','Solo numeros',3),(1192,14,'L_Nombres','Nombres',3),(1193,14,'REV_NombresLetras','Solo letras',3),(1194,14,'L_Apellidos','Apellidos',3),(1195,14,'REV_ApellidosLetras','Solo letras',3),(1196,14,'L_Direccion','Direccion de residencia',3),(1197,14,'L_Correo','Correo electronico',3),(1198,14,'REV_correo','Correo invalido',3),(1199,14,'L_Telefono','Telefono',3),(1200,14,'REV_TelefonoNumeros','Solo numeros',3),(1201,14,'L_Contraseña','Contraseña actual',3),(1202,14,'L_ContraseñaN','Contraseña nueva ',3),(1203,14,'L_ContraseñaNConf','Confirmar contraseña nueva',3),(1204,14,'L_Imagen','Imagen',3),(1205,14,'L_Login','Usuario (Login)',3),(1206,14,'B_ActualizarDatos','Actualizar datos',3),(1207,14,'mensaje1','Ese Usuario ya se encuentra registrado, intente con otro',3),(1208,14,'mensaje2','La Contraseña Actual no es correcta',3),(1209,14,'mensaje3','La contraseña nueva no coinciden',3),(1210,14,'mensaje4','No se admite ese tipo de imagen o archivo',3),(1211,14,'mensaje5','Se ha Actualizado Correctamente',3),(1212,15,'L_TituloCantidad','CANTIDAD DE PRODUCTOS DISPONIBLES',3),(1213,15,'L_TituloProducto','Producto',3),(1214,15,'L_TituloCantidad1','Cantidad',3),(1215,15,'L_TituloModCarrito','MODIFICAR O ELIMINAR CARRITO PEDIDO',3),(1216,15,'Proveedor','Proveedor',3),(1217,15,'Producto','Producto',3),(1218,15,'Decripcion','Descripcion',3),(1219,15,'Precio','Precio',3),(1220,15,'Cantidad','Cantidad',3),(1221,15,'Total','Total',3),(1222,15,'Fecha','Fecha',3),(1223,15,'Estado','Estado',3),(1224,15,'Editar','Editar',3),(1225,15,'Eliminar','Eliminar',3),(1226,15,'L_MensajeTotal','TOTAL PEDIDO',3),(1227,15,'B_Comprar','APARTAR PRODUCTOS',3),(1228,15,'Label4','CARRITO DE COMPRAS',3),(1229,15,'mensaje1','Se ha comprado correctamente',3),(1230,15,'mensaje2','No se comprado correctamente intente de nuevo',3),(1231,15,'mensaje3','Se ha borrado correctamente el producto',3),(1232,15,'mensaje4','No se ha borrado corretamente el producto, vuelva a intentarlo',3),(1233,15,'mensaje5','Digite la cantidad de ',3),(1234,15,'mensaje6',' a comprar. ',3),(1235,15,'mensaje7','Cantidad disponible: ',3),(1236,15,'mensaje8','La cantidad a modificar de ',3),(1237,15,'mensaje9',' debe ser diferente al actual.',3),(1238,15,'mensaje10','Cantidad disponible: ',3),(1239,15,'mensaje11','Ya no hay esa cantidad de ',3),(1240,15,'mensaje12',', intentelo de nuevo. ',3),(1241,15,'mensaje13','Cantidad disponible: ',3),(1242,15,'mensaje14','La cantidad de ',3),(1243,15,'mensaje15',' debe ser mayor a cero(0). ',3),(1244,15,'mensaje16','Cantidad disponible: ',3),(1245,15,'mensaje17','Se ha modificado el pedido correctamente ',3),(1246,15,'mensaje18','No se ha modificado el pedido correctamente, vuelva a intentarlo',3),(1247,16,'L_TituloMensaje','INGRESE EL MENSAJE O QUEJA QUE TENGA!',3),(1248,16,'L_nombre','Nombre:',3),(1249,16,'REV_letras','Solo letras',3),(1250,16,'L_contactenos','Contactenos:',3),(1251,16,'L_email','E-mail:',3),(1252,16,'REV_correo','Correo invalido. Ejemplo: nombre@direccion.co',3),(1253,16,'L_pais','Pais: Colombia',3),(1254,16,'L_ciudad',' Ciudad: Facatativa',3),(1255,16,'L_telefono','  Telefono: 1800077549',3),(1256,16,'L_mail','E-mail: supermercadoonline@hotmail.com',3),(1257,16,'L_Mensaje','Mensaje',3),(1258,16,'RFV_Mensaje','MENSAJE OBLIGATORIO',3),(1259,16,'B_Enviar','Enviar',3),(1260,16,'mensaje1','Error al enviar el mensaje intente de nuevo o mas tarde',3),(1261,16,'mensaje2','Se ha enviado correctamente',3),(1262,16,'mensaje3','Error al enviar el mensaje intente de nuevo o mas tarde',3),(1263,17,'L_TituloInserProductos','INGRESAR PRODUCTOS AL CARRITO',3),(1264,17,'L_Producto','Buscar Producto',3),(1265,17,'B_Buscar','Buscar',3),(1266,17,'REV_letras_numeros','Solo letras y numeros',3),(1267,17,'L_TituloProducto','Producto',3),(1268,17,'L_TituloProve','Proveedor',3),(1269,17,'L_TituloPrecio','Precio',3),(1270,17,'L_TiruloCantidad','Cantidad',3),(1271,17,'REV_SoloNumeros','Solo numeros',3),(1272,17,'B_Comprar','Comprar',3),(1273,17,'mensaje1','NO SE ENCONTRARON RESULTADOS',3),(1274,17,'mensaje2','Error en registrar el producto, intentelo de nuevo',3),(1275,17,'mensaje3','Se ha registrado correctamente el producto',3),(1276,17,'mensaje4','Error en registrar el producto,intentelo de nuevo',3),(1277,17,'mensaje5','Digite la cantidad de ',3),(1278,17,'mensaje6',' a comprar',3),(1279,17,'mensaje7','Ya no hay esa cantidad de ',3),(1280,17,'mensaje8',', intentelo de nuevo',3),(1281,17,'mensaje9','La cantidad de ',3),(1282,16,'mensaje10',' debe ser mayor a cero(0)\"',3),(1283,18,'L_TituloPedidos','PEDIDOS REALIZADOS',3),(1284,18,'Seleccione','Seleccione',3),(1285,18,'NumeroRecibo','Numero Recibo',3),(1286,18,'Fecha Diaria','Fecha Diaria',3),(1287,19,'B_Login','INICIAR SESION',3),(1288,19,'B_Catalogo','CATALOGO',3),(1289,19,'L_TituloMensajeVisitante','MENSAJE O QUEJA AL SUPERMERCADO',3),(1290,19,'L_Nombre','Nombre',3),(1291,19,'REV_letras','Solo letras',3),(1292,19,'L_EMail','Correo',3),(1293,19,'REV_correo','Correo invalido. Ejemplo: nombre@direccion.co',3),(1294,19,'L_pais','Pais:Colombia',3),(1295,19,'L_ciudad','Ciudad:Facatativa',3),(1296,19,'L_Telefono','Telefono: 1800077549',3),(1297,19,'L_mail',' E-mail: supermercadoonline@hotmail.com',3),(1298,19,'L_Mensaje','Mensaje',3),(1299,19,'RFV_Mensaje','MENSAJE OBLIGATORIO',3),(1300,19,'B_Enviar','Enviar',3),(1301,19,'mensaje1','Error al enviar el mensaje intente de nuevo o mas tarde',3),(1302,19,'mensaje2','Se ha enviado correctamente',3),(1303,19,'mensaje3','Error al enviar el mensaje intente de nuevo o mas tarde',3),(1304,20,'I_paginafueraS','~/Imagenes/ImagenesWeb/pagina fuera de servicio.png',3),(1305,20,'I_VuelvaPronto','~/Imagenes/ImagenesWeb/vuelva pronto.png',3),(1306,21,'B_contactenos','Contactenos',3),(1307,21,'B_ManualUsuario','Manual de Usuario',3),(1308,21,'LB_Catalogo','Catalogo',3),(1309,21,'L_0','Iniciar Sesion',3),(1310,21,'L_1','¡¡Registrarse ahora!!',3),(1311,21,'L_Usuario','Usuario',3),(1312,21,'L_ContraseñaLogin','Contraseña',3),(1313,21,'B_inicio_sesion','Inicio de Sesion',3),(1314,21,'LB_ContraseñaOlvido','¿Olvido Su contraseña?',3),(1315,21,'L_idioma','Idioma',3),(1316,21,'L_Nombres','Nombre',3),(1317,21,'L_Apellidos','Apellidos',3),(1318,21,'L_Cedula','Numero de Cedula',3),(1319,21,'L_Direccion','Direccion de Residencia',3),(1320,21,'L_Correo','Correo Electronico:',3),(1321,21,'L_etiqueta7','Telefono',3),(1322,21,'L_UsuarioIng','Usuario (Login)',3),(1323,21,'L_ContraseñaIng','Contraseña',3),(1324,21,'L_ContraseñaConfIngNue','Confirmar Contraseña',3),(1325,21,'L_Imagen','Imagen',3),(1326,21,'REV_letrasNombre','Solo Letras',3),(1327,21,'REV_letrasApellidos','Solo Letras',3),(1328,21,'REV_NumerosCedula','Solo numeros',3),(1329,21,'REV_correo','Correo Invalido. Ejemplo:nombre@direccion.com',3),(1330,21,'REV_Numeros1','Solo Numeros',3),(1331,21,'B_CrearCuenta','Crear Cuenta',3),(1332,21,'mensaje1','Bienvenido Administrador',3),(1333,21,'mensaje2','Bienvenido Cliente',3),(1334,21,'mensaje3','Bienvenido Cajero',3),(1335,21,'mensaje4','Error en el usuario o contraseña',3),(1336,21,'mensaje5','Ese Usuario(Login) ya se encuentra registrado, intente con otro',3),(1337,21,'mensaje6','Las contraseñas no coinciden',3),(1338,21,'mensaje7','No se admite ese tipo de imagen',3),(1339,21,'mensaje8','Este Usuario con numero de cedula: ',3),(1340,21,'mensaje9',', ya esta resgistrado',3),(1341,21,'mensaje10','Se ha registrado correctamente',3),(1342,21,'mensaje11','No se ha podido registrar el usuario, intentelo de nuevo',3),(1343,23,'L_TituloRecupContra','RECUPERAR CONTRASEÑA',3),(1344,23,'L_TituloCedula','Digite la cedula: ',3),(1345,23,'REV_NumerosCedula','Solo numeros',3),(1346,23,'B_Enviar','Enviar',3),(1347,23,'mensaje1','Recuperacion de usuario y contraseña - SupermercadoOnline',3),(1348,23,'mensaje2','Que tenga una feliz mañana',3),(1349,23,'mensaje3','Que tenga una feliz tarde',3),(1350,23,'mensaje4','Que tenga una feliz noche',3),(1351,23,'mensaje5','Señor(a) ',3),(1352,23,'mensaje6','Cedula de ciudadania: ',3),(1353,23,'mensaje7','Correo Electronico: ',3),(1354,23,'mensaje8','Su Usuario es: ',3),(1355,23,'mensaje9',' Y su Contraseña es: ',3),(1356,23,'mensaje10','Recuerde no olvidar su usuario y contraseña de nuevo. ',3),(1357,23,'mensaje11','Atentamente:  ',3),(1358,23,'mensaje12','SupermercadoOnline',3),(1359,23,'mensaje13','Se ha enviado correctamente el usuario y la contraseña al correo electronico',3),(1360,23,'mensaje14','No se ha enviado correctamente la contraseña al correo electronico, usuario ',3),(1361,23,'mensaje15','No valido o no existe',3),(1362,1,'L_FechaMensaje','Fecha Actual',3),(1363,1,'L_TUsuario','Usuario',3),(1364,1,'L_TEMail','EMAIL',3),(1365,1,'L_TTipoUsuario','Tipo de usuario',3),(1366,1,'LB_CerrarSesion','Cerrar Sesion',3),(1367,2,'I_ProductoNuevo','~//Imagenes//ImagenesWeb//vvv.jpg',3),(1368,13,'java1','Productos Cliente',3),(1369,13,'java2','Carro productos Cliente',3),(1370,23,'java1','Compruebe su conexion a internet',3),(1371,15,'lb_apartado','Apartado',3),(1372,15,'lb_noapartado','No Apartado',3),(1373,4,'ddl_seleccione','--seleccione--',3),(1374,5,'ddl_seleccione5','--seleccione--',3),(1375,6,'ddl_seleccione6','--seleccione--',3),(1376,6,'ddl_seleccione6.1','--seleccione--',3),(1377,21,'ddl_idiomaItem1','Español',3),(1378,21,'ddl_idiomaItem2','Ingles',3),(1379,1,'Administrador','Administrador',3),(1380,1,'Cliente','Cliente',3),(1381,1,'Cajero','Cajero',3),(1382,8,'TituloUtilidad','Utilidad de los Productos',3),(1383,8,'nombreUtilidad','Nombre Producto',3),(1384,8,'provedorUtilidad','Nombre Proveedor',3),(1385,8,'ventaUtilidad','Precio Venta',3),(1386,8,'compraUtilidad','Precio Compra',3),(1387,8,'utilidad','Utilidad',3),(1388,8,'totalUtilidad','Total Utilidad',3),(1389,11,'Factura Pedido','Factura Pedido',3),(1390,11,'Cajero','Cajero',3),(1391,11,'Cliente','Cliente',3),(1392,11,'nombreProducto','Nombre Producto',3),(1393,11,'valorUnitario','valor unitario',3),(1394,11,'cantidad','Cantidad',3),(1395,11,'TotalProducto','Total Producto',3),(1396,11,'Total Pedido','Total Pedido',3),(1397,18,'Factura Pedido','Factura Pedido',3),(1398,18,'Cliente','Cliente',3),(1399,18,'Nombre producto','Nombre producto',3),(1400,18,'Nombre proveedor','Nombre proveedor',3),(1401,18,'Valor unitario','Valor unitario',3),(1402,18,'Cantidad','Cantidad',3),(1403,18,'Total producto','Total producto',3),(1404,18,'Total Pedido','Total Pedido',3),(1405,18,'Seleccione1','Seleccione',3),(1406,22,'L_ManualUsuario','Manual de Usuario',3),(1407,22,'L_Catalogo','Catalogo',3),(1408,22,'L_TextoCatalogo','En el catálogo general se encuentra los productos que están en venta, puede buscar un producto en especial o dejar un comentario o mensaje, dándole clic en el botón contáctenos, o iniciar sesión si tiene una cuenta existente.',3),(1409,22,'L_InicioSesion','Inicio de sesion',3),(1410,22,'L_InicioSesionSub','Inicio de sesion',3),(1411,22,'L_TextoInicioSesion','Si el visitante se encuentra registrado actualmente, puede acceder con el usuario y la contraseña.',3),(1412,22,'L_RegistreseSub','REGISTRESE AHORA!',3),(1413,22,'L_TextoRegistrese','Si el visitante es nuevo en el sitio web puede registrarse de manera gratuita, debe ingresar como mínimo los nombres, apellidos, número de cedula, dirección de residencia, correo electrónico, teléfono, usuario (Login), contraseña y una imagen del usuario.',3),(1414,22,'L_Contactenos','CONTACTENOS',3),(1415,22,'L_TextoContactenos','En este formulario el visitante puede dejar un mensaje de las opiniones que tenga, referente al sitio web. Recordando que el nombre, e-mail y el mensaje son campos obligatorios.',3),(1416,22,'L_MenuClieOIni','MENU CLIENTE O INICIO CLIENTE',3),(1417,22,'L_TextoMenuCliente','Al iniciar sesión el cliente, podrá ver un formulario donde podrá agregar sus productos a comprar, mirar sus productos actuales en el carro de compras o actualizar sus datos personales.',3),(1418,22,'L_TextoDatosUsuario','Al iniciar sesión se mostrar la foto del cliente, nombres y apellidos del usuario, email, tipo de usuario: Cliente, un botonlink para cerrar sesión si lo desea.',3),(1419,22,'L_DatosUsuario','DATOS DE USUARIO',3),(1420,22,'L_AgregarProductos','AGREGAR PRODUCTOS',3),(1421,22,'L_TextoAgregarProductos','En este formulario el cliente podrá apartar sus productos al carrito de compras, pero recordando que no puede superar la cantidad establecida, también puede buscar un producto en especial, ver su carrito o devolverse a la página de inicio del cliente.',3),(1422,22,'L_CarritoCompras','CARRITO DE COMPRAS',3),(1423,22,'L_TextoCarritoCompras','En este formulario el cliente puede apartar sus productos o comprarlos, puede editar su carrito y eliminar un producto que no desee, puede devolverse a la página de inicio del cliente y le muestra el precio total a pagar o total pedido.',3),(1424,22,'L_ActualizarDatos','ACTUALIZAR DATOS',3),(1425,22,'L_TextoActualizarDatos','Acá el cliente puede modificar sus datos personales (nombres, apellidos, número de cedula, dirección de residencia, correo electrónico, teléfono, usuario (Login), contraseña y la imagen).',3),(1426,22,'I_catalogo','~/Imagenes/ImagenesWeb/catalogo_manual_usuario.png',3),(1427,22,'I_Login','~/Imagenes/ImagenesWeb/login_manual_usuario.png',3),(1428,22,'I_Contactenos','~/Imagenes/ImagenesWeb/contactenos_manual_usuario.png',3),(1429,22,'I_InicioCliente','~/Imagenes/ImagenesWeb/inicio_cliente_manual_usuario.png',3),(1430,22,'I_DatosUsuario','~/Imagenes/ImagenesWeb/datos_usuario_manual_usuario.png',3),(1431,22,'I_AgregarProductos','~/Imagenes/ImagenesWeb/agregar_producto_manual_usuario.png',3),(1432,22,'I_carritoCompras','~/Imagenes/ImagenesWeb/carrito_compras_manual_usuario.png',3),(1433,22,'i_ActualizarDatos','~/Imagenes/ImagenesWeb/actualizar_datos_manual_usuario.png',3),(1434,24,'l_idioma','consulter',3),(1435,24,'l_nidioma','Nuevo idioma',3),(1436,24,'l_terminacion','Terminacion',3),(1437,24,'b_guardar','Guardar',3),(1438,24,'b_editar','Editar',3),(1439,24,'L_idiomaddl','Idioma',3),(1440,24,'l_formulario','Formulario',3),(1441,24,'l_mensaje','Mensaje',3),(1442,24,'b_consultar','consulter',3),(1443,24,'B_Modificaridio','Modificar',3),(1477,2,'B_idioma','CREAR Y EDITAR IDIOMA',1),(1478,2,'B_idioma','CREATE AND EDIT LANGUAGE',2),(1479,2,'B_idioma','CREAR Y EDITAR IDIOMA',3),(1480,24,'mensaje1','Idioma creado',1),(1481,24,'mensaje1','Language Created',2),(1482,24,'mensaje1','Idioma creado',3),(1483,24,'mensaje2','error al crear idioma',1),(1484,24,'mensaje2','error creating language',2),(1485,24,'mensaje2','error al crear idioma',3),(1486,24,'mensaje3','Idioma modificado',1),(1487,24,'mensaje3','Modified Language',2),(1488,24,'mensaje3','Idioma modificado',3),(1489,24,'mensaje4','Error al modificar Idioma',1),(1490,24,'mensaje4','Failed to modify Language',2),(1491,24,'mensaje4','Error al modificar Idioma',3),(1493,24,'mensaje5','Solo se aceptar imagenes formato .PNG, .gif, .jpeg, .jpg',1),(1494,24,'mensaje5','Only accept images format .PNG, .gif, .jpeg, .jpg',2),(1495,24,'mensaje5','Solo se aceptar imagenes formato .PNG, .gif, .jpeg, .jpg',3),(1496,24,'mensaje6','Nombre de Imagen Ya existente',1),(1497,24,'mensaje6','Image Name already exists',2),(1498,24,'mensaje6','Nombre de Imagen Ya existente',3);

/*Table structure for table `contactenos` */

DROP TABLE IF EXISTS `contactenos`;

CREATE TABLE `contactenos` (
  `id_contactar` int(10) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `mensaje` text,
  PRIMARY KEY (`id_contactar`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `contactenos` */

insert  into `contactenos`(id_contactar,nombre,email,mensaje) values (1,'a','a@supermercadoonline.com','Hola'),(2,'dd','a@h.com','54545454----'),(3,'a','a@h.com','a +++     @  '),(4,'paola','d.s.a.r@hotmail.com','hola'),(5,'Paola','d@h.com','fgjkl'),(6,'hsjdsf','d.s.a.r@hotmail.com','ghjk');

/*Table structure for table `estadopedido` */

DROP TABLE IF EXISTS `estadopedido`;

CREATE TABLE `estadopedido` (
  `idEstadoPedido` int(11) NOT NULL,
  `estadoPedido` text,
  PRIMARY KEY (`idEstadoPedido`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `estadopedido` */

insert  into `estadopedido`(idEstadoPedido,estadoPedido) values (1,'Apartado'),(2,'No Apartado');

/*Table structure for table `factura` */

DROP TABLE IF EXISTS `factura`;

CREATE TABLE `factura` (
  `idFactura` int(11) NOT NULL,
  `idVendedor` int(11) DEFAULT NULL,
  `idCliente` int(11) DEFAULT NULL,
  `fechaReserva` datetime DEFAULT NULL,
  `fechaEntrega` datetime DEFAULT NULL,
  PRIMARY KEY (`idFactura`),
  KEY `FK_factura_usuario` (`idVendedor`),
  KEY `FK_factura_usuario_2` (`idCliente`),
  CONSTRAINT `FK_factura_cliente` FOREIGN KEY (`idCliente`) REFERENCES `usuario` (`idUsuario`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_factura_vendedor` FOREIGN KEY (`idVendedor`) REFERENCES `usuario` (`idUsuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `factura` */

insert  into `factura`(idFactura,idVendedor,idCliente,fechaReserva,fechaEntrega) values (1,2342342,7654321,'2015-10-20 21:20:26','2015-10-22 15:29:33'),(2,NULL,NULL,NULL,NULL),(3,2342342,7654321,'2015-10-20 21:23:55','2015-10-22 15:30:00'),(4,2342342,7654321,'2015-10-22 13:38:23','2015-10-22 15:30:00'),(5,2342342,7654321,'2015-10-24 10:34:33','2015-10-24 10:35:52'),(6,2342342,7654321,'2015-10-24 12:15:30','2015-10-24 12:16:50'),(7,2342342,7654321,'2015-10-24 12:15:39','2015-10-24 12:16:50'),(8,2342342,7654321,'2015-10-24 12:25:29','2015-10-24 12:26:25'),(9,2342342,7654321,'2015-10-24 12:27:56','2015-10-24 12:29:32'),(10,2342342,7654321,'2015-10-24 12:40:28','2015-10-24 12:41:27'),(11,2342342,7654321,'2015-10-24 12:49:58','2015-10-24 12:50:32'),(12,2342342,7654321,'2015-10-24 12:52:56','2015-10-24 12:53:54'),(13,2342342,7654321,'2015-10-24 12:59:31','2015-10-24 13:00:52'),(14,2342342,7654321,'2015-10-24 13:02:48','2015-10-24 14:03:29');

/*Table structure for table `factura_pedido` */

DROP TABLE IF EXISTS `factura_pedido`;

CREATE TABLE `factura_pedido` (
  `idFactura` int(11) NOT NULL,
  `idCliente` int(11) DEFAULT NULL,
  `idProveedor` int(11) DEFAULT NULL,
  `idProducto` int(11) DEFAULT NULL,
  `unidadesProducto` int(11) DEFAULT NULL,
  PRIMARY KEY (`idFactura`),
  KEY `FK_factura_producto_producto` (`idProducto`),
  KEY `FK_factura_pedido_proveedor` (`idProveedor`),
  KEY `FK_factura_pedido_cliente` (`idCliente`),
  CONSTRAINT `FK_factura_pedido_cliente` FOREIGN KEY (`idCliente`) REFERENCES `usuario` (`idUsuario`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `FK_factura_pedido_proveedor` FOREIGN KEY (`idProveedor`) REFERENCES `proveedor` (`idProveedor`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_factura_producto_prod` FOREIGN KEY (`idProducto`) REFERENCES `producto` (`idProducto`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `factura_pedido` */

insert  into `factura_pedido`(idFactura,idCliente,idProveedor,idProducto,unidadesProducto) values (1,7654321,6548465,4234234,13),(2,7654321,6548465,1234578,2),(3,7654321,6548465,4234234,2),(4,7654321,6548465,3123123,1),(5,7654321,6548465,3123123,1),(6,7654321,6548465,3123123,2),(7,7654321,6548465,5656446,2),(8,7654321,6548465,3123123,1),(9,7654321,6548465,3123123,1),(10,7654321,6548465,3123123,1),(11,7654321,6548465,3123123,1),(12,7654321,6548465,3123123,1),(13,7654321,5555555,1234577,2),(14,7654321,6548465,1234578,2);

/*Table structure for table `forms` */

DROP TABLE IF EXISTS `forms`;

CREATE TABLE `forms` (
  `id_formulario` int(100) NOT NULL,
  `formulario` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id_formulario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `forms` */

insert  into `forms`(id_formulario,formulario) values (1,'Master'),(2,'Administrador.aspx'),(3,'AdministradorAdquirirProducto.aspx'),(4,'AdministradorAgregarCajeros.aspx'),(5,'AdministradorAgregarProducto.aspx'),(6,'AdministradorAgregarProov.aspx'),(7,'AdministradorMensajes.aspx'),(8,'AdministradorUtilidad.aspx'),(9,'Cajero.aspx'),(10,'CajeroConsulta.aspx'),(11,'CajeroRecibo.aspx'),(12,'Catalogo.aspx'),(13,'Cliente.aspx'),(14,'ClienteActualizarDatos.aspx'),(15,'ClienteCarrito.aspx'),(16,'Clientemensaje.aspx'),(17,'ClienteProductos.aspx'),(18,'ClienteRecibo.aspx'),(19,'Contactenos.aspx'),(20,'ErrorAplicacion.aspx'),(21,'Login.aspx'),(22,'ManualUsuario.aspx'),(23,'OlvidoContraseña.aspx'),(24,'nuevo_idioma.aspx');

/*Table structure for table `formularios` */

DROP TABLE IF EXISTS `formularios`;

CREATE TABLE `formularios` (
  `id_formulario` int(11) NOT NULL AUTO_INCREMENT,
  `formulario` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_formulario`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

/*Data for the table `formularios` */

insert  into `formularios`(id_formulario,formulario) values (2,'administrador.aspx');

/*Table structure for table `idiomas` */

DROP TABLE IF EXISTS `idiomas`;

CREATE TABLE `idiomas` (
  `id_idioma` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(1000) DEFAULT NULL,
  `terminacion` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id_idioma`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `idiomas` */

insert  into `idiomas`(id_idioma,nombre,terminacion) values (1,'Español','ES-CO'),(2,'Ingles','EN-US'),(3,'Frances','FR-Paris');

/*Table structure for table `pedido` */

DROP TABLE IF EXISTS `pedido`;

CREATE TABLE `pedido` (
  `idPedido` int(11) NOT NULL,
  `idCliente` int(11) DEFAULT NULL,
  `fechaPedido` datetime DEFAULT NULL,
  `idEstadoPedido` int(11) DEFAULT NULL,
  PRIMARY KEY (`idPedido`),
  KEY `FK_pedido_usuario` (`idCliente`),
  KEY `FK_pedido_estadopedido` (`idEstadoPedido`),
  CONSTRAINT `FK_pedido_cliente` FOREIGN KEY (`idCliente`) REFERENCES `usuario` (`idUsuario`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_pedido_estado` FOREIGN KEY (`idEstadoPedido`) REFERENCES `estadopedido` (`idEstadoPedido`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `pedido` */

insert  into `pedido`(idPedido,idCliente,fechaPedido,idEstadoPedido) values (1,1,'2015-10-03 10:38:08',1),(2,4456646,'2015-10-03 10:38:50',1),(3,4456646,'2015-10-03 10:39:23',1),(4,4456646,'2015-10-03 10:39:43',1),(5,4456646,'2015-10-03 10:40:06',1),(6,1,'2015-10-03 10:41:44',1),(7,1,'2015-10-03 10:43:04',2),(9,7654321,'2015-10-24 14:02:08',1),(10,7654321,'2015-10-24 14:02:19',1),(11,7654321,'2015-10-24 14:26:32',1),(12,1234566,'2015-10-24 20:43:57',2);

/*Table structure for table `pedido_producto` */

DROP TABLE IF EXISTS `pedido_producto`;

CREATE TABLE `pedido_producto` (
  `idPedido` int(11) NOT NULL AUTO_INCREMENT,
  `idCliente` int(11) DEFAULT NULL,
  `idProducto` int(11) DEFAULT NULL,
  `idProveedor` int(11) DEFAULT NULL,
  `unidadesProducto` int(11) DEFAULT NULL,
  PRIMARY KEY (`idPedido`),
  KEY `FK_pedido_producto_producto` (`idProducto`),
  KEY `FK_pedido_producto_proveedor` (`idProveedor`),
  KEY `FK_pedido_producto_usuario` (`idCliente`),
  CONSTRAINT `FK_pedido_producto_prod` FOREIGN KEY (`idProducto`) REFERENCES `producto` (`idProducto`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_pedido_producto_proveedor` FOREIGN KEY (`idProveedor`) REFERENCES `proveedor` (`idProveedor`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_pedido_producto_usuario` FOREIGN KEY (`idCliente`) REFERENCES `usuario` (`idUsuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `pedido_producto` */

insert  into `pedido_producto`(idPedido,idCliente,idProducto,idProveedor,unidadesProducto) values (1,1,3123123,6548465,5),(2,4456646,4234234,6548465,9),(3,4456646,4234234,6548465,10),(4,4456646,7865464,6548465,30),(5,4456646,1212121212,5555555,41),(6,1,1234577,5555555,1),(7,1,4234234,6548465,4),(9,7654321,3123123,6548465,3),(10,7654321,1234578,6548465,2),(11,7654321,1234578,6548465,2),(12,1234566,3123123,6548465,2);

/*Table structure for table `producto` */

DROP TABLE IF EXISTS `producto`;

CREATE TABLE `producto` (
  `idProducto` int(11) NOT NULL,
  `nombreProducto` text,
  `descripcionProducto` text,
  `imagenProducto` text,
  PRIMARY KEY (`idProducto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `producto` */

insert  into `producto`(idProducto,nombreProducto,descripcionProducto,imagenProducto) values (1234577,'Tomate','Tomate de Boyaca.','~\\Imagenes\\Productos\\7.jpg'),(1234578,'Frijol','frijol.','~\\Imagenes\\Productos\\3.jpg'),(3123123,'Mango','Mango de tierra caliente','~\\Imagenes\\Productos\\0.jpg'),(4234234,'Arroz','Arroz chino supremo.','~\\Imagenes\\Productos\\2.jpg'),(4356578,'Comino','esto es un comino','~\\Imagenes\\Productos\\6.jpg'),(5656446,'Manzana verde','Manzana verde de tierra caliente.','~\\Imagenes\\Productos\\4.jpg'),(7865464,'Fresa','Fruta 100% jugosa.','~\\Imagenes\\Productos\\5.jpg'),(1212121212,'Maiz','maizzzz rico!','~\\Imagenes\\Productos\\1.jpg');

/*Table structure for table `producto_proveedor` */

DROP TABLE IF EXISTS `producto_proveedor`;

CREATE TABLE `producto_proveedor` (
  `idProducto_proveedor` int(11) NOT NULL,
  `idProducto` int(11) DEFAULT NULL,
  `idProveedor` int(11) DEFAULT NULL,
  `precioProducto` double DEFAULT NULL,
  `precioProductoV` double DEFAULT NULL,
  `cantidadProducto` int(11) DEFAULT NULL,
  PRIMARY KEY (`idProducto_proveedor`),
  KEY `FK_producto_proveedor_proveedor` (`idProveedor`),
  KEY `FK_producto_proveedor_pro` (`idProducto`),
  CONSTRAINT `FK_producto_proveedor_pro` FOREIGN KEY (`idProducto`) REFERENCES `producto` (`idProducto`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_producto_proveedor_prov` FOREIGN KEY (`idProveedor`) REFERENCES `proveedor` (`idProveedor`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `producto_proveedor` */

insert  into `producto_proveedor`(idProducto_proveedor,idProducto,idProveedor,precioProducto,precioProductoV,cantidadProducto) values (1,4234234,6548465,230,20,2),(2,7865464,6548465,260,300,0),(3,5656446,6548465,450,600,33),(4,1234578,6548465,500.25,700,27),(5,3123123,6548465,300,500,31),(6,1212121212,5555555,333,433,0),(7,4234234,5555555,420,555,90),(8,1234577,5555555,339,589,41),(9,4234234,2342342,5000,788,3),(10,4356578,2342342,6799,7890,3);

/*Table structure for table `proveedor` */

DROP TABLE IF EXISTS `proveedor`;

CREATE TABLE `proveedor` (
  `idProveedor` int(11) NOT NULL,
  `nombreProveedor` text,
  `direccionProveedor` text,
  `telefonoProveedor` text,
  `emailProveedor` text,
  `logoProveedor` text,
  PRIMARY KEY (`idProveedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `proveedor` */

insert  into `proveedor`(idProveedor,nombreProveedor,direccionProveedor,telefonoProveedor,emailProveedor,logoProveedor) values (2342342,'adas','dadasd','2342342343','aloapaerdna94@gmail.com','~\\Imagenes\\Logo\\3.jpg'),(4564564,'Alpina S.A','calle 23423-56 N 8','3212121131','Alpina@lo.co','~\\Imagenes\\Logo\\1.jpg'),(4654526,'Ramo S.A','calle 23423-56 N 8 via Madrid','3124026790','ramo@joj.co','~\\Imagenes\\Logo\\0.jpeg'),(5456456,'Alqueria S.A','calle 23-234 sur Bogota','3124582698','alqueria@wer.co','~\\Imagenes\\Logo\\0.jpg'),(5555555,'Tenerite','call 34 N 3-45','3204589878','tenerite@gmail.com','~\\Imagenes\\Logo\\0.png'),(6548465,'Abastos','calle 45 67 -N67','8264488888','abastos@abastos.com','~\\Imagenes\\Logo\\0.gif');

/*Table structure for table `seguridad` */

DROP TABLE IF EXISTS `seguridad`;

CREATE TABLE `seguridad` (
  `id_seguridad` int(11) NOT NULL,
  `accion` varchar(30) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `usuario` varchar(30) DEFAULT NULL,
  `tabla` varchar(50) DEFAULT NULL,
  `id_registro` varchar(100) DEFAULT NULL,
  `ip` varchar(20) DEFAULT NULL,
  `mac_address` varchar(100) DEFAULT NULL,
  `nom_campo_mod` varchar(1000) DEFAULT NULL,
  `valor_ant_campo` varchar(10000) DEFAULT NULL,
  `nuevo_valor_campo` varchar(10000) DEFAULT NULL,
  PRIMARY KEY (`id_seguridad`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `seguridad` */

insert  into `seguridad`(id_seguridad,accion,fecha,usuario,tabla,id_registro,ip,mac_address,nom_campo_mod,valor_ant_campo,nuevo_valor_campo) values (1,'Ingresar','2015-09-29 18:57:11','visitante','Visitante','1','186.147.87.181','D4-8C-B5-3C-BA-C4','nickname,password','','hermosa,princesa'),(2,'Insertar Producto','2015-09-29 18:57:59','hermosa','Administrador','10101010','186.147.87.181','D4-8C-B5-3C-BA-C4','id,nombre,descripcion,imagen','','10101010,Arroz,Arroz 100% Colombiano de supremo,~\\Imagenes\\Productos\\0.jpg'),(3,'Modificar Producto','2015-09-29 18:58:23','hermosa','Administrador','10101010','186.147.87.181','D4-8C-B5-3C-BA-C4','id,nombre,descripcion,imagen','10101010,Arroz,Arroz 100% Colombiano de supremo,~\\Imagenes\\Productos\\0.jpg','10101010,Arroz,Arroz 100% Colombiano de supremo,~\\Imagenes\\Productos\\0.jpg'),(4,'Insertar Producto','2015-09-29 18:59:28','hermosa','Administrador','1212121212','186.147.87.181','D4-8C-B5-3C-BA-C4','id,nombre,descripcion,imagen','','1212121212,Pasta,maizzzz pasta,~\\Imagenes\\Productos\\1.jpg'),(5,'Insertar Proveedor','2015-09-29 19:00:23','hermosa','Administrador','10100101','186.147.87.181','D4-8C-B5-3C-BA-C4','id,nombre,direccion,telefono,correo,logo','','10100101,Papa,calle chocorramo,123123123,prove@hahah.co,~\\Imagenes\\Logo\\0.jpg'),(6,'Insertar Producto Proveedor','2015-09-29 19:00:54','hermosa','Administrador','1','186.147.87.181','D4-8C-B5-3C-BA-C4','id,nombreProducto,nombreProveedor,precioProducto','','1,Arroz,Papa,500'),(7,'Insertar Producto Proveedor','2015-09-29 19:01:06','hermosa','Administrador','2','186.147.87.181','D4-8C-B5-3C-BA-C4','id,nombreProducto,nombreProveedor,precioProducto','','2,Arroz,Papa,899'),(8,'Ingresar','2015-09-29 22:07:20','visitante','Visitante','1','190.84.131.38','D4-8C-B5-3C-BA-C4','nickname,password','','hermosa,princesa'),(9,'Eliminar Proveedor','2015-09-29 22:07:27','hermosa','Administrador','10100101','190.84.131.38','D4-8C-B5-3C-BA-C4','idProveedor,nombreProveedor,direccionProveedor,telefonoProveedor,emailProveedor,logoProveedor','10100101,Papa,calle chocorramo,123123123,prove@hahah.co,~\\Imagenes\\Logo\\0.jpg',''),(10,'Insertar Proveedor','2015-09-29 22:09:22','hermosa','Administrador','5555555','190.84.131.38','D4-8C-B5-3C-BA-C4','id,nombre,direccion,telefono,correo,logo','','5555555,Tenerite,call 34 N 3-45,3204589878,tenerite@gmail.com,~\\Imagenes\\Logo\\0.png'),(11,'Insertar Producto Proveedor','2015-09-29 22:09:54','hermosa','Administrador','1','190.84.131.38','D4-8C-B5-3C-BA-C4','id,nombreProducto,nombreProveedor,precioProducto','','1,Arroz,Tenerite,1200'),(12,'Modificar Producto','2015-09-29 22:12:30','hermosa','Administrador','10101010','190.84.131.38','D4-8C-B5-3C-BA-C4','id,nombre,descripcion,imagen','10101010,Arroz,Arroz 100% Colombiano de supremo,~\\Imagenes\\Productos\\0.jpg','10101010,Arroz,Arroz 100% Colombiano de supremo,~\\Imagenes\\Productos\\0.jpg'),(13,'Eliminar Producto','2015-09-29 22:12:49','hermosa','Administrador','10101010','190.84.131.38','D4-8C-B5-3C-BA-C4','id,nombre,descripcion,imagen','10101010,Arroz,Arroz 100% Colombiano de supremo,~\\Imagenes\\Productos\\0.jpg',''),(14,'Insertar Producto','2015-09-29 22:13:33','hermosa','Administrador','5465464','190.84.131.38','D4-8C-B5-3C-BA-C4','id,nombre,descripcion,imagen','','5465464,Arroz,Arroz supremo,~\\Imagenes\\Productos\\0.jpg'),(15,'Modificar Producto','2015-09-29 22:16:01','hermosa','Administrador','5465464','190.84.131.38','D4-8C-B5-3C-BA-C4','id,nombre,descripcion,imagen','5465464,Arroz,Arroz supremo,~\\Imagenes\\Productos\\0.jpg','5465464,Arroz,Arroz supremo,~\\Imagenes\\Productos\\0.jpg'),(16,'Eliminar Producto','2015-09-29 22:16:11','hermosa','Administrador','5465464','190.84.131.38','D4-8C-B5-3C-BA-C4','id,nombre,descripcion,imagen','5465464,Arroz,Arroz supremo,~\\Imagenes\\Productos\\0.jpg',''),(17,'Insertar Producto','2015-09-29 22:16:40','hermosa','Administrador','3123123','190.84.131.38','D4-8C-B5-3C-BA-C4','id,nombre,descripcion,imagen','','3123123,Papa,Papa pastusa.,~\\Imagenes\\Productos\\0.jpg'),(18,'Insertar Producto','2015-09-29 22:17:15','hermosa','Administrador','4234234','190.84.131.38','D4-8C-B5-3C-BA-C4','id,nombre,descripcion,imagen','','4234234,Arroz,Arroz chino supremo.,~\\Imagenes\\Productos\\2.jpg'),(19,'Modificar Producto','2015-09-29 22:17:44','hermosa','Administrador','3123123','190.84.131.38','D4-8C-B5-3C-BA-C4','id,nombre,descripcion,imagen','3123123,Papa,Papa pastusa.,~\\Imagenes\\Productos\\0.jpg','3123123,Mango,Mango de tierra caliente,~\\Imagenes\\Productos\\0.jpg'),(20,'Insertar Producto','2015-09-29 22:20:11','hermosa','Administrador','1234578','190.84.131.38','D4-8C-B5-3C-BA-C4','id,nombre,descripcion,imagen','','1234578,Frijol,frijol.,~\\Imagenes\\Productos\\3.jpg'),(21,'Insertar Producto','2015-09-29 22:21:35','hermosa','Administrador','5656446','190.84.131.38','D4-8C-B5-3C-BA-C4','id,nombre,descripcion,imagen','','5656446,Manzana verde,Manzana verde de tierra caliente.,~\\Imagenes\\Productos\\4.jpg'),(22,'Insertar Producto','2015-09-29 22:22:18','hermosa','Administrador','7865464','190.84.131.38','D4-8C-B5-3C-BA-C4','id,nombre,descripcion,imagen','','7865464,Fresa,Fruta 100% jugosa.,~\\Imagenes\\Productos\\5.jpg'),(23,'Insertar Producto','2015-09-29 22:25:25','hermosa','Administrador','5456456','190.84.131.38','D4-8C-B5-3C-BA-C4','id,nombre,descripcion,imagen','','5456456,Papaya,Papaya de la sierra nevada.,~\\Imagenes\\Productos\\6.jpg'),(24,'Insertar Producto','2015-09-29 22:26:17','hermosa','Administrador','1234577','190.84.131.38','D4-8C-B5-3C-BA-C4','id,nombre,descripcion,imagen','','1234577,Tomate,Tomate de Boyaca.,~\\Imagenes\\Productos\\7.jpg'),(25,'Eliminar Producto','2015-09-29 22:27:29','hermosa','Administrador','5456456','190.84.131.38','D4-8C-B5-3C-BA-C4','id,nombre,descripcion,imagen','5456456,Papaya,Papaya de la sierra nevada.,~\\Imagenes\\Productos\\6.jpg',''),(26,'Ingresar','2015-09-29 22:30:16','visitante','Visitante','1','190.84.131.38','D4-8C-B5-3C-BA-C4','nickname,password','','snh31d3r,todobien'),(27,'Insertar Proveedor','2015-09-29 22:33:54','snh31d3r','Administrador','6548465','190.84.131.38','D4-8C-B5-3C-BA-C4','id,nombre,direccion,telefono,correo,logo','','6548465,Abastos,calle 45 67 -N67,82644874,abastos@abastos.com,~\\Imagenes\\Logo\\0.gif'),(28,'Insertar Proveedor','2015-09-29 22:34:48','snh31d3r','Administrador','5687645','190.84.131.38','D4-8C-B5-3C-BA-C4','id,nombre,direccion,telefono,correo,logo','','5687645,Alpina S.A,calle 23423-56 N 8,3216548542,Alpina@lo.co,~\\Imagenes\\Logo\\0.jpg'),(29,'Modificar Proveedor','2015-09-29 22:35:08','snh31d3r','Administrador','6548465','190.84.131.38','D4-8C-B5-3C-BA-C4','idProveedor,nombreProveedor,direccionProveedor,telefonoProveedor,emailProveedor,logoProveedor','6548465,Abastos,calle 45 67 -N67,82644874,abastos@abastos.com,~\\Imagenes\\Logo\\0.gif','6548465,Abastos,calle 45 67 -N67,8264488888,abastos@abastos.com,~\\Imagenes\\Logo\\0.gif'),(30,'Insertar Proveedor','2015-09-29 22:36:02','snh31d3r','Administrador','5456456','190.84.131.38','D4-8C-B5-3C-BA-C4','id,nombre,direccion,telefono,correo,logo','','5456456,Alqueria S.A,calle 23-234 sur Bogota,3124582698,alqueria@wer.co,~\\Imagenes\\Logo\\1.jpg'),(31,'Eliminar Proveedor','2015-09-29 22:37:03','snh31d3r','Administrador','5687645','190.84.131.38','D4-8C-B5-3C-BA-C4','idProveedor,nombreProveedor,direccionProveedor,telefonoProveedor,emailProveedor,logoProveedor','5687645,Alpina S.A,calle 23423-56 N 8,3216548542,Alpina@lo.co,~\\Imagenes\\Logo\\0.jpg',''),(32,'Modificar Proveedor','2015-09-29 22:37:25','snh31d3r','Administrador','5456456','190.84.131.38','D4-8C-B5-3C-BA-C4','idProveedor,nombreProveedor,direccionProveedor,telefonoProveedor,emailProveedor,logoProveedor','5456456,Alqueria S.A,calle 23-234 sur Bogota,3124582698,alqueria@wer.co,~\\Imagenes\\Logo\\1.jpg','5456456,Alqueria S.A,calle 23-234 sur Bogota,3124582698,alqueria@wer.co,~\\Imagenes\\Logo\\0.jpg'),(33,'Insertar Proveedor','2015-09-29 22:38:37','snh31d3r','Administrador','4564564','190.84.131.38','D4-8C-B5-3C-BA-C4','id,nombre,direccion,telefono,correo,logo','','4564564,Alpina S.A,calle 23423-56 N 8,3212121131,Alpina@lo.co,~\\Imagenes\\Logo\\1.jpg'),(34,'Modificar Proveedor','2015-09-29 22:38:55','snh31d3r','Administrador','4564564','190.84.131.38','D4-8C-B5-3C-BA-C4','idProveedor,nombreProveedor,direccionProveedor,telefonoProveedor,emailProveedor,logoProveedor','4564564,Alpina S.A,calle 23423-56 N 8,3212121131,Alpina@lo.co,~\\Imagenes\\Logo\\1.jpg','4564564,Alpina S.A,calle 23423-56 N 8,3212121131,Alpina@lo.co,~\\Imagenes\\Logo\\1.jpg'),(35,'Insertar Proveedor','2015-09-29 22:40:17','snh31d3r','Administrador','4654526','190.84.131.38','D4-8C-B5-3C-BA-C4','id,nombre,direccion,telefono,correo,logo','','4654526,Ramo S.A,calle 23423-56 N 8 via Madrid,3124026790,ramo@joj.co,~\\Imagenes\\Logo\\0.jpeg'),(36,'Insertar Producto Proveedor','2015-09-29 22:40:38','snh31d3r','Administrador','1','190.84.131.38','D4-8C-B5-3C-BA-C4','id,nombreProducto,nombreProveedor,precioProducto','','1,Arroz,Abastos,250'),(37,'Insertar Producto Proveedor','2015-09-29 22:40:52','snh31d3r','Administrador','2','190.84.131.38','D4-8C-B5-3C-BA-C4','id,nombreProducto,nombreProveedor,precioProducto','','2,Fresa,Abastos,260'),(38,'Insertar Producto Proveedor','2015-09-29 22:41:12','snh31d3r','Administrador','3','190.84.131.38','D4-8C-B5-3C-BA-C4','id,nombreProducto,nombreProveedor,precioProducto','','3,Manzana verde,Abastos,450'),(39,'Insertar Producto Proveedor','2015-09-29 22:41:43','snh31d3r','Administrador','4','190.84.131.38','D4-8C-B5-3C-BA-C4','id,nombreProducto,nombreProveedor,precioProducto','','4,Frijol,Abastos,500.25'),(40,'Insertar Producto Proveedor','2015-09-29 22:42:00','snh31d3r','Administrador','5','190.84.131.38','D4-8C-B5-3C-BA-C4','id,nombreProducto,nombreProveedor,precioProducto','','5,Mango,Abastos,300'),(41,'Insertar Producto Proveedor','2015-09-29 22:42:48','snh31d3r','Administrador','6','190.84.131.38','D4-8C-B5-3C-BA-C4','id,nombreProducto,nombreProveedor,precioProducto','','6,Pasta,Tenerite,300'),(42,'Modificar Producto','2015-09-29 22:43:39','snh31d3r','Administrador','1212121212','190.84.131.38','D4-8C-B5-3C-BA-C4','id,nombre,descripcion,imagen','1212121212,Pasta,maizzzz pasta,~\\Imagenes\\Productos\\1.jpg','1212121212,Maiz,maizzzz rico!,~\\Imagenes\\Productos\\1.jpg'),(43,'Modificar Productos Proveedor','2015-09-29 22:44:50','snh31d3r','Administrador','6','190.84.131.38','D4-8C-B5-3C-BA-C4','id,nombreProducto,nombreProveedor,precioProducto','6,Maiz,Tenerite,300','6,Maiz,Tenerite,333'),(44,'Insertar Producto Proveedor','2015-09-29 22:45:18','snh31d3r','Administrador','7','190.84.131.38','D4-8C-B5-3C-BA-C4','id,nombreProducto,nombreProveedor,precioProducto','','7,Arroz,Tenerite,420'),(45,'Modificar Adquirir Producto','2015-09-29 22:46:22','snh31d3r','Administrador','1','190.84.131.38','D4-8C-B5-3C-BA-C4','id,precioProductoV,cantidadProducto',NULL,'1,400,40'),(46,'Modificar Adquirir Producto','2015-09-29 22:46:42','snh31d3r','Administrador','2','190.84.131.38','D4-8C-B5-3C-BA-C4','id,precioProductoV,cantidadProducto',NULL,'2,300,30'),(47,'Modificar Adquirir Producto','2015-09-29 22:46:52','snh31d3r','Administrador','3','190.84.131.38','D4-8C-B5-3C-BA-C4','id,precioProductoV,cantidadProducto',NULL,'3,600,35'),(48,'Modificar Adquirir Producto','2015-09-29 22:47:05','snh31d3r','Administrador','4','190.84.131.38','D4-8C-B5-3C-BA-C4','id,precioProductoV,cantidadProducto',NULL,'4,700,33'),(49,'Modificar Adquirir Producto','2015-09-29 22:47:20','snh31d3r','Administrador','5','190.84.131.38','D4-8C-B5-3C-BA-C4','id,precioProductoV,cantidadProducto',NULL,'5,500,50'),(50,'Modificar Adquirir Producto','2015-09-29 22:47:38','snh31d3r','Administrador','6','190.84.131.38','D4-8C-B5-3C-BA-C4','id,precioProductoV,cantidadProducto',NULL,'6,433,41'),(51,'Modificar Adquirir Producto','2015-09-29 22:47:50','snh31d3r','Administrador','7','190.84.131.38','D4-8C-B5-3C-BA-C4','id,precioProductoV,cantidadProducto',NULL,'7,555,90'),(52,'Ingresar','2015-09-29 22:50:48','visitante','Visitante','1','190.84.131.38','D4-8C-B5-3C-BA-C4','nickname,password','','snh31d3r,todobien'),(53,'Insertar Producto Proveedor','2015-09-29 22:51:35','snh31d3r','Administrador','8','190.84.131.38','D4-8C-B5-3C-BA-C4','id,nombreProducto,nombreProveedor,precioProducto','','8,Tomate,Tenerite,339'),(54,'Ingresar','2015-09-29 22:52:04','visitante','Visitante','1','190.84.131.38','D4-8C-B5-3C-BA-C4','nickname,password','','snh31d3r,todobien'),(55,'Modificar Adquirir Producto','2015-09-29 22:52:28','snh31d3r','Administrador','8','190.84.131.38','D4-8C-B5-3C-BA-C4','id,precioProductoV,cantidadProducto',NULL,'8,589,44'),(56,'Insertar Visitante','2015-09-30 04:40:39','Visitante','Visitante','6413465','190.84.131.38','D4-8C-B5-3C-BA-C4','cedula,nombres,apellidos,direccion,telefono,email,usuario,user(Login),password,imagen','','6413465,A,B,calle falsa,4444444444,A@B.co,Cliente,AB123,111111111111111111111111111111,~\\Imagenes\\Usuario\\1.jpg'),(57,'Ingresar','2015-09-30 04:46:17','visitante','Visitante','1','190.84.131.38','D4-8C-B5-3C-BA-C4','nickname,password','','AB123,11111111111111111111'),(58,'Ingresar','2015-09-30 04:46:39','visitante','Visitante','1','190.84.131.38','D4-8C-B5-3C-BA-C4','nickname,password','','AB123,111111111111111111111111111111'),(59,'Modificar Cliente','2015-09-30 04:47:23','AB123','Cliente','6413465','190.84.131.38','D4-8C-B5-3C-BA-C4','Cedula,nombres,apellidos,direccion,telefono,email,nick,pass,imagen','6413465,A,B,calle falsa,4444444444,A@B.co,AB123,111111111111111111111111111111,~\\Imagenes\\Usuario\\1.jpg','6413465,A,B,calle falsa,4444444444,A@B.co,AB123,111111111111111111111111111111,~\\Imagenes\\Usuario\\1.jpg'),(60,'Insertar Visitante','2015-09-30 04:51:18','Visitante','Visitante','7666945','190.84.131.38','D4-8C-B5-3C-BA-C4','cedula,nombres,apellidos,direccion,telefono,email,usuario,user(Login),password,imagen','','7666945,A,B,calle falsa,7654656855,A@B.co,Cliente,AB1234,123,~\\Imagenes\\Usuario\\2.jpg'),(61,'Ingresar','2015-09-30 04:51:29','visitante','Visitante','1','190.84.131.38','D4-8C-B5-3C-BA-C4','nickname,password','','AB1234,123'),(62,'Ingresar','2015-09-30 04:57:14','visitante','Visitante','1','190.84.131.38','D4-8C-B5-3C-BA-C4','nickname,password','','AB1234,123'),(63,'Ingresar','2015-09-30 08:30:01','visitante','Visitante','1','200.14.42.206','D4-8C-B5-3C-BA-C4','nickname,password','','AB1234,123'),(64,'Ingresar','2015-09-30 08:33:48','visitante','Visitante','1','181.49.51.226','D4-8C-B5-3C-BA-C4','nickname,password','','snh31d3r,123'),(65,'Ingresar','2015-09-30 08:34:08','visitante','Visitante','1','181.49.51.226','D4-8C-B5-3C-BA-C4','nickname,password','','snh31d3r,todobien'),(66,'Modificar Productos Proveedor','2015-09-30 08:36:24','snh31d3r','Administrador','1','181.49.51.226','D4-8C-B5-3C-BA-C4','id,nombreProducto,nombreProveedor,precioProducto','1,Arroz,Abastos,250','1,Arroz,Abastos,230'),(67,'Ingresar','2015-09-30 08:46:00','visitante','Visitante','1','181.49.51.226','D4-8C-B5-3C-BA-C4','nickname,password','','AB1234,123'),(68,'Ingresar','2015-10-03 10:35:03','visitante','Visitante','1','200.14.42.206','D4-8C-B5-3C-BA-C4','nickname,password','','snh31d3r,123'),(69,'Insertar Visitante','2015-10-03 10:35:52','Visitante','Visitante','1','181.49.51.226','D4-8C-B5-3C-BA-C4','cedula,nombres,apellidos,direccion,telefono,email,usuario,user(Login),password,imagen','','1,a,a,calle falsa 123,1,a@supermercadoonline.com,Cliente,a,a,~\\Imagenes\\Usuario\\3.jpg'),(70,'Ingresar','2015-10-03 10:35:57','visitante','Visitante','1','181.49.51.226','D4-8C-B5-3C-BA-C4','nickname,password','','a,a'),(71,'Insertar Visitante','2015-10-03 10:36:07','Visitante','Visitante','4456646','200.14.42.206','D4-8C-B5-3C-BA-C4','cedula,nombres,apellidos,direccion,telefono,email,usuario,user(Login),password,imagen','','4456646,Yesenia,Ramirez,calle8A,1555555565,d.s.a.r@hotmail.com,Cliente,darias,123456789,~\\Imagenes\\Usuario\\4.jpg'),(72,'Ingresar','2015-10-03 10:36:19','visitante','Visitante','1','200.14.42.206','D4-8C-B5-3C-BA-C4','nickname,password','','darias,123456789'),(73,'Ingresar','2015-10-03 10:36:30','visitante','Visitante','1','200.14.42.206','D4-8C-B5-3C-BA-C4','nickname,password','','snh31d3r,todobien'),(74,'Ingresar','2015-10-03 10:37:29','visitante','Visitante','1','181.49.51.226','D4-8C-B5-3C-BA-C4','nickname,password','','w,w'),(75,'Ingresar','2015-10-03 10:37:34','visitante','Visitante','1','181.49.51.226','D4-8C-B5-3C-BA-C4','nickname,password','','w,a'),(76,'Ingresar','2015-10-03 10:37:36','visitante','Visitante','1','200.14.41.218','D4-8C-B5-3C-BA-C4','nickname,password','','w,w'),(77,'Ingresar','2015-10-03 10:37:40','visitante','Visitante','1','181.49.51.226','D4-8C-B5-3C-BA-C4','nickname,password','','a,a'),(78,'Ingresar','2015-10-03 10:37:43','visitante','Visitante','1','200.14.41.218','D4-8C-B5-3C-BA-C4','nickname,password','','a,a'),(79,'Eleccion Producto','2015-10-03 10:38:09','a','Cliente','1','200.14.42.206','D4-8C-B5-3C-BA-C4','idCliente,idProducto,idProveedor,unidadesProducto','','1,3123123,6548465,5'),(80,'Comprar','2015-10-03 10:38:47','a','Cliente','1','200.14.42.206','D4-8C-B5-3C-BA-C4','idFactura,idCliente,idProveedor,unidadesProducto,fechaReserva','','1,1,3123123,6548465,5'),(81,'Eleccion Producto','2015-10-03 10:38:50','darias','Cliente','4456646','200.14.42.206','D4-8C-B5-3C-BA-C4','idCliente,idProducto,idProveedor,unidadesProducto','','4456646,4234234,6548465,9'),(82,'Eleccion Producto','2015-10-03 10:39:23','darias','Cliente','4456646','200.14.42.206','D4-8C-B5-3C-BA-C4','idCliente,idProducto,idProveedor,unidadesProducto','','4456646,4234234,6548465,10'),(83,'Insertar Visitante','2015-10-03 10:39:34','Visitante','Visitante','12','181.49.51.226','D4-8C-B5-3C-BA-C4','cedula,nombres,apellidos,direccion,telefono,email,usuario,user(Login),password,imagen','','12,a,a,a,1,a@a.com,Cliente,aaa,a,~\\Imagenes\\Usuario\\8.jpg'),(84,'Insertar Visitante','2015-10-03 10:39:35','Visitante','Visitante','1234567','181.49.51.226','D4-8C-B5-3C-BA-C4','cedula,nombres,apellidos,direccion,telefono,email,usuario,user(Login),password,imagen','','1234567,edwin,clavij,calle 5,12351,edwinclavijo22@gmail.com,Cliente,edwin22,123,~\\Imagenes\\Usuario\\9.jpg'),(85,'Insertar Visitante','2015-10-03 10:39:42','Visitante','Visitante','56465','200.14.41.218','D4-8C-B5-3C-BA-C4','cedula,nombres,apellidos,direccion,telefono,email,usuario,user(Login),password,imagen','','56465,yhkjhk,hjhk,cll 5 sur 655-55,14895,asdas@hotmail.com,Cliente,yyy,yyy,~\\Imagenes\\Usuario\\10.jpg'),(86,'Ingresar','2015-10-03 10:39:42','visitante','Visitante','1','181.49.51.226','D4-8C-B5-3C-BA-C4','nickname,password','','aaa,a'),(87,'Eleccion Producto','2015-10-03 10:39:43','darias','Cliente','4456646','181.49.51.226','D4-8C-B5-3C-BA-C4','idCliente,idProducto,idProveedor,unidadesProducto','','4456646,7865464,6548465,30'),(88,'Ingresar','2015-10-03 10:40:03','visitante','Visitante','1','200.14.41.218','D4-8C-B5-3C-BA-C4','nickname,password','','a,a'),(89,'Ingresar','2015-10-03 10:40:05','visitante','Visitante','1','181.49.51.226','D4-8C-B5-3C-BA-C4','nickname,password','','edwin22,123'),(90,'Ingresar','2015-10-03 10:40:05','visitante','Visitante','1','200.14.41.218','D4-8C-B5-3C-BA-C4','nickname,password','','yyy,yyy'),(91,'Eleccion Producto','2015-10-03 10:40:06','darias','Cliente','4456646','181.49.51.226','D4-8C-B5-3C-BA-C4','idCliente,idProducto,idProveedor,unidadesProducto','','4456646,1212121212,5555555,41'),(92,'Mensaje','2015-10-03 10:40:10','a','cliente','1','200.14.42.206','D4-8C-B5-3C-BA-C4','nombre,email,mensaje','','a,a@supermercadoonline.com,Hola'),(93,'Eleccion Producto','2015-10-03 10:40:22','aaa','Cliente','12','181.49.51.226','D4-8C-B5-3C-BA-C4','idCliente,idProducto,idProveedor,unidadesProducto','','12,1234578,6548465,2'),(94,'Comprar','2015-10-03 10:40:30','darias','Cliente','2','181.49.51.226','D4-8C-B5-3C-BA-C4','idFactura,idCliente,idProveedor,unidadesProducto,fechaReserva','','2,4456646,4234234,6548465,9'),(95,'Comprar','2015-10-03 10:40:30','darias','Cliente','3','181.49.51.226','D4-8C-B5-3C-BA-C4','idFactura,idCliente,idProveedor,unidadesProducto,fechaReserva','','3,4456646,4234234,6548465,10'),(96,'Comprar','2015-10-03 10:40:30','darias','Cliente','4','181.49.51.226','D4-8C-B5-3C-BA-C4','idFactura,idCliente,idProveedor,unidadesProducto,fechaReserva','','4,4456646,7865464,6548465,30'),(97,'Comprar','2015-10-03 10:40:30','darias','Cliente','5','181.49.51.226','D4-8C-B5-3C-BA-C4','idFactura,idCliente,idProveedor,unidadesProducto,fechaReserva','','5,4456646,1212121212,5555555,41'),(98,'Eliminar Carrito','2015-10-03 10:40:38','aaa','Cliente','6','181.49.51.226','D4-8C-B5-3C-BA-C4','idPedido,idProducto,idProveedor,unidadesProducto','6,1234578,6548465,2',''),(99,'Insertar Visitante','2015-10-03 10:41:06','Visitante','Visitante','2','181.49.51.226','D4-8C-B5-3C-BA-C4','cedula,nombres,apellidos,direccion,telefono,email,usuario,user(Login),password,imagen','','2,d,f,2,1,ed@dd.com,Cliente,1,1,~\\Imagenes\\Usuario\\11.jpg'),(100,'Mensaje','2015-10-03 10:41:07','a','cliente','1','181.49.51.226','D4-8C-B5-3C-BA-C4','nombre,email,mensaje','','dd,a@h.com,54545454----'),(101,'Ingresar','2015-10-03 10:41:32','visitante','Visitante','1','181.49.51.226','D4-8C-B5-3C-BA-C4','nickname,password','','2,2'),(102,'Ingresar','2015-10-03 10:41:41','visitante','Visitante','1','181.49.51.226','D4-8C-B5-3C-BA-C4','nickname,password','','a,a'),(103,'Ingresar','2015-10-03 10:41:42','visitante','Visitante','1','181.49.51.226','D4-8C-B5-3C-BA-C4','nickname,password','','1,2'),(104,'Eleccion Producto','2015-10-03 10:41:44','a','Cliente','1','200.14.42.206','D4-8C-B5-3C-BA-C4','idCliente,idProducto,idProveedor,unidadesProducto','','1,1234577,5555555,1'),(105,'Comprar','2015-10-03 10:41:53','a','Cliente','6','200.14.42.206','D4-8C-B5-3C-BA-C4','idFactura,idCliente,idProveedor,unidadesProducto,fechaReserva','','6,1,1234577,5555555,1'),(106,'Mensaje','2015-10-03 10:42:17','a','cliente','1','181.49.51.226','D4-8C-B5-3C-BA-C4','nombre,email,mensaje','','a,a@h.com,a +++     @  '),(107,'Eleccion Producto','2015-10-03 10:43:04','a','Cliente','1','181.49.51.226','D4-8C-B5-3C-BA-C4','idCliente,idProducto,idProveedor,unidadesProducto','','1,4234234,6548465,1'),(108,'Ingresar','2015-10-03 10:43:57','visitante','Visitante','1','200.14.42.206','D4-8C-B5-3C-BA-C4','nickname,password','','a,a'),(109,'Ingresar','2015-10-03 16:03:14','visitante','Visitante','1','190.84.131.38','D4-8C-B5-3C-BA-C4','nickname,password','','darias,123456789'),(110,'Ingresar','2015-10-03 16:06:23','visitante','Visitante','1','190.84.131.38','D4-8C-B5-3C-BA-C4','nickname,password','','darias,123456789'),(111,'Ingresar','2015-10-03 16:09:59','visitante','Visitante','1','190.84.131.38','D4-8C-B5-3C-BA-C4','nickname,password','','a,a'),(112,'Ingresar','2015-10-03 16:22:17','visitante','Visitante','1','190.84.131.38','D4-8C-B5-3C-BA-C4','nickname,password','','snh31d3r,todobien'),(113,'Ingresar','2015-10-04 20:50:19','visitante','Visitante','1','190.84.131.38','D4-8C-B5-3C-BA-C4','nickname,password','','a,a'),(114,'Modificar Carrito','2015-10-04 20:52:09','a','Cliente','7','190.84.131.38','D4-8C-B5-3C-BA-C4','idPedido,idProducto,idProveedor,unidadesProducto','7,4234234,6548465,1','7,4234234,6548465,4'),(115,'Ingresar','2015-10-10 09:46:17','visitante','Visitante','1','192.55.233.2','02-50-F2-F9-E3-89','nickname,password','','snh31d3r,todobien'),(116,'Insertar Visitante','2015-10-10 19:41:53','Visitante','Visitante','1073516','fe80::281a:15c5:4ac2',NULL,'cedula,nombres,apellidos,direccion,telefono,email,usuario,user(Login),password,imagen','','1073516,Daniel,Arias,calle,4534534534,d.s.a.r@hotmail.com,Cliente,sebas,123456789,~\\Imagenes\\Usuario\\2.jpg'),(117,'Ingresar','2015-10-10 19:45:45','visitante','Visitante','1','fe80::281a:15c5:4ac2',NULL,'nickname,password','','sebas,123456789'),(118,'Insertar Visitante','2015-10-10 19:46:58','Visitante','Visitante','4335353','fe80::281a:15c5:4ac2',NULL,'cedula,nombres,apellidos,direccion,telefono,email,usuario,user(Login),password,imagen','','4335353,paola ,chia,bdgdvd,34535345,d@hotmail.com,Cliente,pao,123456789,~\\Imagenes\\Usuario\\3.jpg'),(119,'Ingresar','2015-10-10 19:47:33','visitante','Visitante','1','fe80::281a:15c5:4ac2',NULL,'nickname,password','','pao,123456789'),(120,'Ingresar','2015-10-13 09:26:54','visitante','Visitante','1','10.157.8.47','18-CF-5E-8A-3B-1E','nickname,password','','snh31d3r,todobien'),(121,'Ingresar','2015-10-13 10:56:32','visitante','Visitante','1','fe80::14f4:3653:f562',NULL,'nickname,password','','snh31d3r,todobien'),(122,'Ingresar','2015-10-13 10:57:47','visitante','Visitante','1','fe80::14f4:3653:f562',NULL,'nickname,password','','snh31d3r,todobien'),(123,'Ingresar','2015-10-13 11:08:13','visitante','Visitante','1','fe80::14f4:3653:f562',NULL,'nickname,password','','snh31d3r,todobien'),(124,'Ingresar','2015-10-13 11:15:24','visitante','Visitante','1','192.55.233.2','02-50-F2-F9-E3-89','nickname,password','','snh31d3r,todobien'),(125,'Ingresar','2015-10-13 11:16:42','visitante','Visitante','1','192.55.233.2','02-50-F2-F9-E3-89','nickname,password','','snh31d3r,todobien'),(126,'Ingresar','2015-10-13 11:19:38','visitante','Visitante','1','192.55.233.2','02-50-F2-F9-E3-89','nickname,password','','snh31d3r,todobien'),(127,'Ingresar','2015-10-13 11:21:37','visitante','Visitante','1','192.55.233.2','02-50-F2-F9-E3-89','nickname,password','','snh31d3r,todobien'),(128,'Ingresar','2015-10-13 13:38:02','visitante','Visitante','1','fe80::c00:25b7:3f57:',NULL,'nickname,password','','snh31d3r,todobien'),(129,'Ingresar','2015-10-13 13:38:50','visitante','Visitante','1','fe80::c00:25b7:3f57:',NULL,'nickname,password','','snh31d3r,todobien'),(130,'Ingresar','2015-10-13 13:39:04','visitante','Visitante','1','fe80::c00:25b7:3f57:',NULL,'nickname,password','','snh31d3r,todobien'),(131,'Ingresar','2015-10-15 14:43:47','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','snh31d3r,todobien'),(132,'Ingresar','2015-10-15 14:47:46','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','snh31d3r,todobien'),(133,'Ingresar','2015-10-15 15:00:34','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','snh31d3r,todobien'),(134,'Ingresar','2015-10-15 15:02:08','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','snh31d3r,todobien'),(135,'Ingresar','2015-10-15 15:03:14','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','snh31d3r,todobien'),(136,'Ingresar','2015-10-15 15:03:53','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','snh31d3r,todobien'),(137,'Ingresar','2015-10-15 15:44:08','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','snh31d3r,todobien'),(138,'Ingresar','2015-10-15 15:46:20','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','snh31d3r,todobien'),(139,'Ingresar','2015-10-15 15:46:48','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','snh31d3r,todobien'),(140,'Ingresar','2015-10-15 15:47:21','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','snh31d3r,todobien'),(141,'Ingresar','2015-10-15 15:48:57','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','snh31d3r,todobien'),(142,'Ingresar','2015-10-15 15:49:39','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','snh31d3r,todobien'),(143,'Ingresar','2015-10-15 15:51:39','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','snh31d3r,todobien'),(144,'Ingresar','2015-10-15 15:52:27','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','snh31d3r,todobien'),(145,'Ingresar','2015-10-15 15:53:09','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','snh31d3r,todobien'),(146,'Ingresar','2015-10-15 16:02:49','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','snh31d3r,todobien'),(147,'Ingresar','2015-10-15 16:03:32','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','snh31d3r,todobien'),(148,'Ingresar','2015-10-15 16:04:23','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','snh31d3r,todobien'),(149,'Ingresar','2015-10-15 16:09:44','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','snh31d3r,todobien'),(150,'Ingresar','2015-10-15 16:21:18','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','snh31d3r,todobien'),(151,'Ingresar','2015-10-15 16:22:58','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','snh31d3r,todobien'),(152,'Ingresar','2015-10-15 16:24:17','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','snh31d3r,todobien'),(153,'Ingresar','2015-10-15 16:26:39','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','snh31d3r,todobien'),(154,'Ingresar','2015-10-15 16:26:59','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','snh31d3r,todobien'),(155,'Ingresar','2015-10-15 16:29:00','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','snh31d3r,todobien'),(156,'Modificar Adquirir Producto','2015-10-15 16:29:10','snh31d3r','Administrador','1','fe80::1144:303f:2cab',NULL,'id,precioProductoV,cantidadProducto','1,400,17','1,400,17'),(157,'Ingresar','2015-10-15 16:42:51','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','snh31d3r,todobien'),(158,'Modificar Adquirir Producto','2015-10-15 16:43:00','snh31d3r','Administrador','1','fe80::1144:303f:2cab',NULL,'id,precioProductoV,cantidadProducto','1,400,17','1,400,17'),(159,'Ingresar','2015-10-15 16:43:22','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','snh31d3r,todobien'),(160,'Modificar Adquirir Producto','2015-10-15 16:43:31','snh31d3r','Administrador','1','fe80::1144:303f:2cab',NULL,'id,precioProductoV,cantidadProducto','1,400,17','1,400,17'),(161,'Ingresar','2015-10-15 16:44:29','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','snh31d3r,todobien'),(162,'Modificar Adquirir Producto','2015-10-15 16:44:39','snh31d3r','Administrador','1','fe80::1144:303f:2cab',NULL,'id,precioProductoV,cantidadProducto','1,400,17','1,400,17'),(163,'Ingresar','2015-10-15 16:45:33','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','snh31d3r,todobien'),(164,'Modificar Adquirir Producto','2015-10-15 16:45:48','snh31d3r','Administrador','1','fe80::1144:303f:2cab',NULL,'id,precioProductoV,cantidadProducto','1,400,17','1,400,17'),(165,'Modificar Adquirir Producto','2015-10-15 16:46:40','snh31d3r','Administrador','1','fe80::1144:303f:2cab',NULL,'id,precioProductoV,cantidadProducto','1,400,17','1,2,17'),(166,'Ingresar','2015-10-15 16:55:19','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','snh31d3r,todobien'),(167,'Insertar Cajero','2015-10-15 16:59:06','snh31d3r','Cajero','2342342','fe80::1144:303f:2cab',NULL,'cedula,nombres,apellidos,direccion,telefono,email,usuario,user(Login),password,imagen','','2342342,paola,chia,calle8A#1Avillanueva,56456465,aloapaerdna_94@hotmail.com,Cajero,aplushawol,123456789,~\\Imagenes\\Usuario\\4.jpg'),(168,'Modificar Cajero','2015-10-15 16:59:26','snh31d3r','Cajero','2342342','fe80::1144:303f:2cab',NULL,'Cedula,nombres,apellidos,direccion,telefono,email,nick,pass,imagen','2342342,paola,chia,calle8A#1Avillanueva,56456465,aloapaerdna_94@hotmail.com,aplushawol,123456789,~\\Imagenes\\Usuario\\4.jpg','2342342,paola,chia,calle8A#1Avillanueva,56456465,aloapaerdna_94@hotmail.com,aplushawol,123456789,~\\Imagenes\\Usuario\\4.jpg'),(169,'Ingresar','2015-10-15 18:36:01','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','snh31d3r,todobien'),(170,'Ingresar','2015-10-15 18:36:19','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','snh31d3r,todobien'),(171,'Ingresar','2015-10-15 18:38:32','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','snh31d3r,todobien'),(172,'Ingresar','2015-10-15 18:39:07','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','snh31d3r,todobien'),(173,'Modificar Cajero','2015-10-15 18:39:51','snh31d3r','Cajero','2342342','fe80::1144:303f:2cab',NULL,'Cedula,nombres,apellidos,direccion,telefono,email,nick,pass,imagen','2342342,paola,chia,calle8A#1Avillanueva,56456465,aloapaerdna_94@hotmail.com,aplushawol,123456789,~\\Imagenes\\Usuario\\4.jpg','2342342,paola,chia,calle8A#1Avillanueva,56456465,aloapaerdna_94@hotmail.com,aplushawol,123456789,~\\Imagenes\\Usuario\\4.jpg'),(174,'Ingresar','2015-10-17 10:26:05','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','snh31d3r,todobien'),(175,'Ingresar','2015-10-17 10:26:22','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','snh31d3r,todobien'),(176,'Ingresar','2015-10-17 10:27:44','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','snh31d3r,todobien'),(177,'Ingresar','2015-10-17 10:28:07','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','snh31d3r,todobien'),(178,'Ingresar','2015-10-17 10:29:54','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','snh31d3r,todobien'),(179,'Ingresar','2015-10-17 10:30:05','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','snh31d3r,todobien'),(180,'Ingresar','2015-10-19 12:02:10','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','snh31d3r,todobien'),(181,'Modificar Cajero','2015-10-19 12:05:57','snh31d3r','Cajero','2342342','fe80::1144:303f:2cab',NULL,'Cedula,nombres,apellidos,direccion,telefono,email,nick,pass,imagen','2342342,paola,chia,calle8A#1Avillanueva,56456465,aloapaerdna_94@hotmail.com,aplushawol,123456789,~\\Imagenes\\Usuario\\4.jpg','2342342,paola,chia,calle8A#1Avillanueva,564444,aloapaerdna_94@hotmail.com,aplushawol,123456789,~\\Imagenes\\Usuario\\4.jpg'),(182,'Ingresar','2015-10-19 13:32:47','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','snh31d3r,todobien'),(183,'Ingresar','2015-10-19 13:38:44','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','snh31d3r,todobien'),(184,'Ingresar','2015-10-19 13:39:52','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','snh31d3r,todobien'),(185,'Ingresar','2015-10-19 13:40:04','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','snh31d3r,todobien'),(186,'Ingresar','2015-10-19 13:44:02','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','snh31d3r,todobien'),(187,'Ingresar','2015-10-19 13:45:38','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','snh31d3r,todobien'),(188,'Ingresar','2015-10-19 14:33:39','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','snh31d3r,todobien'),(189,'Ingresar','2015-10-19 15:13:47','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','snh31d3r,todobien'),(190,'Insertar Producto','2015-10-19 15:14:52','snh31d3r','Administrador','5566666','fe80::1144:303f:2cab',NULL,'id,nombre,descripcion,imagen','','5566666,pera,esta es la pera :V,~\\Imagenes\\Productos\\0.png'),(191,'Modificar Producto','2015-10-19 15:15:22','snh31d3r','Administrador','5566666','fe80::1144:303f:2cab',NULL,'id,nombre,descripcion,imagen','5566666,pera,esta es la pera :V,~\\Imagenes\\Productos\\0.png','5566666,pera,esta es la pera :V que modifique,~\\Imagenes\\Productos\\0.png'),(192,'Eliminar Producto','2015-10-19 15:15:35','snh31d3r','Administrador','5566666','fe80::1144:303f:2cab',NULL,'id,nombre,descripcion,imagen','5566666,pera,esta es la pera :V que modifique,~\\Imagenes\\Productos\\0.png',''),(193,'Ingresar','2015-10-19 21:55:03','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','snh31d3r,todobien'),(194,'Ingresar','2015-10-19 21:55:24','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','snh31d3r,todobien'),(195,'Ingresar','2015-10-19 22:13:51','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','snh31d3r,todobien'),(196,'Ingresar','2015-10-19 22:35:01','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','snh31d3r,todobien'),(197,'Ingresar','2015-10-20 10:21:15','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','snh31d3r,todobien'),(198,'Insertar Proveedor','2015-10-20 10:22:35','snh31d3r','Administrador','6456456','fe80::1144:303f:2cab',NULL,'id,nombre,direccion,telefono,correo,logo','','6456456,daniel,sdfdhgfhf,4535345345,d.s.a.r@hotmail.com,~\\Imagenes\\Logo\\2.jpg'),(199,'Ingresar','2015-10-20 10:34:26','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','snh31d3r,todobien'),(200,'Ingresar','2015-10-20 10:53:14','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','snh31d3r,todobien'),(201,'Ingresar','2015-10-20 10:54:16','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','aplushawol,123456789'),(202,'Ingresar','2015-10-20 12:04:52','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','aplushawol,todobien'),(203,'Ingresar','2015-10-20 12:05:17','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','aplushawol,123456789'),(204,'Ingresar','2015-10-20 12:08:54','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','aplushawol,123456789'),(205,'Ingresar','2015-10-20 12:17:06','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','snh31d3r,todobien'),(206,'Ingresar','2015-10-20 12:17:31','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','aplushawol,123456789'),(207,'Ingresar','2015-10-20 12:18:05','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','aplushawol,123456789'),(208,'Ingresar','2015-10-20 12:23:55','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','aplushawol,123456789'),(209,'Ingresar','2015-10-20 12:25:14','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','aplushawol,123456789'),(210,'Ingresar','2015-10-20 12:25:42','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','aplushawol,123456789'),(211,'Ingresar','2015-10-20 12:50:08','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','aplushawol,123456789'),(212,'Ingresar','2015-10-20 12:50:43','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','aplushawol,123456789'),(213,'Ingresar','2015-10-20 17:43:32','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','aplushawol,123456789'),(214,'Insertar Visitante','2015-10-20 17:46:59','Visitante','Visitante','7654321','fe80::1144:303f:2cab',NULL,'cedula,nombres,apellidos,direccion,telefono,email,usuario,user(Login),password,imagen','','7654321,yesenia,ramirez,bogota,1234567890,yheyhe-21@hotmail.com,Cliente,yheyhe,123456789,~\\Imagenes\\Usuario\\1.png'),(215,'Ingresar','2015-10-20 17:47:25','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','yheyhe,123456789'),(216,'Ingresar','2015-10-20 17:49:24','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','yheyhe,123456789'),(217,'Ingresar','2015-10-20 17:50:11','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','yheyhe,123456789'),(218,'Ingresar','2015-10-20 18:43:45','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','yheyhe,123456789'),(219,'Ingresar','2015-10-20 18:44:39','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','yheyhe,123456789'),(220,'Ingresar','2015-10-20 18:46:51','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','yheyhe,123456789'),(221,'Ingresar','2015-10-20 18:47:08','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','yheyhe,123456789'),(222,'Ingresar','2015-10-20 18:49:04','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','yheyhe,123456789'),(223,'Ingresar','2015-10-20 19:50:27','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','yheyhe,123456789'),(224,'Ingresar','2015-10-20 20:29:49','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','yheyhe,123456789'),(225,'Ingresar','2015-10-20 20:31:17','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','yheyhe,123456789'),(226,'Ingresar','2015-10-20 20:32:06','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','yheyhe,123456789'),(227,'Ingresar','2015-10-20 20:35:54','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','yheyhe,123456789'),(228,'Ingresar','2015-10-20 20:36:10','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','yheyhe,123456789'),(229,'Ingresar','2015-10-20 20:37:37','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','yheyhe,123456789'),(230,'Ingresar','2015-10-20 20:38:05','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','yheyhe,123456789'),(231,'Ingresar','2015-10-20 20:44:07','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','yheyhe,123456789'),(232,'Ingresar','2015-10-20 21:04:41','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','yheyhe,123456789'),(233,'Ingresar','2015-10-20 21:18:13','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','yheyhe,123456789'),(234,'Ingresar','2015-10-20 21:19:30','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','yheyhe,123456789'),(235,'Eleccion Producto','2015-10-20 21:20:27','yheyhe','Cliente','7654321','fe80::1144:303f:2cab',NULL,'idCliente,idProducto,idProveedor,unidadesProducto','','7654321,4234234,6548465,13'),(236,'Eleccion Producto','2015-10-20 21:22:10','yheyhe','Cliente','7654321','fe80::1144:303f:2cab',NULL,'idCliente,idProducto,idProveedor,unidadesProducto','','7654321,1234578,6548465,2'),(237,'Ingresar','2015-10-20 21:22:11','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','yheyhe,123456789'),(238,'Ingresar','2015-10-20 21:22:48','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','yheyhe,123456789'),(239,'Eleccion Producto','2015-10-20 21:23:55','yheyhe','Cliente','7654321','fe80::1144:303f:2cab',NULL,'idCliente,idProducto,idProveedor,unidadesProducto','','7654321,4234234,6548465,2'),(240,'Ingresar','2015-10-20 21:24:28','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','yheyhe,123456789'),(241,'Eleccion Producto','2015-10-20 21:24:46','yheyhe','Cliente','7654321','fe80::1144:303f:2cab',NULL,'idCliente,idProducto,idProveedor,unidadesProducto','','7654321,4234234,6548465,2'),(242,'Ingresar','2015-10-20 21:25:05','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','yheyhe,123456789'),(243,'Comprar','2015-10-20 21:26:21','yheyhe','Cliente','8','fe80::1144:303f:2cab',NULL,'idFactura,idCliente,idProveedor,unidadesProducto,fechaReserva','','8,7654321,4234234,6548465,13'),(244,'Comprar','2015-10-20 21:26:21','yheyhe','Cliente','9','fe80::1144:303f:2cab',NULL,'idFactura,idCliente,idProveedor,unidadesProducto,fechaReserva','','9,7654321,1234578,6548465,2'),(245,'Comprar','2015-10-20 21:26:21','yheyhe','Cliente','10','fe80::1144:303f:2cab',NULL,'idFactura,idCliente,idProveedor,unidadesProducto,fechaReserva','','10,7654321,4234234,6548465,2'),(246,'Comprar','2015-10-20 21:26:22','yheyhe','Cliente','11','fe80::1144:303f:2cab',NULL,'idFactura,idCliente,idProveedor,unidadesProducto,fechaReserva','','11,7654321,4234234,6548465,2'),(247,'Ingresar','2015-10-20 21:54:00','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','yheyhe,123456789'),(248,'Ingresar','2015-10-20 22:00:29','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','yheyhe,123456789'),(249,'Mensaje','2015-10-20 22:01:18','yheyhe','cliente','7654321','fe80::1144:303f:2cab',NULL,'nombre,email,mensaje','','paola,d.s.a.r@hotmail.com,hola'),(250,'Ingresar','2015-10-20 22:23:30','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','yheyhe,123456789'),(251,'Ingresar','2015-10-20 22:23:51','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','yheyhe,123456789'),(252,'Ingresar','2015-10-20 22:43:00','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','yheyhe,123456789'),(253,'Ingresar','2015-10-21 07:59:25','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','yheyhe,123456789'),(254,'Ingresar','2015-10-21 08:13:44','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','yheyhe,123456789'),(255,'Mensaje','2015-10-21 08:44:35','visitante','cliente','0','fe80::1144:303f:2cab',NULL,'nombre,email,mensaje','','Paola,d@h.com,fgjkl'),(256,'Mensaje','2015-10-21 08:46:02','visitante','cliente','0','fe80::1144:303f:2cab',NULL,'nombre,email,mensaje','','hsjdsf,d.s.a.r@hotmail.com,ghjk'),(257,'Ingresar','2015-10-21 08:57:04','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','aplushawol,123456789'),(258,'Ingresar','2015-10-21 10:30:50','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','snh31d3r,todobien'),(259,'Ingresar','2015-10-21 14:58:26','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','yheyhe,123456789'),(260,'Ingresar','2015-10-21 15:43:13','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','snh31d3r,todobien'),(261,'Ingresar','2015-10-21 15:45:10','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','snh31d3r,todobien'),(262,'Ingresar','2015-10-21 15:50:40','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','snh31d3r,todobien'),(263,'Ingresar','2015-10-21 15:52:06','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','yheyhe,123456789'),(264,'Ingresar','2015-10-21 16:44:45','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','snh31d3r,todobien'),(265,'Ingresar','2015-10-21 16:45:34','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','yheyhe,123456789'),(266,'Ingresar','2015-10-21 16:45:50','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','snh31d3r,todobien'),(267,'Ingresar','2015-10-21 16:49:10','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','snh31d3r,todobien'),(268,'Ingresar','2015-10-21 16:50:20','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','snh31d3r,todobien'),(269,'Ingresar','2015-10-21 16:58:40','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','snh31d3r,todobien'),(270,'Ingresar','2015-10-21 16:58:59','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','snh31d3r,todobien'),(271,'Ingresar','2015-10-21 17:04:29','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','snh31d3r,todobien'),(272,'Insertar Proveedor','2015-10-21 17:06:15','snh31d3r','Administrador','2342342','fe80::1144:303f:2cab',NULL,'id,nombre,direccion,telefono,correo,logo','','2342342,adadas,dadasd,2342342343,aloapaerdna94@gmail.com,~\\Imagenes\\Logo\\3.jpg'),(273,'Insertar Producto Proveedor','2015-10-21 17:06:49','snh31d3r','Administrador','9','fe80::1144:303f:2cab',NULL,'id,nombreProducto,nombreProveedor,precioProducto','','9,Arroz,adadas,5000'),(274,'Ingresar','2015-10-21 17:10:15','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','snh31d3r,todobien'),(275,'Eliminar Proveedor','2015-10-21 17:10:33','snh31d3r','Administrador','6456456','fe80::1144:303f:2cab',NULL,'idProveedor,nombreProveedor,direccionProveedor,telefonoProveedor,emailProveedor,logoProveedor','6456456,daniel,sdfdhgfhf,4535345345,d.s.a.r@hotmail.com,~\\Imagenes\\Logo\\2.jpg',''),(276,'Ingresar','2015-10-21 17:18:28','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','aplushawol,todobien'),(277,'Ingresar','2015-10-21 17:19:06','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','aplushawol,123456789'),(278,'Ingresar','2015-10-21 17:19:38','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','yheyhe,todobien'),(279,'Ingresar','2015-10-21 17:19:50','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','yheyhe,123456789'),(280,'Ingresar','2015-10-21 17:25:08','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','yheyhe,123456789'),(281,'Ingresar','2015-10-21 17:27:11','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','yheyhe,123456789'),(282,'Ingresar','2015-10-21 22:10:10','visitante','Visitante','1','fe80::286a:3902:4ac2',NULL,'nickname,password','','snh31d3r,todobien'),(283,'Modificar Adquirir Producto','2015-10-21 22:33:14','snh31d3r','Administrador','9','fe80::286a:3902:4ac2',NULL,'id,precioProductoV,cantidadProducto',NULL,'9,788,3'),(284,'Ingresar','2015-10-22 10:43:30','visitante','Visitante','1','fe80::1874:2ac0:4ac3',NULL,'nickname,password','','snh31d3r,todobien'),(285,'Ingresar','2015-10-22 10:52:50','visitante','Visitante','1','fe80::1874:2ac0:4ac3',NULL,'nickname,password','','snh31d3r,todobien'),(286,'Ingresar','2015-10-22 10:59:50','visitante','Visitante','1','fe80::1874:2ac0:4ac3',NULL,'nickname,password','','snh31d3r,todobien'),(287,'Ingresar','2015-10-22 11:01:51','visitante','Visitante','1','fe80::1874:2ac0:4ac3',NULL,'nickname,password','','snh31d3r,todobien'),(288,'Ingresar','2015-10-22 11:04:15','visitante','Visitante','1','fe80::1874:2ac0:4ac3',NULL,'nickname,password','','snh31d3r,todobien'),(289,'Ingresar','2015-10-22 11:05:38','visitante','Visitante','1','fe80::1874:2ac0:4ac3',NULL,'nickname,password','','snh31d3r,todobien'),(290,'Modificar Adquirir Producto','2015-10-22 11:05:53','snh31d3r','Administrador','1','fe80::1874:2ac0:4ac3',NULL,'id,precioProductoV,cantidadProducto','1,2,0','1,2,0'),(291,'Ingresar','2015-10-22 11:06:45','visitante','Visitante','1','fe80::1874:2ac0:4ac3',NULL,'nickname,password','','snh31d3r,todobien'),(292,'Ingresar','2015-10-22 11:10:00','visitante','Visitante','1','fe80::1874:2ac0:4ac3',NULL,'nickname,password','','snh31d3r,todobien'),(293,'Ingresar','2015-10-22 11:20:44','visitante','Visitante','1','fe80::1874:2ac0:4ac3',NULL,'nickname,password','','snh31d3r,todobien'),(294,'Ingresar','2015-10-22 11:26:08','visitante','Visitante','1','fe80::1874:2ac0:4ac3',NULL,'nickname,password','','snh31d3r,todobien'),(295,'Ingresar','2015-10-22 11:36:09','visitante','Visitante','1','fe80::1874:2ac0:4ac3',NULL,'nickname,password','','snh31d3r,todobien'),(296,'Ingresar','2015-10-22 11:38:02','visitante','Visitante','1','fe80::1874:2ac0:4ac3',NULL,'nickname,password','','snh31d3r,todobien'),(297,'Ingresar','2015-10-22 11:41:14','visitante','Visitante','1','fe80::1874:2ac0:4ac3',NULL,'nickname,password','','snh31d3r,todobien'),(298,'Ingresar','2015-10-22 11:42:14','visitante','Visitante','1','fe80::1874:2ac0:4ac3',NULL,'nickname,password','','snh31d3r,todobien'),(299,'Ingresar','2015-10-22 11:43:51','visitante','Visitante','1','fe80::1874:2ac0:4ac3',NULL,'nickname,password','','snh31d3r,todobien'),(300,'Ingresar','2015-10-22 11:46:07','visitante','Visitante','1','fe80::1874:2ac0:4ac3',NULL,'nickname,password','','snh31d3r,todobien'),(301,'Ingresar','2015-10-22 11:48:46','visitante','Visitante','1','fe80::1874:2ac0:4ac3',NULL,'nickname,password','','snh31d3r,todobien'),(302,'Ingresar','2015-10-22 11:52:01','visitante','Visitante','1','fe80::1874:2ac0:4ac3',NULL,'nickname,password','','snh31d3r,todobien'),(303,'Ingresar','2015-10-22 11:56:20','visitante','Visitante','1','fe80::1874:2ac0:4ac3',NULL,'nickname,password','','snh31d3r,todobien'),(304,'Ingresar','2015-10-22 11:59:13','visitante','Visitante','1','fe80::1874:2ac0:4ac3',NULL,'nickname,password','','snh31d3r,todobien'),(305,'Ingresar','2015-10-22 12:00:48','visitante','Visitante','1','fe80::1874:2ac0:4ac3',NULL,'nickname,password','','snh31d3r,todobien'),(306,'Ingresar','2015-10-22 12:02:48','visitante','Visitante','1','fe80::1874:2ac0:4ac3',NULL,'nickname,password','','snh31d3r,todobien'),(307,'Ingresar','2015-10-22 12:03:00','visitante','Visitante','1','fe80::1874:2ac0:4ac3',NULL,'nickname,password','','snh31d3r,todobien'),(308,'Ingresar','2015-10-22 12:09:53','visitante','Visitante','1','fe80::1874:2ac0:4ac3',NULL,'nickname,password','','snh31d3r,todobien'),(309,'Ingresar','2015-10-22 12:32:06','visitante','Visitante','1','fe80::1874:2ac0:4ac3',NULL,'nickname,password','','snh31d3r,todobien'),(310,'Ingresar','2015-10-22 12:34:17','visitante','Visitante','1','fe80::1874:2ac0:4ac3',NULL,'nickname,password','','snh31d3r,todobien'),(311,'Ingresar','2015-10-22 12:38:48','visitante','Visitante','1','fe80::1874:2ac0:4ac3',NULL,'nickname,password','','snh31d3r,todobien'),(312,'Ingresar','2015-10-22 12:39:31','visitante','Visitante','1','fe80::1874:2ac0:4ac3',NULL,'nickname,password','','snh31d3r,todobien'),(313,'Modificar Adquirir Producto','2015-10-22 12:40:20','snh31d3r','Administrador','1','fe80::1874:2ac0:4ac3',NULL,'id,precioProductoV,cantidadProducto','1,2,0','1,2,0'),(314,'Ingresar','2015-10-22 12:42:28','visitante','Visitante','1','fe80::1874:2ac0:4ac3',NULL,'nickname,password','','snh31d3r,todobien'),(315,'Ingresar','2015-10-22 13:15:56','visitante','Visitante','1','fe80::1874:2ac0:4ac3',NULL,'nickname,password','','snh31d3r,todobien'),(316,'Insertar Cajero','2015-10-22 13:17:07','snh31d3r','Cajero','4567890','fe80::1874:2ac0:4ac3',NULL,'cedula,nombres,apellidos,direccion,telefono,email,usuario,user(Login),password,imagen','','4567890,Dani,Arias R,calle,4535345345,d.s.a.r@hotmail.com,Cajero,daniArias,123456789,~\\Imagenes\\Usuario\\5.jpg'),(317,'Eliminar Usuario','2015-10-22 13:17:18','snh31d3r','Administrador','4567890','fe80::1874:2ac0:4ac3',NULL,'idUsuario,nombresUsuario,apellidosUsuario,direccionUsuario,telefonoUsuario,TipoUsuario,emailUsuario,imagenUsuario,nickUsuario,passwordUsuario','4567890,Dani,Arias R,calle,4535345345,2,d.s.a.r@hotmail.com,~\\Imagenes\\Usuario\\5.jpg,daniArias,123456789',''),(318,'Ingresar','2015-10-22 13:37:17','visitante','Visitante','1','fe80::1874:2ac0:4ac3',NULL,'nickname,password','','yheyhe,123456789'),(319,'Eleccion Producto','2015-10-22 13:38:24','yheyhe','Cliente','7654321','fe80::1874:2ac0:4ac3',NULL,'idCliente,idProducto,idProveedor,unidadesProducto','','7654321,3123123,6548465,1'),(320,'Comprar','2015-10-22 13:38:40','yheyhe','Cliente','12','fe80::1874:2ac0:4ac3',NULL,'idFactura,idCliente,idProveedor,unidadesProducto,fechaReserva','','12,7654321,3123123,6548465,1'),(321,'Ingresar','2015-10-22 14:18:56','visitante','Visitante','1','fe80::1874:2ac0:4ac3',NULL,'nickname,password','','snh31d3r,todobien'),(322,'Ingresar','2015-10-22 14:23:16','visitante','Visitante','1','fe80::1874:2ac0:4ac3',NULL,'nickname,password','','snh31d3r,todobien'),(323,'Ingresar','2015-10-22 14:26:58','visitante','Visitante','1','fe80::1874:2ac0:4ac3',NULL,'nickname,password','','snh31d3r,todobien'),(324,'Insertar Producto','2015-10-22 14:28:04','snh31d3r','Administrador','4356578','fe80::1874:2ac0:4ac3',NULL,'id,nombre,descripcion,imagen','','4356578,Comino,esto es un comino,~\\Imagenes\\Productos\\6.jpg'),(325,'Ingresar','2015-10-22 14:34:04','visitante','Visitante','1','fe80::1874:2ac0:4ac3',NULL,'nickname,password','','snh31d3r,todobien'),(326,'Ingresar','2015-10-22 14:35:26','visitante','Visitante','1','fe80::1874:2ac0:4ac3',NULL,'nickname,password','','snh31d3r,todobien'),(327,'Ingresar','2015-10-22 14:57:22','visitante','Visitante','1','fe80::1874:2ac0:4ac3',NULL,'nickname,password','','snh31d3r,todobien'),(328,'Modificar Proveedor','2015-10-22 14:58:16','snh31d3r','Administrador','2342342','fe80::1874:2ac0:4ac3',NULL,'idProveedor,nombreProveedor,direccionProveedor,telefonoProveedor,emailProveedor,logoProveedor','2342342,adadas,dadasd,2342342343,aloapaerdna94@gmail.com,~\\Imagenes\\Logo\\3.jpg','2342342,adas,dadasd,2342342343,aloapaerdna94@gmail.com,~\\Imagenes\\Logo\\3.jpg'),(329,'Ingresar','2015-10-22 15:05:49','visitante','Visitante','1','fe80::1874:2ac0:4ac3',NULL,'nickname,password','','snh31d3r,todobien'),(330,'Ingresar','2015-10-22 15:19:30','visitante','Visitante','1','fe80::1874:2ac0:4ac3',NULL,'nickname,password','','snh31d3r,todobien'),(331,'Ingresar','2015-10-22 15:21:15','visitante','Visitante','1','fe80::1874:2ac0:4ac3',NULL,'nickname,password','','snh31d3r,todobien'),(332,'Insertar Producto Proveedor','2015-10-22 15:21:59','snh31d3r','Administrador','10','fe80::1874:2ac0:4ac3',NULL,'id,nombreProducto,nombreProveedor,precioProducto','','10,Comino,adas,6799'),(333,'Ingresar','2015-10-22 15:25:53','visitante','Visitante','1','fe80::1874:2ac0:4ac3',NULL,'nickname,password','','aplushawol,123456789'),(334,'Ingresar','2015-10-22 15:29:11','visitante','Visitante','1','fe80::1874:2ac0:4ac3',NULL,'nickname,password','','aplushawol,123456789'),(335,'Vender Pedido','2015-10-22 15:29:33','aplushawol','cajero','2342342','fe80::1874:2ac0:4ac3',NULL,'idCajero,idCliente,idProducto,idProveedor,unidadesProducto','','2342342,7654321,4234234,6548465,13'),(336,'Eliminar Carrito Cajero','2015-10-22 15:29:50','aplushawol','cajero','9','fe80::1874:2ac0:4ac3',NULL,'idPedido,idCliente,idProveedor,idProducto,unidadesProducto','9,7654321,6548465,1234578,2',''),(337,'Eliminar Carrito Cajero','2015-10-22 15:29:55','aplushawol','cajero','11','fe80::1874:2ac0:4ac3',NULL,'idPedido,idCliente,idProveedor,idProducto,unidadesProducto','11,7654321,6548465,4234234,2',''),(338,'Vender Pedido','2015-10-22 15:30:00','aplushawol','cajero','2342342','fe80::1874:2ac0:4ac3',NULL,'idCajero,idCliente,idProducto,idProveedor,unidadesProducto','','2342342,7654321,4234234,6548465,2'),(339,'Vender Pedido','2015-10-22 15:30:00','aplushawol','cajero','2342342','fe80::1874:2ac0:4ac3',NULL,'idCajero,idCliente,idProducto,idProveedor,unidadesProducto','','2342342,7654321,3123123,6548465,1'),(340,'Ingresar','2015-10-22 15:31:50','visitante','Visitante','1','fe80::1874:2ac0:4ac3',NULL,'nickname,password','','aplushawol,123456789'),(341,'Ingresar','2015-10-22 15:53:00','visitante','Visitante','1','fe80::1874:2ac0:4ac3',NULL,'nickname,password','','snh31d3r,todobien'),(342,'Ingresar','2015-10-22 15:58:53','visitante','Visitante','1','fe80::1874:2ac0:4ac3',NULL,'nickname,password','','snh31d3r,todobien'),(343,'Ingresar','2015-10-22 16:07:07','visitante','Visitante','1','fe80::1874:2ac0:4ac3',NULL,'nickname,password','','aplushawol,123456789'),(344,'Ingresar','2015-10-22 16:15:47','visitante','Visitante','1','fe80::1874:2ac0:4ac3',NULL,'nickname,password','','snh31d3r,todobien'),(345,'Ingresar','2015-10-22 16:23:32','visitante','Visitante','1','fe80::1874:2ac0:4ac3',NULL,'nickname,password','','snh31d3r,todobien'),(346,'Ingresar','2015-10-22 16:24:32','visitante','Visitante','1','fe80::1874:2ac0:4ac3',NULL,'nickname,password','','snh31d3r,todobien'),(347,'Ingresar','2015-10-22 16:34:07','visitante','Visitante','1','fe80::1874:2ac0:4ac3',NULL,'nickname,password','','snh31d3r,todobien'),(348,'Ingresar','2015-10-22 16:34:47','visitante','Visitante','1','fe80::1874:2ac0:4ac3',NULL,'nickname,password','','yheyhe,123456789'),(349,'Ingresar','2015-10-22 16:35:16','visitante','Visitante','1','fe80::1874:2ac0:4ac3',NULL,'nickname,password','','aplushawol,123456789'),(350,'Ingresar','2015-10-22 16:36:42','visitante','Visitante','1','fe80::1874:2ac0:4ac3',NULL,'nickname,password','','snh31d3r,todobien'),(351,'Ingresar','2015-10-22 16:37:18','visitante','Visitante','1','fe80::1874:2ac0:4ac3',NULL,'nickname,password','','snh31d3r,todobien'),(352,'Ingresar','2015-10-22 16:42:49','visitante','Visitante','1','fe80::1874:2ac0:4ac3',NULL,'nickname,password','','snh31d3r,todobien'),(353,'Ingresar','2015-10-23 17:28:28','visitante','Visitante','1','fe80::28ab:2e9c:4ac3',NULL,'nickname,password','','snh31d3r,todobien'),(354,'Ingresar','2015-10-23 17:30:43','visitante','Visitante','1','fe80::28ab:2e9c:4ac3',NULL,'nickname,password','','snh31d3r,todobien'),(355,'Ingresar','2015-10-23 17:33:14','visitante','Visitante','1','fe80::28ab:2e9c:4ac3',NULL,'nickname,password','','snh31d3r,todobien'),(356,'Ingresar','2015-10-23 17:38:24','visitante','Visitante','1','fe80::28ab:2e9c:4ac3',NULL,'nickname,password','','snh31d3r,todobien'),(357,'Ingresar','2015-10-23 17:43:19','visitante','Visitante','1','fe80::28ab:2e9c:4ac3',NULL,'nickname,password','','snh31d3r,todobien'),(358,'Ingresar','2015-10-23 17:50:07','visitante','Visitante','1','fe80::28ab:2e9c:4ac3',NULL,'nickname,password','','snh31d3r,todobien'),(359,'Ingresar','2015-10-23 17:56:52','visitante','Visitante','1','fe80::28ab:2e9c:4ac3',NULL,'nickname,password','','snh31d3r,todobien'),(360,'Ingresar','2015-10-23 19:38:53','visitante','Visitante','1','fe80::1c69:3eba:4ac2',NULL,'nickname,password','','snh31d3r,todobin'),(361,'Ingresar','2015-10-23 19:39:03','visitante','Visitante','1','fe80::1c69:3eba:4ac2',NULL,'nickname,password','','snh31d3r,todobien'),(362,'Ingresar','2015-10-24 09:41:01','visitante','Visitante','1','fe80::2076:914:4ace:',NULL,'nickname,password','','snh31d3r,todobien'),(363,'Ingresar','2015-10-24 10:00:23','visitante','Visitante','1','fe80::2076:914:4ace:',NULL,'nickname,password','','snh31d3r,todobien'),(364,'Ingresar','2015-10-24 10:00:50','visitante','Visitante','1','fe80::2076:914:4ace:',NULL,'nickname,password','','snh31d3r,todobien'),(365,'Ingresar','2015-10-24 10:04:41','visitante','Visitante','1','fe80::2076:914:4ace:',NULL,'nickname,password','','snh31d3r,todobien'),(366,'Ingresar','2015-10-24 10:08:07','visitante','Visitante','1','fe80::2076:914:4ace:',NULL,'nickname,password','','snh31d3r,todobien'),(367,'Ingresar','2015-10-24 10:25:16','visitante','Visitante','1','fe80::2076:914:4ace:',NULL,'nickname,password','','aplushawol,123456789'),(368,'Ingresar','2015-10-24 10:28:01','visitante','Visitante','1','fe80::2076:914:4ace:',NULL,'nickname,password','','snh31d3r,todobien'),(369,'Ingresar','2015-10-24 10:28:23','visitante','Visitante','1','fe80::2076:914:4ace:',NULL,'nickname,password','','yheyhe,123456789'),(370,'Ingresar','2015-10-24 10:29:47','visitante','Visitante','1','fe80::2076:914:4ace:',NULL,'nickname,password','','yheyhe,123456789'),(371,'Ingresar','2015-10-24 10:31:15','visitante','Visitante','1','fe80::2076:914:4ace:',NULL,'nickname,password','','aplushawol,123456789'),(372,'Ingresar','2015-10-24 10:34:07','visitante','Visitante','1','fe80::2076:914:4ace:',NULL,'nickname,password','','yheyhe,123456789'),(373,'Eleccion Producto','2015-10-24 10:34:33','yheyhe','Cliente','7654321','fe80::2076:914:4ace:',NULL,'idCliente,idProducto,idProveedor,unidadesProducto','','7654321,3123123,6548465,1'),(374,'Ingresar','2015-10-24 10:34:49','visitante','Visitante','1','fe80::2076:914:4ace:',NULL,'nickname,password','','yheyhe,123456789'),(375,'Comprar','2015-10-24 10:35:02','yheyhe','Cliente','8','fe80::2076:914:4ace:',NULL,'idFactura,idCliente,idProveedor,unidadesProducto,fechaReserva','','8,7654321,3123123,6548465,1'),(376,'Ingresar','2015-10-24 10:35:37','visitante','Visitante','1','fe80::2076:914:4ace:',NULL,'nickname,password','','aplushawol,123456789'),(377,'Vender Pedido','2015-10-24 10:35:52','aplushawol','cajero','2342342','fe80::2076:914:4ace:',NULL,'idCajero,idCliente,idProducto,idProveedor,unidadesProducto','','2342342,7654321,3123123,6548465,1'),(378,'Ingresar','2015-10-24 12:12:15','visitante','Visitante','1','fe80::18fe:2d46:37f1',NULL,'nickname,password','','aplushawol,123456789'),(379,'Ingresar','2015-10-24 12:12:54','visitante','Visitante','1','fe80::18fe:2d46:37f1',NULL,'nickname,password','','yheyhe,123456789'),(380,'Eleccion Producto','2015-10-24 12:15:30','yheyhe','Cliente','7654321','fe80::18fe:2d46:37f1',NULL,'idCliente,idProducto,idProveedor,unidadesProducto','','7654321,3123123,6548465,2'),(381,'Eleccion Producto','2015-10-24 12:15:39','yheyhe','Cliente','7654321','fe80::18fe:2d46:37f1',NULL,'idCliente,idProducto,idProveedor,unidadesProducto','','7654321,5656446,6548465,2'),(382,'Comprar','2015-10-24 12:15:56','yheyhe','Cliente','8','fe80::18fe:2d46:37f1',NULL,'idFactura,idCliente,idProveedor,unidadesProducto,fechaReserva','','8,7654321,3123123,6548465,2'),(383,'Comprar','2015-10-24 12:15:56','yheyhe','Cliente','9','fe80::18fe:2d46:37f1',NULL,'idFactura,idCliente,idProveedor,unidadesProducto,fechaReserva','','9,7654321,5656446,6548465,2'),(384,'Ingresar','2015-10-24 12:16:15','visitante','Visitante','1','fe80::18fe:2d46:37f1',NULL,'nickname,password','','aplushawol,123456789'),(385,'Vender Pedido','2015-10-24 12:16:50','aplushawol','cajero','2342342','fe80::18fe:2d46:37f1',NULL,'idCajero,idCliente,idProducto,idProveedor,unidadesProducto','','2342342,7654321,3123123,6548465,2'),(386,'Vender Pedido','2015-10-24 12:16:50','aplushawol','cajero','2342342','fe80::18fe:2d46:37f1',NULL,'idCajero,idCliente,idProducto,idProveedor,unidadesProducto','','2342342,7654321,5656446,6548465,2'),(387,'Ingresar','2015-10-24 12:18:47','visitante','Visitante','1','fe80::18fe:2d46:37f1',NULL,'nickname,password','','yheyhe,123456789'),(388,'Ingresar','2015-10-24 12:25:10','visitante','Visitante','1','fe80::18fe:2d46:37f1',NULL,'nickname,password','','yheyhe,123456789'),(389,'Eleccion Producto','2015-10-24 12:25:29','yheyhe','Cliente','7654321','fe80::18fe:2d46:37f1',NULL,'idCliente,idProducto,idProveedor,unidadesProducto','','7654321,3123123,6548465,1'),(390,'Comprar','2015-10-24 12:25:40','yheyhe','Cliente','8','fe80::18fe:2d46:37f1',NULL,'idFactura,idCliente,idProveedor,unidadesProducto,fechaReserva','','8,7654321,3123123,6548465,1'),(391,'Ingresar','2015-10-24 12:26:04','visitante','Visitante','1','fe80::18fe:2d46:37f1',NULL,'nickname,password','','aplushawol,123456789'),(392,'Vender Pedido','2015-10-24 12:26:25','aplushawol','cajero','2342342','fe80::18fe:2d46:37f1',NULL,'idCajero,idCliente,idProducto,idProveedor,unidadesProducto','','2342342,7654321,3123123,6548465,1'),(393,'Ingresar','2015-10-24 12:27:43','visitante','Visitante','1','fe80::18fe:2d46:37f1',NULL,'nickname,password','','yheyhe,123456789'),(394,'Eleccion Producto','2015-10-24 12:27:56','yheyhe','Cliente','7654321','fe80::18fe:2d46:37f1',NULL,'idCliente,idProducto,idProveedor,unidadesProducto','','7654321,3123123,6548465,1'),(395,'Comprar','2015-10-24 12:28:22','yheyhe','Cliente','8','fe80::18fe:2d46:37f1',NULL,'idFactura,idCliente,idProveedor,unidadesProducto,fechaReserva','','8,7654321,3123123,6548465,1'),(396,'Ingresar','2015-10-24 12:28:47','visitante','Visitante','1','fe80::18fe:2d46:37f1',NULL,'nickname,password','','snh31d3r,todobien'),(397,'Ingresar','2015-10-24 12:29:09','visitante','Visitante','1','fe80::18fe:2d46:37f1',NULL,'nickname,password','','aplushawol,todobien'),(398,'Ingresar','2015-10-24 12:29:19','visitante','Visitante','1','fe80::18fe:2d46:37f1',NULL,'nickname,password','','aplushawol,123456789'),(399,'Vender Pedido','2015-10-24 12:29:33','aplushawol','cajero','2342342','fe80::18fe:2d46:37f1',NULL,'idCajero,idCliente,idProducto,idProveedor,unidadesProducto','','2342342,7654321,3123123,6548465,1'),(400,'Ingresar','2015-10-24 12:40:00','visitante','Visitante','1','fe80::18fe:2d46:37f1',NULL,'nickname,password','','yheyhe,123456789'),(401,'Eleccion Producto','2015-10-24 12:40:28','yheyhe','Cliente','7654321','fe80::18fe:2d46:37f1',NULL,'idCliente,idProducto,idProveedor,unidadesProducto','','7654321,3123123,6548465,1'),(402,'Comprar','2015-10-24 12:40:41','yheyhe','Cliente','8','fe80::18fe:2d46:37f1',NULL,'idFactura,idCliente,idProveedor,unidadesProducto,fechaReserva','','8,7654321,3123123,6548465,1'),(403,'Ingresar','2015-10-24 12:41:10','visitante','Visitante','1','fe80::18fe:2d46:37f1',NULL,'nickname,password','','aplushawol,123456789'),(404,'Vender Pedido','2015-10-24 12:41:27','aplushawol','cajero','2342342','fe80::18fe:2d46:37f1',NULL,'idCajero,idCliente,idProducto,idProveedor,unidadesProducto','','2342342,7654321,3123123,6548465,1'),(405,'Ingresar','2015-10-24 12:49:44','visitante','Visitante','1','fe80::18fe:2d46:37f1',NULL,'nickname,password','','yheyhe,123456789'),(406,'Eleccion Producto','2015-10-24 12:49:58','yheyhe','Cliente','7654321','fe80::18fe:2d46:37f1',NULL,'idCliente,idProducto,idProveedor,unidadesProducto','','7654321,3123123,6548465,1'),(407,'Comprar','2015-10-24 12:50:10','yheyhe','Cliente','8','fe80::18fe:2d46:37f1',NULL,'idFactura,idCliente,idProveedor,unidadesProducto,fechaReserva','','8,7654321,3123123,6548465,1'),(408,'Ingresar','2015-10-24 12:50:22','visitante','Visitante','1','fe80::18fe:2d46:37f1',NULL,'nickname,password','','aplushawol,123456789'),(409,'Vender Pedido','2015-10-24 12:50:33','aplushawol','cajero','2342342','fe80::18fe:2d46:37f1',NULL,'idCajero,idCliente,idProducto,idProveedor,unidadesProducto','','2342342,7654321,3123123,6548465,1'),(410,'Ingresar','2015-10-24 12:51:11','visitante','Visitante','1','fe80::18fe:2d46:37f1',NULL,'nickname,password','','yheyhe,123456789'),(411,'Ingresar','2015-10-24 12:52:06','visitante','Visitante','1','fe80::18fe:2d46:37f1',NULL,'nickname,password','','yheyhe,123456789'),(412,'Eleccion Producto','2015-10-24 12:52:56','yheyhe','Cliente','7654321','fe80::18fe:2d46:37f1',NULL,'idCliente,idProducto,idProveedor,unidadesProducto','','7654321,3123123,6548465,1'),(413,'Comprar','2015-10-24 12:53:16','yheyhe','Cliente','8','fe80::18fe:2d46:37f1',NULL,'idFactura,idCliente,idProveedor,unidadesProducto,fechaReserva','','8,7654321,3123123,6548465,1'),(414,'Ingresar','2015-10-24 12:53:38','visitante','Visitante','1','fe80::18fe:2d46:37f1',NULL,'nickname,password','','aplushawol,123456789'),(415,'Vender Pedido','2015-10-24 12:53:55','aplushawol','cajero','2342342','fe80::18fe:2d46:37f1',NULL,'idCajero,idCliente,idProducto,idProveedor,unidadesProducto','','2342342,7654321,3123123,6548465,1'),(416,'Ingresar','2015-10-24 12:58:43','visitante','Visitante','1','fe80::18fe:2d46:37f1',NULL,'nickname,password','','yheyhe,123456789'),(417,'Eleccion Producto','2015-10-24 12:59:31','yheyhe','Cliente','7654321','fe80::18fe:2d46:37f1',NULL,'idCliente,idProducto,idProveedor,unidadesProducto','','7654321,1234577,5555555,2'),(418,'Comprar','2015-10-24 12:59:41','yheyhe','Cliente','8','fe80::18fe:2d46:37f1',NULL,'idFactura,idCliente,idProveedor,unidadesProducto,fechaReserva','','8,7654321,1234577,5555555,2'),(419,'Ingresar','2015-10-24 13:00:06','visitante','Visitante','1','fe80::18fe:2d46:37f1',NULL,'nickname,password','','aplushawol,123456789'),(420,'Vender Pedido','2015-10-24 13:00:53','aplushawol','cajero','2342342','fe80::18fe:2d46:37f1',NULL,'idCajero,idCliente,idProducto,idProveedor,unidadesProducto','','2342342,7654321,1234577,5555555,2'),(421,'Ingresar','2015-10-24 13:02:04','visitante','Visitante','1','fe80::18fe:2d46:37f1',NULL,'nickname,password','','yheyhe,123456789'),(422,'Eleccion Producto','2015-10-24 13:02:48','yheyhe','Cliente','7654321','fe80::18fe:2d46:37f1',NULL,'idCliente,idProducto,idProveedor,unidadesProducto','','7654321,1234578,6548465,2'),(423,'Comprar','2015-10-24 13:02:59','yheyhe','Cliente','8','fe80::18fe:2d46:37f1',NULL,'idFactura,idCliente,idProveedor,unidadesProducto,fechaReserva','','8,7654321,1234578,6548465,2'),(424,'Ingresar','2015-10-24 13:40:49','visitante','Visitante','1','fe80::18fe:2d46:37f1',NULL,'nickname,password','','yheyhe,123456789'),(425,'Ingresar','2015-10-24 13:43:58','visitante','Visitante','1','fe80::18fe:2d46:37f1',NULL,'nickname,password','','yheyhe,123456789'),(426,'Ingresar','2015-10-24 13:45:24','visitante','Visitante','1','fe80::18fe:2d46:37f1',NULL,'nickname,password','','yheyhe,123456789'),(427,'Ingresar','2015-10-24 13:47:40','visitante','Visitante','1','fe80::18fe:2d46:37f1',NULL,'nickname,password','','yheyhe,123456789'),(428,'Ingresar','2015-10-24 13:49:01','visitante','Visitante','1','fe80::18fe:2d46:37f1',NULL,'nickname,password','','yheyhe,123456789'),(429,'Ingresar','2015-10-24 13:53:06','visitante','Visitante','1','fe80::18fe:2d46:37f1',NULL,'nickname,password','','yheyhe,123456789'),(430,'Ingresar','2015-10-24 13:58:01','visitante','Visitante','1','fe80::18fe:2d46:37f1',NULL,'nickname,password','','yheyhe,1234567898'),(431,'Ingresar','2015-10-24 13:58:16','visitante','Visitante','1','fe80::18fe:2d46:37f1',NULL,'nickname,password','','yheyhe,123456789'),(432,'Ingresar','2015-10-24 14:01:20','visitante','Visitante','1','fe80::18fe:2d46:37f1',NULL,'nickname,password','','yheyhe,123456789'),(433,'Eleccion Producto','2015-10-24 14:02:08','yheyhe','Cliente','7654321','fe80::18fe:2d46:37f1',NULL,'idCliente,idProducto,idProveedor,unidadesProducto','','7654321,3123123,6548465,3'),(434,'Eleccion Producto','2015-10-24 14:02:19','yheyhe','Cliente','7654321','fe80::18fe:2d46:37f1',NULL,'idCliente,idProducto,idProveedor,unidadesProducto','','7654321,1234578,6548465,2'),(435,'Ingresar','2015-10-24 14:02:42','visitante','Visitante','1','fe80::18fe:2d46:37f1',NULL,'nickname,password','','aplushawol,123456789'),(436,'Vender Pedido','2015-10-24 14:03:29','aplushawol','cajero','2342342','fe80::18fe:2d46:37f1',NULL,'idCajero,idCliente,idProducto,idProveedor,unidadesProducto','','2342342,7654321,1234578,6548465,2'),(437,'Ingresar','2015-10-24 14:23:37','visitante','Visitante','1','fe80::18b4:2445:37f1',NULL,'nickname,password','','aplushawol,123456789'),(438,'Ingresar','2015-10-24 14:24:03','visitante','Visitante','1','fe80::18b4:2445:37f1',NULL,'nickname,password','','yheyhe,123456789'),(439,'Ingresar','2015-10-24 14:24:22','visitante','Visitante','1','fe80::18b4:2445:37f1',NULL,'nickname,password','','yheyhe,123456789'),(440,'Ingresar','2015-10-24 14:26:06','visitante','Visitante','1','fe80::18b4:2445:37f1',NULL,'nickname,password','','yheyhe,123456789'),(441,'Eleccion Producto','2015-10-24 14:26:32','yheyhe','Cliente','7654321','fe80::18b4:2445:37f1',NULL,'idCliente,idProducto,idProveedor,unidadesProducto','','7654321,1234578,6548465,2'),(442,'Comprar','2015-10-24 14:26:41','yheyhe','Cliente','9','fe80::18b4:2445:37f1',NULL,'idFactura,idCliente,idProveedor,unidadesProducto,fechaReserva','','9,7654321,3123123,6548465,3'),(443,'Comprar','2015-10-24 14:26:41','yheyhe','Cliente','10','fe80::18b4:2445:37f1',NULL,'idFactura,idCliente,idProveedor,unidadesProducto,fechaReserva','','10,7654321,1234578,6548465,2'),(444,'Comprar','2015-10-24 14:26:41','yheyhe','Cliente','11','fe80::18b4:2445:37f1',NULL,'idFactura,idCliente,idProveedor,unidadesProducto,fechaReserva','','11,7654321,1234578,6548465,2'),(445,'Insertar Visitante','2015-10-24 20:36:01','Visitante','Visitante','1234566','fe80::1144:303f:2cab',NULL,'cedula,nombres,apellidos,direccion,telefono,email,usuario,user(Login),password,imagen','','1234566,Prueba,Prueba,bogota,2342342423,prueba@hotmail.com,Cliente,prueba,123456789,~\\Imagenes\\Usuario\\5.jpg'),(446,'Ingresar','2015-10-24 20:36:19','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','prueba,123456789'),(447,'Eleccion Producto','2015-10-24 20:43:57','prueba','Cliente','1234566','fe80::1144:303f:2cab',NULL,'idCliente,idProducto,idProveedor,unidadesProducto','','1234566,3123123,6548465,2'),(448,'Ingresar','2015-10-25 14:37:59','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','snh31d3r,todobien'),(449,'Ingresar','2015-10-25 14:41:11','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','snh31d3r,TODOBIEN'),(450,'Ingresar','2015-10-25 14:51:13','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','snh31d3r,todobien'),(451,'Ingresar','2015-10-25 14:51:47','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','snh31d3r,todobien'),(452,'Ingresar','2015-10-25 15:11:41','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','snh31d3r,todobien'),(453,'Ingresar','2015-10-25 15:26:02','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','snh31d3r,todobien'),(454,'Ingresar','2015-10-25 15:29:12','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','snh31d3r,todobien'),(455,'Ingresar','2015-10-25 15:32:23','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','snh31d3r,todobien'),(456,'Ingresar','2015-10-25 16:46:43','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','snh31d3r,todobien'),(457,'Ingresar','2015-10-25 17:23:46','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','snh31d3r,todobien'),(458,'Ingresar','2015-10-25 18:10:46','visitante','Visitante','1','fe80::3083:3b1d:4ac2',NULL,'nickname,password','','snh31d3r,todobien'),(459,'Ingresar','2015-10-25 18:26:38','visitante','Visitante','1','fe80::3083:3b1d:4ac2',NULL,'nickname,password','','snh31d3r,todobien'),(460,'Ingresar','2015-10-25 18:28:06','visitante','Visitante','1','fe80::3083:3b1d:4ac2',NULL,'nickname,password','','snh31d3r,todobien'),(461,'Ingresar','2015-10-25 18:31:58','visitante','Visitante','1','fe80::3083:3b1d:4ac2',NULL,'nickname,password','','snh31d3r,todobien'),(462,'Ingresar','2015-10-25 18:37:33','visitante','Visitante','1','fe80::3083:3b1d:4ac2',NULL,'nickname,password','','snh31d3r,todobien'),(463,'Ingresar','2015-10-25 18:39:55','visitante','Visitante','1','fe80::3083:3b1d:4ac2',NULL,'nickname,password','','snh31d3r,todobien'),(464,'Ingresar','2015-10-25 18:53:06','visitante','Visitante','1','fe80::3083:3b1d:4ac2',NULL,'nickname,password','','snh31d3r,todobien'),(465,'Ingresar','2015-10-25 18:54:40','visitante','Visitante','1','fe80::3083:3b1d:4ac2',NULL,'nickname,password','','snh31d3r,todobien'),(466,'Ingresar','2015-10-25 19:24:37','visitante','Visitante','1','fe80::3083:3b1d:4ac2',NULL,'nickname,password','','snh31d3r,todobien'),(467,'Ingresar','2015-10-25 19:27:55','visitante','Visitante','1','fe80::3083:3b1d:4ac2',NULL,'nickname,password','','snh31d3r,todobien'),(468,'Ingresar','2015-10-25 19:31:46','visitante','Visitante','1','fe80::3083:3b1d:4ac2',NULL,'nickname,password','','snh31d3r,todobien'),(469,'Ingresar','2015-10-25 19:35:08','visitante','Visitante','1','fe80::3083:3b1d:4ac2',NULL,'nickname,password','','snh31d3r,todobien'),(470,'Ingresar','2015-10-25 19:39:05','visitante','Visitante','1','fe80::3083:3b1d:4ac2',NULL,'nickname,password','','snh31d3r,todobin'),(471,'Ingresar','2015-10-25 19:39:21','visitante','Visitante','1','fe80::3083:3b1d:4ac2',NULL,'nickname,password','','snh31d3r,todobien'),(472,'Ingresar','2015-10-25 19:40:10','visitante','Visitante','1','fe80::3083:3b1d:4ac2',NULL,'nickname,password','','snh31d3r,todobien'),(473,'Ingresar','2015-10-25 19:57:23','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','snh31d3r,todobien'),(474,'Ingresar','2015-10-25 20:05:12','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','snh31d3r,todobien'),(475,'Ingresar','2015-10-25 20:08:07','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','snh31d3r,todobien'),(476,'Ingresar','2015-10-25 20:11:27','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','snh31d3r,todobien'),(477,'Ingresar','2015-10-25 20:12:26','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','snh31d3r,todobien'),(478,'Ingresar','2015-10-25 20:16:16','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','snh31d3r,todobien'),(479,'Ingresar','2015-10-25 20:27:00','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','snh31d3r,todobien'),(480,'Ingresar','2015-10-25 21:02:06','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','snh31d3r,todobien'),(481,'Ingresar','2015-10-25 21:07:48','visitante','Visitante','1','fe80::1144:303f:2cab',NULL,'nickname,password','','snh31d3r,todobien'),(482,'Ingresar','2015-10-26 11:13:58','visitante','Visitante','1','fe80::140b:2679:37f1',NULL,'nickname,password','','snh31d3r,todobien'),(483,'Ingresar','2015-10-26 11:43:28','visitante','Visitante','1','fe80::140b:2679:37f1',NULL,'nickname,password','','snh31d3r,todobien'),(484,'Ingresar','2015-10-26 11:45:00','visitante','Visitante','1','fe80::140b:2679:37f1',NULL,'nickname,password','','snh31d3r,todobien'),(485,'Ingresar','2015-10-26 11:55:37','visitante','Visitante','1','fe80::140b:2679:37f1',NULL,'nickname,password','','snh31d3r,todobien'),(486,'Ingresar','2015-10-26 11:58:17','visitante','Visitante','1','fe80::140b:2679:37f1',NULL,'nickname,password','','snh31d3r,todobien'),(487,'Ingresar','2015-10-26 12:11:38','visitante','Visitante','1','fe80::140b:2679:37f1',NULL,'nickname,password','','snh31d3r,todobien'),(488,'Ingresar','2015-10-26 12:14:58','visitante','Visitante','1','fe80::140b:2679:37f1',NULL,'nickname,password','','snh31d3r,todobien'),(489,'Ingresar','2015-10-26 12:18:44','visitante','Visitante','1','fe80::140b:2679:37f1',NULL,'nickname,password','','snh31d3r,todobien'),(490,'Ingresar','2015-10-26 13:10:03','visitante','Visitante','1','fe80::140b:2679:37f1',NULL,'nickname,password','','snh31d3r,todobien'),(491,'Ingresar','2015-10-26 13:33:12','visitante','Visitante','1','fe80::8ce:5e1:37f1:d',NULL,'nickname,password','','snh31d3r,todobien'),(492,'Ingresar','2015-10-26 13:41:16','visitante','Visitante','1','fe80::8ce:5e1:37f1:d',NULL,'nickname,password','','snh31d3r,todobien'),(493,'Ingresar','2015-10-26 13:46:49','visitante','Visitante','1','fe80::8ce:5e1:37f1:d',NULL,'nickname,password','','snh31d3r,todobien'),(494,'Ingresar','2015-10-26 13:52:10','visitante','Visitante','1','fe80::8ce:5e1:37f1:d',NULL,'nickname,password','','snh31d3r,todobien'),(495,'Ingresar','2015-10-26 14:02:49','visitante','Visitante','1','fe80::8ce:5e1:37f1:d',NULL,'nickname,password','','snh31d3r,todobien'),(496,'Ingresar','2015-10-26 14:07:44','visitante','Visitante','1','fe80::8ce:5e1:37f1:d',NULL,'nickname,password','','snh31d3r,todobien'),(497,'Ingresar','2015-10-26 14:11:12','visitante','Visitante','1','fe80::8ce:5e1:37f1:d',NULL,'nickname,password','','aplushawol,123456789'),(498,'Ingresar','2015-10-26 14:14:07','visitante','Visitante','1','fe80::8ce:5e1:37f1:d',NULL,'nickname,password','','snh31d3r,todobien'),(499,'Modificar Adquirir Producto','2015-10-26 14:15:58','snh31d3r','Administrador','1','fe80::8ce:5e1:37f1:d',NULL,'id,precioProductoV,cantidadProducto','1,2,2','1,20,2');

/*Table structure for table `tipo_usuario` */

DROP TABLE IF EXISTS `tipo_usuario`;

CREATE TABLE `tipo_usuario` (
  `idTipoUsuario` int(11) NOT NULL,
  `tipoUsuatio` text,
  PRIMARY KEY (`idTipoUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tipo_usuario` */

insert  into `tipo_usuario`(idTipoUsuario,tipoUsuatio) values (1,'Administrador'),(2,'Cajero'),(3,'Cliente');

/*Table structure for table `usuario` */

DROP TABLE IF EXISTS `usuario`;

CREATE TABLE `usuario` (
  `idUsuario` int(11) NOT NULL,
  `nombresUsuario` text,
  `apellidosUsuario` text,
  `direccionUsuario` text,
  `telefonoUsuario` text,
  `emailUsuario` text,
  `idTipoUsuario` int(11) DEFAULT NULL,
  `nickUsuario` text,
  `passUsuario` text,
  `imagenUsuario` text,
  PRIMARY KEY (`idUsuario`),
  KEY `FK_usuario_tipo_usuario` (`idTipoUsuario`),
  CONSTRAINT `FK_usuario_tipo` FOREIGN KEY (`idTipoUsuario`) REFERENCES `tipo_usuario` (`idTipoUsuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `usuario` */

insert  into `usuario`(idUsuario,nombresUsuario,apellidosUsuario,direccionUsuario,telefonoUsuario,emailUsuario,idTipoUsuario,nickUsuario,passUsuario,imagenUsuario) values (1,'a','a','calle falsa 123','1','a@supermercadoonline.com',3,'a','a','~\\Imagenes\\Usuario\\3.jpg'),(2,'d','f','2','1','ed@dd.com',3,'1','1','~\\Imagenes\\Usuario\\11.jpg'),(12,'a','a','a','1','a@a.com',3,'aaa','a','~\\Imagenes\\Usuario\\8.jpg'),(56465,'yhkjhk','hjhk','cll 5 sur 655-55','14895','asdas@hotmail.com',3,'yyy','yyy','~\\Imagenes\\Usuario\\10.jpg'),(1073516,'Daniel','Arias','calle','4534534534','d.s.a.r@hotmail.com',3,'sebas','123456789','~\\Imagenes\\Usuario\\2.jpg'),(1234566,'Prueba','Prueba','bogota','2342342423','prueba@hotmail.com',3,'prueba','123456789','~\\Imagenes\\Usuario\\5.jpg'),(1234567,'edwin','clavij','calle 5','12351','edwinclavijo22@gmail.com',3,'edwin22','123','~\\Imagenes\\Usuario\\9.jpg'),(2342342,'paola','chia','calle8A#1Avillanueva','564444','aloapaerdna_94@hotmail.com',2,'aplushawol','123456789','~\\Imagenes\\Usuario\\4.jpg'),(4335353,'paola ','chia','bdgdvd','34535345','d@hotmail.com',3,'pao','123456789','~\\Imagenes\\Usuario\\3.jpg'),(4456646,'Yesenia','Ramirez','calle8A','1555555565','d.s.a.r@hotmail.com',3,'darias','123456789','~\\Imagenes\\Usuario\\4.jpg'),(6413465,'A','B','calle falsa','4444444444','A@B.co',3,'AB123','111111111111111111111111111111','~\\Imagenes\\Usuario\\1.jpg'),(7654321,'yesenia','ramirez','bogota','1234567890','yheyhe-21@hotmail.com',3,'yheyhe','123456789','~\\Imagenes\\Usuario\\1.png'),(7666945,'A','B','calle falsa','7654656855','A@B.co',3,'AB1234','123','~\\Imagenes\\Usuario\\2.jpg'),(1073241163,'Angello Snheider','Triviño Umaña','calle falsa c 6 .5','8264456','snheider_14_@hotmail.com',1,'snh31d3r','todobien',NULL);

/* Procedure structure for procedure `SP_AdquirirProducto` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP_AdquirirProducto` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_AdquirirProducto`(in _idProducto_proveedor int, in _precioProductoV DOUBLE,in _cantidadProducto int,IN _usser TEXT, IN _ip TEXT, IN _mac TEXT)
BEGIN

	DECLARE _accion VARCHAR(30);
	DECLARE _tabla VARCHAR(50);
	DECLARE _campos VARCHAR(1000);
	DECLARE _antes VARCHAR(1000);
	DECLARE _ahora VARCHAR(1000);

	SET _accion = 'Modificar Adquirir Producto';
	SET _tabla = 'Administrador';
	SET _campos = CONCAT('id',',', 'precioProductoV',',', 'cantidadProducto');
	SET _antes =  (SELECT CONCAT(idProducto_proveedor,',',precioProductoV,',',cantidadProducto) FROM producto_proveedor WHERE idProducto_proveedor=_idProducto_proveedor);
	SET _ahora =  CONCAT(_idProducto_proveedor,',', _precioProductoV,',', _cantidadProducto);


	UPDATE producto_proveedor
	SET
	precioProductoV = _precioProductoV ,
	cantidadProducto = _cantidadProducto

	WHERE
	idProducto_proveedor = _idProducto_proveedor ;

	CALL sp_seguridad(_accion,_usser,_tabla,_idProducto_proveedor,_ip,_mac,_campos,_antes,_ahora);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `SP_CarritoLiberarProductos` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP_CarritoLiberarProductos` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_CarritoLiberarProductos`()
BEGIN

    SELECT * from pedido_producto;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `SP_ClientePedidos` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP_ClientePedidos` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_ClientePedidos`(in _idCliente int)
BEGIN
    SELECT DATE(fechaPedido) AS fechaPedido FROM pedido p, pedido_producto pp WHERE p.idEstadoPedido = 1 AND pp.idPedido = p.idPedido
    AND pp.idCliente = _idCliente AND p.idCliente = _idCliente order by fechaPedido;

    END */$$
DELIMITER ;

/* Procedure structure for procedure `SP_ComprarProductos` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP_ComprarProductos` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_ComprarProductos`(in _idPedido int,IN _usser TEXT, IN _ip TEXT, IN _mac TEXT)
BEGIN

	DECLARE _accion VARCHAR(30);
	DECLARE _tabla VARCHAR(50);
	DECLARE _campos VARCHAR(1000);
	DECLARE _antes VARCHAR(1000);
	DECLARE _ahora VARCHAR(1000);
	declare _idEstado int;


	set _idEstado = (SELECT idEstadoPedido from pedido where _idPedido=idPedido);
	SET _accion = 'Comprar';
	SET _tabla = 'Cliente';
	SET _campos = CONCAT('idFactura',',', 'idCliente',',', 'idProveedor',',','unidadesProducto',',','fechaReserva');
	SET _antes = '';
	SET _ahora = (SELECT CONCAT(idPedido, ',', idCliente, ',',idProducto, ',', idProveedor,',',unidadesProducto) FROM pedido_producto WHERE idPedido=_idPedido);

	if _idEstado=2
	then
	UPDATE pedido
	SET
	idEstadoPedido = 1

	WHERE
	idPedido = _idPedido ;

	CALL sp_seguridad(_accion,_usser,_tabla,_idPedido,_ip,_mac,_campos,_antes,_ahora);


	end if;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `SP_Contactar` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP_Contactar` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Contactar`(IN _usuario VARCHAR(30),IN _email VARCHAR(30),IN _mensaje TEXT, IN _id INT,IN _usser TEXT, IN _ip TEXT, IN _mac TEXT)
BEGIN
	DECLARE _accion VARCHAR(30);
	DECLARE _tabla VARCHAR(50);
	DECLARE _campos VARCHAR(1000);
	DECLARE _antes VARCHAR(1000);
	DECLARE _ahora VARCHAR(1000);

	SET _accion = 'Mensaje';
	SET _tabla = 'cliente';
	SET _campos = CONCAT('nombre',',', 'email',',', 'mensaje');
	SET _antes =  '';
	SET _ahora = CONCAT(_usuario,',',_email,',',_mensaje);

	INSERT INTO contactenos
	(
	nombre,
	email,
	mensaje
	)
	VALUES
	(
	_usuario,
	_email,
	_mensaje
	);

	CALL sp_seguridad(_accion,_usser,_tabla,_id,_ip,_mac,_campos,_antes,_ahora);

    END */$$
DELIMITER ;

/* Procedure structure for procedure `SP_CREAR_COMPONENTES` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP_CREAR_COMPONENTES` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_CREAR_COMPONENTES`()
BEGIN
INSERT componentes(
id_formulario,
componente,
texto,
id_idioma
)
SELECT
id_formulario,
componente,
texto,
(SELECT MAX(id_idioma)+1 FROM componentes)
FROM componentes where id_idioma=1;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `SP_CREAR_IDIOMA` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP_CREAR_IDIOMA` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_CREAR_IDIOMA`(in _nombre varchar (1000),in _terminacion varchar(1000))
BEGIN
INSERT INTO idiomas
	(nombre,
	terminacion
	)
	VALUES
	(_nombre,
	_terminacion
	);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `SP_EliminarCajeros` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP_EliminarCajeros` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_EliminarCajeros`()
BEGIN
SELECT *from usuario where idTipoUsuario = 2;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `SP_intentoinsert` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP_intentoinsert` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_intentoinsert`()
BEGIN
insert intO prueba1(
usuario,
direccion,
telefono
)
(
select
usuario,
direccion,
telefono
);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `SP_ListarCajeros` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP_ListarCajeros` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_ListarCajeros`()
BEGIN
	SELECT 0 AS idUsuario, '--Seleccione--' AS nombreUsuario
	UNION ALL
	SELECT	idUsuario, CONCAT (nombresUsuario,'  ',apellidosUsuario) AS nombreUsuario FROM usuario WHERE idTipoUsuario = 2 ORDER BY nombreUsuario;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `SP_ListarProductos` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP_ListarProductos` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_ListarProductos`()
BEGIN
	SELECT 	0 as idProducto,
		'--Seleccione--' as nombreProducto

		union all

		SELECT idProducto, nombreProducto

		from producto order by nombreProducto;

    END */$$
DELIMITER ;

/* Procedure structure for procedure `SP_EliminarCarrito` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP_EliminarCarrito` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_EliminarCarrito`(in _idPedido int, IN _usser TEXT, IN _ip TEXT, IN _mac TEXT)
BEGIN

	DECLARE _id INT;
	DECLARE _unidades INT;
	DECLARE _idProveedor INT;
	DECLARE _idProducto INT;
	DECLARE _accion VARCHAR(30);
	DECLARE _tabla VARCHAR(50);
	DECLARE _campos VARCHAR(1000);
	DECLARE _antes VARCHAR(1000);
	DECLARE _ahora VARCHAR(1000);


	SET _id = _idPedido;
	set _unidades = (SELECT unidadesProducto FROM pedido_producto WHERE idPedido=_idPedido);
	SET _idProveedor = (SELECT idProveedor FROM pedido_producto WHERE idPedido=_idPedido);
	SET _idProducto = (SELECT idProducto FROM pedido_producto WHERE idPedido=_idPedido);
	SET _accion = 'Eliminar Carrito';
	SET _tabla = 'Cliente';
	SET _campos = CONCAT('idPedido',',', 'idProducto',',', 'idProveedor',',', 'unidadesProducto');
	SET _antes =  (SELECT CONCAT(idPedido,',',idProducto,',',idProveedor,',',unidadesProducto) FROM pedido_producto WHERE idPedido=_idPedido);
	SET _ahora = '';

	UPDATE producto_proveedor
	SET
	cantidadProducto = cantidadProducto + _unidades

	WHERE
	idProducto = _idProducto AND
	idProveedor = _idProveedor;

	DELETE FROM pedido_producto
	WHERE
	idPedido = _idPedido ;

	DELETE FROM pedido WHERE idPedido=_idPedido;

	CALL sp_seguridad(_accion,_usser,_tabla,_id,_ip,_mac,_campos,_antes,_ahora);

    END */$$
DELIMITER ;

/* Procedure structure for procedure `SP_EliminarCarritoCajero` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP_EliminarCarritoCajero` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_EliminarCarritoCajero`(in _idCliente int, in _idPedido int, IN _usser TEXT, IN _ip TEXT, IN _mac TEXT)
BEGIN

	DECLARE _id INT;
	DECLARE _accion VARCHAR(30);
	DECLARE _tabla VARCHAR(50);
	DECLARE _campos VARCHAR(1000);
	DECLARE _antes VARCHAR(1000);
	DECLARE _ahora VARCHAR(1000);
	declare _cantidad int;
	DECLARE _idProveedor INT;
	DECLARE _idProducto INT;


	SET _id = _idPedido;
	SET _accion = 'Eliminar Carrito Cajero';
	SET _tabla = 'cajero';
	SET _campos = CONCAT('idPedido',',', 'idCliente',',', 'idProveedor',',', 'idProducto',',', 'unidadesProducto');
	SET _antes =  (SELECT CONCAT(idPedido,',',idCliente,',',idProveedor,',',idProducto,',',unidadesProducto) FROM pedido_producto WHERE idPedido=_idPedido);
	SET _ahora = '';
	set _cantidad =(SELECT unidadesProducto FROM pedido_producto WHERE idPedido=_idPedido);
	SET _idProveedor =(SELECT idProveedor FROM pedido_producto WHERE idPedido=_idPedido);
	SET _idProducto =(SELECT idProducto FROM pedido_producto WHERE idPedido=_idPedido);

	DELETE FROM pedido_producto
	WHERE
	idPedido = _idPedido ;
	DELETE FROM pedido WHERE idPedido=_idPedido;

	UPDATE producto_proveedor
	SET

	cantidadProducto = cantidadProducto + _cantidad

	WHERE
	idProveedor = _idProveedor AND idProducto = _idProducto;
	CALL sp_seguridad(_accion,_usser,_tabla,_id,_ip,_mac,_campos,_antes,_ahora);

    END */$$
DELIMITER ;

/* Procedure structure for procedure `SP_EliminarProducto` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP_EliminarProducto` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_EliminarProducto`(in _idProducto int,IN _usser TEXT, IN _ip TEXT, IN _mac TEXT)
BEGIN
	DECLARE _id INT;
	DECLARE _accion VARCHAR(30);
	DECLARE _tabla VARCHAR(50);
	DECLARE _campos VARCHAR(1000);
	DECLARE _antes VARCHAR(1000);
	DECLARE _ahora VARCHAR(1000);


	SET _id = _idProducto;
	SET _accion = 'Eliminar Producto';
	SET _tabla = 'Administrador';
	SET _campos = CONCAT('id',',', 'nombre',',', 'descripcion',',', 'imagen');
	SET _antes =  (SELECT CONCAT(idProducto,',',nombreProducto,',',descripcionProducto,',',imagenProducto) FROM producto WHERE idProducto=_idProducto);
	SET _ahora = '';

	DELETE from producto where idProducto=_idProducto;

	CALL sp_seguridad(_accion,_usser,_tabla,_id,_ip,_mac,_campos,_antes,_ahora);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `SP_EliminarProductosProveedor` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP_EliminarProductosProveedor` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_EliminarProductosProveedor`(in _idProducto int,in _idProveedor int,IN _usser TEXT, IN _ip TEXT, IN _mac TEXT)
BEGIN

	DECLARE _id INT;
	DECLARE _accion VARCHAR(30);
	DECLARE _tabla VARCHAR(50);
	DECLARE _campos VARCHAR(1000);
	DECLARE _antes VARCHAR(1000);
	DECLARE _ahora VARCHAR(1000);



	SET _accion = 'Eliminar Productos Proveedor';
	SET _tabla = 'Administrador';
	SET _campos = CONCAT('id',',', 'nombreProducto',',', 'nombreProveedor',',', 'precioProducto');
	SET _antes =  (SELECT CONCAT(pp.idProducto_proveedor, ',', p.nombreProducto, ',', pr.nombreProveedor, ',', pp.precioProducto)
			FROM producto_proveedor pp INNER JOIN producto p INNER JOIN proveedor pr ON pp.idProveedor=_idProveedor AND pp.idProducto=_idProducto
			AND pr.idProveedor=_idProveedor AND p.idProducto=_idProducto);
	SET _ahora = '';
	set _id= (SELECT pp.idProducto_proveedor FROM producto_proveedor pp INNER JOIN producto p INNER JOIN proveedor pr ON pp.idProveedor=_idProveedor AND pp.idProducto=_idProducto
			AND pr.idProveedor=_idProveedor AND p.idProducto=_idProducto);

	DELETE FROM producto_proveedor
	WHERE
	idProducto=_idProducto and idProveedor=_idProveedor ;

	CALL sp_seguridad(_accion,_usser,_tabla,_id,_ip,_mac,_campos,_antes,_ahora);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `SP_ListarProveedores` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP_ListarProveedores` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_ListarProveedores`()
BEGIN
	SELECT 0 as idProveedor, '--Seleccione--' as nombreProveedor
	union all
	SELECT	idProveedor,nombreProveedor from proveedor order by nombreProveedor;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `SP_Loggin` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP_Loggin` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Loggin`(IN pass text, in Nom text, IN ip text, in mac TEXT)
BEGIN

	DECLARE _accion VARCHAR(30);
	DECLARE _tabla VARCHAR(50);
	DECLARE _campos VARCHAR(1000);
	DECLARE _antes VARCHAR(1000);
	DECLARE _ahora VARCHAR(1000);

	SET _accion = 'Ingresar';
	SET _tabla = 'Visitante';
	SET _campos = CONCAT('nickname',',', 'password');
	SET _antes =  '';
	SET _ahora = CONCAT(Nom,',',pass);

 SELECT * FROM usuario where Nom= usuario.nickUsuario and pass = usuario.passUsuario;

 CALL sp_seguridad(_accion,'visitante',_tabla,1,ip,mac,_campos,_antes,_ahora);

    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_modificarIdioma` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_modificarIdioma` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_modificarIdioma`(in _id_formulario int, in _componente varchar(1000),
                                                                 in _texto varchar(1000), in _id_idioma int)
BEGIN


        UPDATE componentes
	SET

	texto = _texto

	WHERE
	id_formulario = _id_formulario AND
	componente = _componente AND
        id_idioma = _id_idioma;

    END */$$
DELIMITER ;

/* Procedure structure for procedure `SP_MostrarCajeros` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP_MostrarCajeros` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_MostrarCajeros`()
BEGIN
SELECT *from usuario where idTipoUsuario = 2;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `SP_MostrarPedidoCajero` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP_MostrarPedidoCajero` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_MostrarPedidoCajero`()
BEGIN
SELECT * from factura_pedido;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `SP_MostrarProductos` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP_MostrarProductos` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_MostrarProductos`()
BEGIN
SELECT * FROM producto;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `SP_EliminarProveedor` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP_EliminarProveedor` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_EliminarProveedor`(in _idProveedor int,IN _usser TEXT, IN _ip TEXT, IN _mac TEXT)
BEGIN
	DECLARE _id int;
	DECLARE _accion VARCHAR(30);
	DECLARE _tabla VARCHAR(50);
	DECLARE _campos VARCHAR(1000);
	DECLARE _antes VARCHAR(1000);
	DECLARE _ahora VARCHAR(1000);


	SET _id = _idProveedor;
	SET _accion = 'Eliminar Proveedor';
	SET _tabla = 'Administrador';
	SET _campos = CONCAT('idProveedor',',', 'nombreProveedor',',', 'direccionProveedor',',', 'telefonoProveedor',',', 'emailProveedor',',', 'logoProveedor');
	SET _antes =  (SELECT CONCAT(idProveedor,',',nombreProveedor,',',direccionProveedor,',',telefonoProveedor,',',emailProveedor,',',logoProveedor) FROM proveedor WHERE idProveedor=_idProveedor);
	SET _ahora = '';

	DELETE FROM proveedor
	WHERE
	idProveedor = _idProveedor ;
	CALL sp_seguridad(_accion,_usser,_tabla,_id,_ip,_mac,_campos,_antes,_ahora);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `SP_EliminarUsuario` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP_EliminarUsuario` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_EliminarUsuario`(IN _idUsuario INT, IN _usser TEXT, IN _ip TEXT, IN _mac TEXT)
BEGIN

	DECLARE _id INT;
	DECLARE _accion VARCHAR(30);
	DECLARE _tabla VARCHAR(50);
	DECLARE _campos VARCHAR(1000);
	DECLARE _antes VARCHAR(1000);
	DECLARE _ahora VARCHAR(1000);


	SET _id = _idUsuario;
	SET _accion = 'Eliminar Usuario';
	SET _tabla = 'Administrador';
	SET _campos = CONCAT('idUsuario',',', 'nombresUsuario',',', 'apellidosUsuario',',', 'direccionUsuario',',', 'telefonoUsuario',',',
			'TipoUsuario',',', 'emailUsuario',',', 'imagenUsuario',',', 'nickUsuario',',', 'passwordUsuario');
	SET _antes =  (SELECT CONCAT(idUsuario,',',nombresUsuario,',',apellidosUsuario,',',direccionUsuario,',',telefonoUsuario,',',idTipoUsuario
		       ,',',emailUsuario,',',imagenUsuario,',',nickUsuario,',',passUsuario) FROM usuario WHERE idUsuario=_id);
	SET _ahora = '';

	DELETE FROM usuario
	WHERE
	idUsuario= _id ;
	CALL sp_seguridad(_accion,_usser,_tabla,_id,_ip,_mac,_campos,_antes,_ahora);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `SP_FiltroClientePedidos` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP_FiltroClientePedidos` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_FiltroClientePedidos`(in _filtrofecha DATETIME, in _idCliente int)
BEGIN


    SELECT p.idPedido, DATE(fechaPedido) AS fechaPedido, nombreProducto, nombreProveedor, concat(nombresUsuario,'  ',apellidosUsuario) as nombreCliente, imagenUsuario, unidadesProducto, precioProductoV
    FROM pedido p, proveedor prove, pedido_producto pp, producto pr, usuario u, producto_proveedor ppr WHERE p.idEstadoPedido = 1 AND pp.idPedido = p.idPedido
    AND pp.idCliente = _idCliente AND p.idCliente = _idCliente AND pp.idProducto = pr.idProducto AND pp.idCliente = u.idUsuario
    AND ppr.idProducto = pp.idProducto AND ppr.idProveedor = pp.idProveedor and pp.idProveedor = prove.idProveedor
    and ppr.idProveedor = prove.idProveedor and date(fechaPedido) = Date(_filtrofecha);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `SP_InsertarCajero` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP_InsertarCajero` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_InsertarCajero`(IN _id INT,IN _nombres TEXT,IN _apellidos TEXT,IN _direccion TEXT,IN _telefono TEXT,IN _email TEXT,
    IN _idTipo INT,IN _nick TEXT,IN _pass TEXT,IN _imagen TEXT,IN _usser TEXT, IN _ip TEXT, IN _mac TEXT)
BEGIN
    DECLARE _accion VARCHAR(30);
	DECLARE _tabla VARCHAR(50);
	DECLARE _campos VARCHAR(1000);
	DECLARE _antes VARCHAR(1000);
	DECLARE _ahora VARCHAR(1000);

	SET _accion = 'Insertar Cajero';
	SET _tabla = 'Cajero';
	SET _campos = CONCAT('cedula',',', 'nombres',',', 'apellidos',',', 'direccion',',', 'telefono',',', 'email',',',
	 'usuario',',', 'user(Login)',',', 'password',',', 'imagen');
	SET _antes = '';
	SET _ahora = CONCAT(_id, ',', _nombres, ',', _apellidos, ',', _direccion, ',', _telefono, ',', _email, ',', 'Cajero', ',', _nick, ',', _pass, ',', _imagen);

	INSERT INTO usuario
	(idUsuario,
	nombresUsuario,
	apellidosUsuario,
	direccionUsuario,
	telefonoUsuario,
	emailUsuario,
	idTipoUsuario,
	nickUsuario,
	passUsuario,
	imagenUsuario
	)
	VALUES
	(_id,
	_nombres,
	_apellidos,
	_direccion,
	_telefono,
	_email,
	_idTipo,
	_nick,
	_pass,
	_imagen
	);

	CALL sp_seguridad(_accion,_usser,_tabla,_id,_ip,_mac,_campos,_antes,_ahora);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `SP_InsertarProducto` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP_InsertarProducto` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_InsertarProducto`(in _id int,in _nombre text,in _descripcion text, in _imagen text, in _usser text, in _ip text, in _mac text)
BEGIN

	DECLARE _accion VARCHAR(30);
	DECLARE _tabla VARCHAR(50);
	DECLARE _campos VARCHAR(1000);
	DECLARE _antes VARCHAR(1000);
	DECLARE _ahora VARCHAR(1000);

	SET _accion = 'Insertar Producto';
	SET _tabla = 'Administrador';
	SET _campos = CONCAT('id',',', 'nombre',',', 'descripcion',',','imagen');
	SET _antes = '';
	SET _ahora = CONCAT(_id, ',', _nombre, ',',_descripcion, ',', _imagen);

INSERT INTO producto
	(
	idProducto,
	nombreProducto,
	descripcionProducto,
	imagenProducto
	)
	VALUES
	(
	_id,
	_nombre,
	_descripcion,
	_imagen
	);

	CALL sp_seguridad(_accion,_usser,_tabla,_id,_ip,_mac,_campos,_antes,_ahora);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `SP_MostrarProductosDisponibles` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP_MostrarProductosDisponibles` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_MostrarProductosDisponibles`()
BEGIN
SELECT * FROM producto p, producto_proveedor pp WHERE p.idProducto = pp.idProducto ORDER BY p.nombreProducto;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `SP_MostrarProductosProveedor` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP_MostrarProductosProveedor` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_MostrarProductosProveedor`()
BEGIN
	SELECT * FROM producto_proveedor;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `SP_MostrarProveedor` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP_MostrarProveedor` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_MostrarProveedor`()
BEGIN

SELECT * from proveedor order by proveedor.nombreProveedor;

    END */$$
DELIMITER ;

/* Procedure structure for procedure `SP_MostrarRelacProductosProveedor` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP_MostrarRelacProductosProveedor` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_MostrarRelacProductosProveedor`()
BEGIN
SELECT * from producto p, producto_proveedor pp where p.idProducto = pp.idProducto order by p.nombreProducto;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `SP_MostrarUsuario` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP_MostrarUsuario` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_MostrarUsuario`()
BEGIN
SELECT u.idUsuario,u.nombresUsuario,u.apellidosUsuario,u.direccionUsuario,u.telefonoUsuario,u.emailUsuario,u.idTipoUsuario,u.nickUsuario,u.passUsuario,u.imagenUsuario,t.tipoUsuatio
   FROM usuario u, tipo_usuario t where t.idTipoUsuario=u.idTipoUsuario ;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `SP_mostrarVisual` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP_mostrarVisual` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`isw1`@`%` PROCEDURE `SP_mostrarVisual`()
BEGIN
SELECT *FROM contactenos;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_obtenercontactenos` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_obtenercontactenos` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_obtenercontactenos`()
BEGIN
	SELECT
		nombre,email,mensaje
	FROM
		contactenos;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `SP_InsertarProductoProveedor` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP_InsertarProductoProveedor` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_InsertarProductoProveedor`(in _idProducto int,in _idProveedor int,in _nombreProveedor TEXT,in _nombreProducto text,in _precioProducto double,IN _usser TEXT, IN _ip TEXT, IN _mac TEXT)
BEGIN

	DECLARE _id INT;
	DECLARE _accion VARCHAR(30);
	DECLARE _tabla VARCHAR(50);
	DECLARE _campos VARCHAR(1000);
	DECLARE _antes VARCHAR(1000);
	DECLARE _ahora VARCHAR(1000);

	SET _id = (SELECT CASE WHEN COUNT(idProducto_proveedor) > 0 THEN (MAX(idProducto_proveedor) + 1) ELSE 1 END FROM producto_proveedor);
	SET _accion = 'Insertar Producto Proveedor';
	SET _tabla = 'Administrador';
	SET _campos = CONCAT('id',',', 'nombreProducto',',', 'nombreProveedor',',', 'precioProducto');
	SET _antes = '';
	SET _ahora = CONCAT(_id, ',', _nombreProducto, ',', _nombreProveedor, ',', _precioProducto);
	INSERT INTO producto_proveedor
	(idProducto_proveedor,
	idProducto,
	idProveedor,
	precioProducto
	)
	VALUES
	(_id,
	_idProducto,
	_idProveedor,
	_precioProducto
	);
           CALL sp_seguridad(_accion,_usser,_tabla,_id,_ip,_mac,_campos,_antes,_ahora);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `SP_InsertarProveedor` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP_InsertarProveedor` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_InsertarProveedor`(in _id int, in _nombre TEXT,in _direccion text, in _telefono text, in _email text, in _logo text, in _usser text, in _ip TEXT, in _mac text)
BEGIN

	DECLARE _accion VARCHAR(30);
	DECLARE _tabla VARCHAR(50);
	DECLARE _campos VARCHAR(1000);
	DECLARE _antes VARCHAR(1000);
	DECLARE _ahora VARCHAR(1000);

	SET _accion = 'Insertar Proveedor';
	SET _tabla = 'Administrador';
	SET _campos = CONCAT('id',',', 'nombre',',', 'direccion',',', 'telefono',',', 'correo',',', 'logo');
	SET _antes = '';
	SET _ahora = CONCAT(_id, ',', _nombre, ',', _direccion, ',', _telefono, ',', _email, ',', _logo);

INSERT INTO proveedor
	(idProveedor,
	nombreProveedor,
	direccionProveedor,
	telefonoProveedor,
	emailProveedor,
	logoProveedor
	)
	VALUES
	(_id,
	_nombre,
	_direccion,
	_telefono,
	_email,
	_logo
	);

	CALL sp_seguridad(_accion,_usser,_tabla,_id,_ip,_mac,_campos,_antes,_ahora);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `SP_InsertarUsuario` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP_InsertarUsuario` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_InsertarUsuario`(in _id int,in _nombres text,in _apellidos text,in _direccion text,in _telefono text,in _email text,in _idTipo int,in _nick text,in _pass text,in _imagen text, IN _ip TEXT, IN _mac TEXT)
BEGIN


	DECLARE _accion VARCHAR(30);
	DECLARE _tabla VARCHAR(50);
	DECLARE _campos VARCHAR(1000);
	DECLARE _antes VARCHAR(1000);
	DECLARE _ahora VARCHAR(1000);

	SET _accion = 'Insertar Visitante';
	SET _tabla = 'Visitante';
	SET _campos = CONCAT('cedula',',', 'nombres',',', 'apellidos',',', 'direccion',',', 'telefono',',', 'email',',', 'usuario',',', 'user(Login)',',', 'password',',', 'imagen');
	SET _antes = '';
	SET _ahora = CONCAT(_id, ',', _nombres, ',', _apellidos, ',', _direccion, ',', _telefono, ',', _email, ',', 'Cliente', ',', _nick, ',', _pass, ',', _imagen);

	INSERT INTO usuario
	(idUsuario,
	nombresUsuario,
	apellidosUsuario,
	direccionUsuario,
	telefonoUsuario,
	emailUsuario,
	idTipoUsuario,
	nickUsuario,
	passUsuario,
	imagenUsuario
	)
	VALUES
	(_id,
	_nombres,
	_apellidos,
	_direccion,
	_telefono,
	_email,
	_idTipo,
	_nick,
	_pass,
	_imagen
	);

	CALL sp_seguridad(_accion,'Visitante',_tabla,_id,_ip,_mac,_campos,_antes,_ahora);

    END */$$
DELIMITER ;

/* Procedure structure for procedure `SP_LiberarProductos` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP_LiberarProductos` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_LiberarProductos`(in _idPedido int)
BEGIN
        DECLARE _id INT;
 	DECLARE _accion VARCHAR(30);
	DECLARE _tabla VARCHAR(50);
	DECLARE _campos VARCHAR(1000);
	DECLARE _antes VARCHAR(1000);
	DECLARE _ahora VARCHAR(1000);

    DECLARE _fechaAnt DATETIME;
    declare _fechaAct DATETIME;
    declare _idProveedor int;
    DECLARE _idProducto INT;
    declare _unidadesProducto int;

    set _fechaAnt = (SELECT fechaPedido from pedido where idPedido=_idPedido);
    SET _fechaAct = (CURRENT_TIMESTAMP-INTERVAL 30 DAY);
    set _idProveedor = (SELECT idProveedor from pedido_producto WHERE idPedido=_idPedido);
    set _idProducto = (SELECT idProducto FROM pedido_producto WHERE idPedido=_idPedido);
    set _unidadesProducto = (SELECT unidadesProducto FROM pedido_producto WHERE idPedido=_idPedido);

    if _fechaAnt<=_fechaAct
    THEN

	SET _id = _idPedido;
	SET _accion = 'Liberar Productos';
	SET _tabla = 'Automatico';
	SET _campos = CONCAT('Producto_proveedor',',', 'idProducto',',', 'idProveedor',',', 'cantidadProducto');
	SET _antes =  (SELECT CONCAT('Producto_proveedor',',',_idProducto,',',_idProveedor,',',cantidadProducto)FROM producto_proveedor WHERE idProducto=_idProducto AND idProveedor=_idProveedor);
	SET _ahora =  (SELECT CONCAT('Producto_proveedor',',',_idProducto,',',_idProveedor,',',cantidadProducto+_unidadesProducto)FROM producto_proveedor WHERE idProducto=_idProducto AND idProveedor=_idProveedor);

	UPDATE producto_proveedor
	SET

	cantidadProducto = cantidadProducto + _unidadesProducto

	WHERE
	idProducto=_idProducto AND idProveedor=_idProveedor;

	CALL sp_seguridad(_accion,'automatico',_tabla,_id,'automatico','automatico',_campos,_antes,_ahora);

	SET _id = _idPedido;
	SET _accion = 'Liberar Productos';
	SET _tabla = 'Automatico';
	SET _campos = CONCAT('factura_pedido',',','idFactura',',', 'idCliente',',', 'idProducto',',', 'idProveedor',',', 'unidadesProducto');
	SET _antes =  (SELECT CONCAT('factura_pedido',',',idPedido,',',idCliente,',',idProducto,',',idProveedor,',',unidadesProducto) FROM pedido_producto WHERE idPedido=_idPedido);
	SET _ahora = '';

	DELETE FROM pedido_producto
	WHERE
	idPedido = _idPedido;

	DELETE FROM pedido
	WHERE
	idPedido = _idPedido;

	CALL sp_seguridad(_accion,'automatico',_tabla,_id,'automatico','automatico',_campos,_antes,_ahora);
    end if;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_obtener_pedidos` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_obtener_pedidos` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_obtener_pedidos`(IN _filtro VARCHAR(50))
BEGIN
     IF _filtro = ''
	THEN
		SELECT
			fp.idFactura,
			fp.idCliente,
			fp.idProveedor,
			fp.idProducto,
			fp.unidadesProducto,
			fp.FechaReserva

		FROM
			usuario u, factura_pedido fp

			WHERE u.idUsuario=fp.idCliente


		ORDER BY
			2 ASC;
	ELSE
		SELECT
			fp.idFactura,
			fp.idCliente,
			fp.idProveedor,
			fp.idProducto,
			fp.unidadesProducto,
			fp.FechaReserva

		FROM
			usuario u, factura_pedido fp

		WHERE
			u.idUsuario=fp.idCliente;

	END IF;

    END */$$
DELIMITER ;

/* Procedure structure for procedure `SP_ProductosProveedor` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP_ProductosProveedor` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_ProductosProveedor`(in _id int)
BEGIN
SELECT * from producto_proveedor pp inner join producto p inner join proveedor pr on pp.idProveedor=_id and pr.idProveedor=_id and pp.idProducto = p.idProducto;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `SP_ReciboCajero` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP_ReciboCajero` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_ReciboCajero`(in _idVendedor int,in _idCliente int)
BEGIN


    SELECT nombresUsuario as nombreCajero, u.imagenUsuario as imagenCajero, p.nombreProducto, pp.precioProductoV as valorUnitario, fp.unidadesProducto as cantidad
    from usuario u inner join producto_proveedor pp INNER JOIN producto p inner join factura_pedido fp inner join factura f on
    idUsuario=_idVendedor and f.idVendedor=_idVendedor AND f.idCliente=_idCliente and fp.idFactura=f.idFactura and fp.idProducto=pp.idProducto and fp.idProducto=p.idProducto and fp.idProveedor=pp.idProveedor;

    END */$$
DELIMITER ;

/* Procedure structure for procedure `SP_ModificarCarrito` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP_ModificarCarrito` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_ModificarCarrito`(in _idPedido int, in _unidadesProducto int, IN _usser TEXT, IN _ip TEXT, IN _mac TEXT)
BEGIN

        DECLARE _id INT;
        DECLARE _unidadesActuales INT;
        DECLARE _idProveedor INT;
	DECLARE _idProducto INT;
 	DECLARE _accion VARCHAR(30);
	DECLARE _tabla VARCHAR(50);
	DECLARE _campos VARCHAR(1000);
	DECLARE _antes VARCHAR(1000);
	DECLARE _ahora VARCHAR(1000);

	SET _id = _idPedido;
	set _unidadesActuales = (SELECT unidadesProducto from pedido_producto WHERE idPedido = _idPedido);
	SET _idProveedor = (SELECT idProveedor FROM pedido_producto WHERE idPedido=_idPedido);
	SET _idProducto = (SELECT idProducto FROM pedido_producto WHERE idPedido=_idPedido);
	SET _accion = 'Modificar Carrito';
	SET _tabla = 'Cliente';
	SET _campos = CONCAT('idPedido',',', 'idProducto',',', 'idProveedor',',', 'unidadesProducto');
	SET _antes =  (SELECT CONCAT(idPedido,',',idProducto,',',idProveedor,',',unidadesProducto) FROM pedido_producto WHERE idPedido=_idPedido);
	SET _ahora =  (SELECT CONCAT(idPedido,',',idProducto,',',idProveedor,',',_unidadesProducto) FROM pedido_producto WHERE idPedido=_idPedido);

	UPDATE pedido_producto
	SET
	unidadesProducto = _unidadesProducto

	WHERE
	idPedido = _idPedido ;


	if _unidadesActuales < _unidadesProducto
	then

	UPDATE producto_proveedor
	SET

	cantidadProducto = cantidadProducto - (_unidadesProducto - _unidadesActuales)

	WHERE
	idProveedor = _idProveedor AND idProducto = _idProducto;

	else

	UPDATE producto_proveedor
	SET

	cantidadProducto = cantidadProducto + (_unidadesActuales - _unidadesProducto)

	WHERE
	idProveedor = _idProveedor AND idProducto = _idProducto;

	end if;


	CALL sp_seguridad(_accion,_usser,_tabla,_id,_ip,_mac,_campos,_antes,_ahora);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `SP_ModificarCarritoCajero` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP_ModificarCarritoCajero` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_ModificarCarritoCajero`(in _idCliente int,in _idFactura int, in _unidadesProducto int, IN _usser TEXT, IN _ip TEXT, IN _mac TEXT)
BEGIN

        DECLARE _id INT;
 	DECLARE _accion VARCHAR(30);
	DECLARE _tabla VARCHAR(50);
	DECLARE _campos VARCHAR(1000);
	DECLARE _antes VARCHAR(1000);
	DECLARE _ahora VARCHAR(1000);

	SET _id = _idFactura;
	SET _accion = 'Modificar Carrito Cajero';
	SET _tabla = 'Cajero';
	SET _campos = CONCAT('idFactura',',', 'idCliente',',', 'idProveedor',',', 'idProducto',',','unidadesProducto');
	SET _antes =  (SELECT CONCAT(idFactura,',',idCliente,',',idProveedor,',',idProducto,',',unidadesProducto) FROM factura_pedido WHERE idFactura=_idFactura and idCliente=_idCliente);
	SET _ahora =  (SELECT CONCAT(idFactura,',',idCliente,',',idProveedor,',',idProducto,',',_unidadesProducto) FROM factura_pedido WHERE idFactura=_idFactura AND idCliente=_idCliente);

	UPDATE factura_pedido
	SET
	unidadesProducto = _unidadesProducto

	WHERE
	idFactura = _idFactura;

	CALL sp_seguridad(_accion,_usser,_tabla,_id,_ip,_mac,_campos,_antes,_ahora);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `SP_ModificarProducto` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP_ModificarProducto` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_ModificarProducto`(IN _id INT, IN _nombre TEXT, in _descripcion text,IN _imagen TEXT, IN _usser TEXT, IN _ip TEXT, IN _mac TEXT)
BEGIN

	DECLARE _accion VARCHAR(30);
	DECLARE _tabla VARCHAR(50);
	DECLARE _campos VARCHAR(1000);
	DECLARE _antes VARCHAR(1000);
	DECLARE _ahora VARCHAR(1000);

	SET _accion = 'Modificar Producto';
	SET _tabla = 'Administrador';
	SET _campos = CONCAT('id',',', 'nombre',',', 'descripcion',',','imagen');
	SET _antes =  (SELECT CONCAT(idProducto,',',nombreProducto,',',descripcionProducto,',',imagenProducto) FROM producto WHERE idProducto=_id);
	SET _ahora =  CONCAT(_id,',', _nombre,',', _descripcion,',',_imagen);

	UPDATE producto
	SET
	idProducto = _id ,
	nombreProducto = _nombre ,
	descripcionProducto = _descripcion,
	imagenProducto = _imagen

	WHERE
	idProducto = _id ;

	CALL sp_seguridad(_accion,_usser,_tabla,_id,_ip,_mac,_campos,_antes,_ahora);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `SP_ModificarProductoProveedor` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP_ModificarProductoProveedor` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_ModificarProductoProveedor`(IN _idProducto INT,IN _idProveedor INT,in _precioProducto DOUBLE,IN _usser TEXT, IN _ip TEXT, IN _mac TEXT)
BEGIN

	declare _id int;
	DECLARE _accion VARCHAR(30);
	DECLARE _tabla VARCHAR(50);
	DECLARE _campos VARCHAR(1000);
	DECLARE _antes VARCHAR(1000);
	DECLARE _ahora VARCHAR(1000);



	SET _accion = 'Modificar Productos Proveedor';
	SET _tabla = 'Administrador';
	SET _campos = CONCAT('id',',', 'nombreProducto',',', 'nombreProveedor',',', 'precioProducto');
	SET _antes =  (SELECT CONCAT(pp.idProducto_proveedor, ',', p.nombreProducto, ',', pr.nombreProveedor, ',', pp.precioProducto)
			FROM producto_proveedor pp INNER JOIN producto p INNER JOIN proveedor pr ON pp.idProveedor=_idProveedor AND pp.idProducto=_idProducto
			AND pr.idProveedor=_idProveedor AND p.idProducto=_idProducto);

	SET _ahora = (SELECT CONCAT(pp.idProducto_proveedor, ',', p.nombreProducto, ',', pr.nombreProveedor, ',', _precioProducto)
			FROM producto_proveedor pp INNER JOIN producto p INNER JOIN proveedor pr ON pp.idProveedor=_idProveedor AND pp.idProducto=_idProducto
			AND pr.idProveedor=_idProveedor AND p.idProducto=_idProducto);

	SET _id= (SELECT pp.idProducto_proveedor FROM producto_proveedor pp INNER JOIN producto p INNER JOIN proveedor pr ON pp.idProveedor=_idProveedor AND pp.idProducto=_idProducto
			AND pr.idProveedor=_idProveedor AND p.idProducto=_idProducto);


	UPDATE producto_proveedor
	SET
	precioProducto = _precioProducto

	WHERE
	idProducto=_idProducto and idProveedor=_idProveedor;

	CALL sp_seguridad(_accion,_usser,_tabla,_id,_ip,_mac,_campos,_antes,_ahora);

    END */$$
DELIMITER ;

/* Procedure structure for procedure `SP_ReciboCliente` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP_ReciboCliente` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_ReciboCliente`(in _idVendedor int, in _idCliente int)
BEGIN

    SELECT nombresUsuario AS nombreCliente, u.imagenUsuario AS imagenCliente
    FROM usuario u INNER JOIN producto_proveedor pp INNER JOIN producto p INNER JOIN factura_pedido fp INNER JOIN factura f ON
    idUsuario=_idCliente AND f.idCliente=_idCliente and f.idVendedor=_idVendedor AND fp.idFactura=f.idFactura AND fp.idProducto=pp.idProducto AND fp.idProducto=p.idProducto AND fp.idProveedor=pp.idProveedor;

    END */$$
DELIMITER ;

/* Procedure structure for procedure `SP_RelacionProductoProveedor` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP_RelacionProductoProveedor` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_RelacionProductoProveedor`()
BEGIN

    SELECT * FROM producto_proveedor pp INNER JOIN producto p INNER JOIN proveedor pr ON pp.idProveedor=pr.idProveedor AND pp.idProducto = p.idProducto order by pr.nombreProveedor;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_seguridad` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_seguridad` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_seguridad`(IN Acc VARCHAR(30), IN Usu VARCHAR(30), IN Tab VARCHAR (30), IN Reg VARCHAR(100), IN I VARCHAR(1000), IN Mac VARCHAR(100), IN Nombre VARCHAR(1000), IN Anterior VARCHAR(10000), IN Nuevo VARCHAR(10000))
BEGIN
	DECLARE IDLog INT;
	DECLARE fec DATETIME;

	SET fec = (SELECT CURRENT_TIMESTAMP);
	SET IDLog = (SELECT CASE WHEN COUNT(id_seguridad) > 0 THEN (MAX(id_seguridad) + 1) ELSE 1 END FROM seguridad);

	INSERT INTO seguridad(id_seguridad,accion,fecha,usuario,tabla,id_registro,ip,mac_address,nom_Campo_mod,valor_ant_campo,nuevo_valor_campo)
			VALUES(IDLog,Acc,fec,Usu,Tab,Reg,I,Mac,Nombre,Anterior,Nuevo) ;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `SP_ModificarProveedor` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP_ModificarProveedor` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_ModificarProveedor`(in _idProveedor int, IN _nombre TEXT,IN _direccion TEXT, IN _telefono TEXT, IN _email TEXT, IN _logo TEXT, IN _usser TEXT, IN _ip TEXT, IN _mac TEXT)
BEGIN

	declare _id int;
 	DECLARE _accion VARCHAR(30);
	DECLARE _tabla VARCHAR(50);
	DECLARE _campos VARCHAR(1000);
	DECLARE _antes VARCHAR(1000);
	DECLARE _ahora VARCHAR(1000);

	set _id = _idProveedor;
	sET _accion = 'Modificar Proveedor';
	SET _tabla = 'Administrador';
	SET _campos = CONCAT('idProveedor',',', 'nombreProveedor',',', 'direccionProveedor',',', 'telefonoProveedor',',', 'emailProveedor',',', 'logoProveedor');
	SET _antes =  (SELECT CONCAT(idProveedor,',',nombreProveedor,',',direccionProveedor,',',telefonoProveedor,',',emailProveedor,',',logoProveedor) FROM proveedor WHERE idProveedor=_idProveedor);
	SET _ahora =  CONCAT(_idProveedor,',', _nombre,',', _direccion,',', _telefono,',',_email,',', _logo);

UPDATE proveedor
	SET
	nombreProveedor = _nombre ,
	direccionProveedor = _direccion ,
	telefonoProveedor = _telefono ,
	emailProveedor = _email ,
	logoProveedor = _logo

	WHERE
	idProveedor = _id;

	CALL sp_seguridad(_accion,_usser,_tabla,_id,_ip,_mac,_campos,_antes,_ahora);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `SP_ModificarUsuario` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP_ModificarUsuario` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_ModificarUsuario`(IN _id INT,IN _nombres TEXT,IN _apellidos TEXT,IN _direccion TEXT,IN _telefono TEXT,IN _email TEXT,IN _nick TEXT,IN _pass TEXT,IN _imagen TEXT,IN _usser TEXT,IN _ip TEXT, IN _mac TEXT)
BEGIN
 	DECLARE _accion VARCHAR(30);
	DECLARE _tabla VARCHAR(50);
	DECLARE _campos VARCHAR(1000);
	DECLARE _antes VARCHAR(1000);
	DECLARE _ahora VARCHAR(1000);
	DECLARE _tipoUsuario INT;

	SET _tipoUsuario = (SELECT CONCAT(idTipoUsuario) FROM usuario WHERE idUsuario = _id);

	IF _tipoUsuario = 1
	THEN
	SET _accion = 'Modificar Administrador';
	SET _tabla = 'Administrador';
	ELSE

	IF _tipoUsuario = 2
	THEN
	SET _accion = 'Modificar Cajero';
	SET _tabla = 'Cajero';
	ELSE

	SET _accion = 'Modificar Cliente';
	SET _tabla = 'Cliente';

	END IF;

	END IF;

	SET _campos = CONCAT('Cedula',',', 'nombres',',', 'apellidos',',', 'direccion',',', 'telefono',',', 'email',',', 'nick',',', 'pass',',', 'imagen');
	SET _antes =  (SELECT CONCAT(idUsuario,',',nombresUsuario,',',apellidosUsuario,',',direccionUsuario,',',telefonoUsuario,',',emailUsuario,',',nickUsuario,
	',',passUsuario,',',imagenUsuario) FROM usuario WHERE idUsuario=_id);
	SET _ahora =  CONCAT(_id,',', _nombres,',', _apellidos,',', _direccion,',',_telefono,',', _email,',', _nick,',', _pass,',', _imagen);

	UPDATE usuario
	SET
	nombresUsuario = _nombres ,
	apellidosUsuario = _apellidos ,
	direccionUsuario = _direccion ,
	telefonoUsuario = _telefono ,
	emailUsuario = _email ,
	nickUsuario = _nick ,
	passUsuario = _pass ,
	imagenUsuario = _imagen

	WHERE
	idUsuario = _id ;

	CALL sp_seguridad(_accion,_usser,_tabla,_id,_ip,_mac,_campos,_antes,_ahora);

    END */$$
DELIMITER ;

/* Procedure structure for procedure `SP_MostrarCarrito` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP_MostrarCarrito` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_MostrarCarrito`(in _idCliente VARCHAR(50))
BEGIN

	SELECT p.idProducto,fp.idPedido, pr.nombreProveedor,p.nombreProducto, p.descripcionProducto, pp.precioProductoV, pp.cantidadProducto,fp.unidadesProducto,
	pp.precioProductoV*fp.unidadesProducto AS totalProducto, pe.fechaPedido, ep.estadoPedido FROM pedido_producto fp
	INNER JOIN producto p INNER JOIN producto_proveedor pp INNER JOIN proveedor pr inner join pedido pe inner join estadoPedido ep ON fp.idProveedor=pr.idProveedor AND
	pp.idProveedor=pr.idProveedor AND fp.idProducto=p.idProducto AND pp.idProducto=p.idProducto and fp.idCliente = _idCliente and fp.idPedido=pe.idPedido and
	pe.idEstadoPedido=ep.idEstadoPedido;


    END */$$
DELIMITER ;

/* Procedure structure for procedure `SP_MostrarCarritoCajero` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP_MostrarCarritoCajero` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_MostrarCarritoCajero`(IN _idCliente VARCHAR(50))
BEGIN
	SELECT fp.idPedido, pr.nombreProveedor,p.nombreProducto, p.descripcionProducto, pp.precioProductoV, pp.cantidadProducto,fp.unidadesProducto,
	pp.precioProductoV*fp.unidadesProducto AS totalProducto, pe.fechaPedido, ep.estadoPedido FROM pedido_producto fp
	INNER JOIN producto p INNER JOIN producto_proveedor pp INNER JOIN proveedor pr INNER JOIN pedido pe INNER JOIN estadoPedido ep ON fp.idProveedor=pr.idProveedor AND
	pp.idProveedor=pr.idProveedor AND fp.idProducto=p.idProducto AND pp.idProducto=p.idProducto AND fp.idCliente = _idCliente AND fp.idPedido=pe.idPedido AND
	pe.idEstadoPedido=ep.idEstadoPedido and pe.idEstadoPedido=1 order by pe.fechaPedido;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_obtener_productos` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_obtener_productos` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_obtener_productos`(IN _filtro VARCHAR(50))
BEGIN
     IF _filtro = ''
	THEN
		SELECT
			p.idProducto,
			p.nombreProducto,
			p.imagenProducto,
			pr.nombreProveedor,
			pp.precioProductoV,
			pp.cantidadProducto
		FROM
			producto p, producto_proveedor pp, proveedor pr

			where p.idProducto=pp.idProducto and pp.idProveedor = pr.idProveedor


		ORDER BY
			2 ASC;
	ELSE
		SELECT
			p.idProducto,
			p.nombreProducto,
			p.imagenProducto,
			pr.nombreProveedor,
			pp.precioProductoV,
			pp.cantidadProducto
			from
		producto p, producto_proveedor pp, proveedor pr

			WHERE p.idProducto=pp.idProducto AND pp.idProveedor = pr.idProveedor and
			LOWER(p.nombreProducto) LIKE CONCAT('%',LOWER(_filtro),'%');

	END IF;

    END */$$
DELIMITER ;

/* Procedure structure for procedure `SP_SeleccionarProductosProveedor` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP_SeleccionarProductosProveedor` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_SeleccionarProductosProveedor`(in _id int)
BEGIN
SELECT * from producto_proveedor where idProveedor=_id;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `SP_SeleccionarProveedor` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP_SeleccionarProveedor` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_SeleccionarProveedor`(in _idProducto int)
BEGIN
	SELECT 0 as idProveedor,'--Seleccionar--' as nombreProveedor union all SELECT pp.idProveedor,pr.nombreProveedor FROM producto_proveedor pp INNER JOIN proveedor pr ON pp.idProducto=_idProducto AND pp.idProveedor=pr.idProveedor;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_traerComponentesIdioma` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_traerComponentesIdioma` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_traerComponentesIdioma`(in _ididioma int, in _idform int)
BEGIN
select componente,texto from componentes where _ididioma=id_idioma and _idform=id_formulario;
END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_traerIdioma` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_traerIdioma` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_traerIdioma`()
BEGIN
SELECT * from idiomas;

   END */$$
DELIMITER ;

/* Procedure structure for procedure `SP_TRAER_FORMULARIOS` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP_TRAER_FORMULARIOS` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_TRAER_FORMULARIOS`()
BEGIN
SELECT * FROM forms;

   END */$$
DELIMITER ;

/* Procedure structure for procedure `SP_TRAER_MENSAJES` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP_TRAER_MENSAJES` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_TRAER_MENSAJES`(IN _ididioma INT, IN _idform INT)
BEGIN
SELECT componente, texto from componente where _ididioma=id_idioma AND _idform=id_formulario;
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP_pedidoproducto` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP_pedidoproducto` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_pedidoproducto`(in _id int, IN _idProducto INT,IN _idProveedor INT,IN _cantidad INT,IN _usser TEXT, IN _ip TEXT, IN _mac TEXT)
BEGIN


	DECLARE id_pp INT;
	DECLARE _accion VARCHAR(30);
	DECLARE _tabla VARCHAR(50);
	DECLARE _campos VARCHAR(1000);
	DECLARE _antes VARCHAR(1000);
	DECLARE _ahora VARCHAR(1000);

	SET _accion = 'Eleccion Producto';
	SET _tabla = 'Cliente';
	SET _campos = CONCAT('idCliente',',', 'idProducto',',', 'idProveedor',',','unidadesProducto');
	SET _antes =  ('');
	SET _ahora =  CONCAT(_id,',', _idProducto,',', _idProveedor,',',_cantidad);

	SET id_pp = (SELECT CASE WHEN COUNT(idPedido) > 0 THEN (MAX(idPedido)+1) ELSE 1 END FROM pedido_producto);


INSERT INTO pedido_producto
	(
	idPedido,
	idCliente,
	idProducto,
	idProveedor,
	unidadesProducto
	)
	VALUES
	(
	id_pp,
	_id,
	_idProducto,
	_idProveedor,
	_cantidad
	);

	insert into pedido
	 (idPedido,idCliente,fechaPedido,idEstadoPedido)values (id_pp,_id,CURRENT_TIMESTAMP,2);


UPDATE producto_proveedor
	SET
	cantidadProducto = cantidadProducto - _cantidad

	WHERE
	idProducto = _idProducto and
	idProveedor = _idProveedor;

CALL sp_seguridad(_accion,_usser,_tabla,_id,_ip,_mac,_campos,_antes,_ahora);

    END */$$
DELIMITER ;

/* Procedure structure for procedure `SP_pedidoproductoCajero` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP_pedidoproductoCajero` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_pedidoproductoCajero`(in _id int, IN _idProducto INT,IN _idProveedor INT,IN _cantidad INT,IN _usser TEXT, IN _ip TEXT, IN _mac TEXT)
BEGIN


	DECLARE id_pp INT;
	DECLARE _accion VARCHAR(30);
	DECLARE _tabla VARCHAR(50);
	DECLARE _campos VARCHAR(1000);
	DECLARE _antes VARCHAR(1000);
	DECLARE _ahora VARCHAR(1000);

	SET _accion = 'Eleccion Producto';
	SET _tabla = 'Cajero';
	SET _campos = CONCAT('idCliente',',', 'idProducto',',', 'idProveedor',',','unidadesProducto');
	SET _antes =  ('');
	SET _ahora =  CONCAT(_id,',', _idProducto,',', _idProveedor,',',_cantidad);

	SET id_pp = (SELECT CASE WHEN COUNT(idPedido) > 0 THEN (MAX(idPedido)+1) ELSE 1 END FROM pedido_producto);

INSERT INTO pedido_producto
	(
	idPedido,
	idCliente,
	idProducto,
	idProveedor,
	unidadesProducto
	)
	VALUES
	(
	id_pp,
	_id,
	_idProducto,
	_idProveedor,
	_cantidad
	);
	insert into pedido
	 (idPedido,idCliente,fechaPedido,idEstadoPedido)values (id_pp,_id,CURRENT_TIMESTAMP,1);


UPDATE producto_proveedor
	SET
	cantidadProducto = cantidadProducto - _cantidad

	WHERE
	idProducto = _idProducto and
	idProveedor = _idProveedor;

CALL sp_seguridad(_accion,_usser,_tabla,_id,_ip,_mac,_campos,_antes,_ahora);

    END */$$
DELIMITER ;

/* Procedure structure for procedure `SP_Utilidad` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP_Utilidad` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Utilidad`()
BEGIN
	SELECT p.idProducto as id, pr.nombreProveedor, p.nombreProducto, pp.precioProductoV as precioVenta, pp.precioProducto as precioCompra from producto p
	inner join producto_proveedor pp inner JOIN proveedor pr on p.idProducto=pp.idProducto and pr.idProveedor=pp.idProveedor;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `SP_VenderProductos` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP_VenderProductos` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_VenderProductos`(IN _id INT, IN _idPedido int, IN _usser TEXT, IN _ip TEXT, IN _mac TEXT)
BEGIN
	DECLARE id_f INT;
	DECLARE _accion VARCHAR(30);
	DECLARE _tabla VARCHAR(50);
	DECLARE _campos VARCHAR(1000);
	DECLARE _antes VARCHAR(1000);
	DECLARE _ahora VARCHAR(1000);

	DECLARE _idCliente INT;
	declare _idProducto int;
	declare _idProveedor int;
	declare _cantidad int;
	DECLARE _fechaReserva DATETIME;

	SET _accion = 'Vender Pedido';
	SET _tabla = 'cajero';
	SET _campos = CONCAT('idCajero',',','idCliente',',','idProducto',',', 'idProveedor',',','unidadesProducto');
	SET _antes =  ('');
	SET _ahora =  (SELECT CONCAT(_id,',',idCliente,',',idProducto,',', idProveedor,',',unidadesProducto) from pedido_producto where idPedido=_idPedido);

	SET _idCliente = (SELECT idCliente FROM pedido_producto WHERE idPedido=_idPedido);
	set _idProducto = (SELECT idProducto FROM pedido_producto WHERE idPedido=_idPedido);
	SET _idProveedor = (SELECT idProveedor FROM pedido_producto WHERE idPedido=_idPedido);
	SET _cantidad = (SELECT unidadesProducto FROM pedido_producto WHERE idPedido=_idPedido);
	set _fechaReserva = (SELECT fechaPedido FROM pedido WHERE idPedido=_idPedido);

	SET id_f = (SELECT CASE WHEN COUNT(idFactura) > 0 THEN (MAX(idFactura)+1 ) ELSE 1 END FROM factura_pedido);


	INSERT INTO factura_pedido
	(idFactura,
	idCliente,
	idProveedor,
	idProducto,
	unidadesProducto
	)
	VALUES
	(id_f,
	_idCliente,
	_idProveedor,
	_idProducto,
	_cantidad
	);

	INSERT INTO factura
	(idFactura,
	idVendedor,
	idCliente,
	fechaReserva,
	fechaEntrega
	)
	VALUES
	(id_f,
	_id,
	_idCliente,
	_fechaReserva,
	CURRENT_TIMESTAMP
	);

	DELETE from pedido_producto where idPedido=_idPedido;

	DELETE FROM pedido WHERE idPedido=_idPedido;

	CALL sp_seguridad(_accion,_usser,_tabla,_id,_ip,_mac,_campos,_antes,_ahora);

    END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
