CREATE DATABASE Tienda;
USE Tienda;
CREATE TABLE `almacenes` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO `almacenes` VALUES (1,'Las Palmas'),(2,'Vecindario'),(3,'Telde');

CREATE TABLE `categorias` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

INSERT INTO `categorias` VALUES (1,'Ordenador de sobremesa'),(2,'Ordenador portátil'),(3,'Ratón'),(4,'Alfombrilla'),(5,'Altavoces'),(6,'Pantalla'),(7,'Silla');

CREATE TABLE `productos` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `precio` decimal(6,2) NOT NULL,
  `observaciones` varchar(100) NOT NULL,
  `almacen` int(3) NOT NULL,
  `categoria` int(3) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `almacen` (`almacen`),
  KEY `categoria` (`categoria`),
  CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`almacen`) REFERENCES `almacenes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `productos_ibfk_2` FOREIGN KEY (`categoria`) REFERENCES `categorias` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

INSERT INTO `productos` VALUES (1,'PC gaming - Acer Nitro DG.E2DEB.002',999.00,' Intel® Core™ i5-11400F, 16 GB RAM, 1024 GB SSD, GeForce® GTX 1650, W10',1,1),(2,'Apple iMac MGPC3Y/A, 24\" Retina 4K',1519.00,'Apple M1, 256 GB SSD, MacOS, Plata',3,1),(3,'MacBook Air Apple MGN93Y/A, 13.3\" Retina',929.00,'Apple Silicon M1, 8 GB, 256 GB SSD, MacOS, Plata',2,2),(4,'Portátil - HP 14s-dq0012ns, 14\" HD',329.00,'Intel® Celeron® N4020, 4 GB, 64 GB eMMC, Gráficos Intel® UHD, W10, Plata',3,2),(5,'Ratón Gaming - Logitech G502 Hero',53.19,'Puerto USB, Pesas opcionales, Respuesta 1000 Hz, Negro',3,3),(6,'Ratón - Logitech M110',11.99,'1000 DPI, USB, Óptico, Ambidestro, con cable, Gris',3,3),(7,'Alfombrilla Gaming - Razer Goliathus Chroma',30.99,'RGB',2,4),(8,'Alfombrilla gaming - SteelSeries QcK Mini',9.09,'goma, color negro',1,4),(9,'Altavoces para PC - Creative Pebble',17.99,'4.4 W, USB, 86 dB, Diseño Minimalista, Negro',1,5),(10,'Altavoces para PC - Logitech Z213',47.99,' 2.1, Subwoofer, 7 W, Negro',3,5),(11,'Monitor gaming - Acer NITRO VG270, 27\"',199.00,'Full HD, IPS, 1ms, HDMI, VGA, Negro y rojo',2,6),(12,'Monitor - LG UltraWide 29WN600-W, 29\" WQHD',238.00,'5 ms, 75 Hz, DisplayPort, HDMI, FreeSync, Plata',3,6),(13,'Silla gaming - Drift DR 50 Pro',119.00,'Reposabrazos, Cojín cervical y lumbar, Reclinable, Giratorio, Negro y Azul',1,7),(14,'Silla gaming - Corsair T3 RUSH',265.99,'4D, Ergonómico, Altura regulable, Reposabrazos, 140 kg, Negro/Rojo',1,7);
