USE jardineria;

-- OFICINAS
INSERT INTO oficinas VALUES ('BCN-ES','Barcelona','España','Cataluña','08001','+34 93 555 11 00','Av. Diagonal 100',NULL);
INSERT INTO oficinas VALUES ('MAD-ES','Madrid','España','Madrid','28001','+34 91 555 22 00','Gran Vía 50',NULL);
INSERT INTO oficinas VALUES ('PAR-FR','París','Francia','Île-de-France','75001','+33 1 555 33 00','Rue de Rivoli 10',NULL);
INSERT INTO oficinas VALUES ('LON-UK','Londres','Reino Unido','England','EC1A','+44 20 555 44 00','London Bridge St 1',NULL);

-- EMPLEADOS
INSERT INTO empleados VALUES (1,'Ana','García','López','x101','ana.garcia@jardineria.com','MAD-ES',NULL,'Director General');
INSERT INTO empleados VALUES (2,'Carlos','Martínez','Ruiz','x102','carlos.m@jardineria.com','MAD-ES',1,'Subdirector Ventas');
INSERT INTO empleados VALUES (3,'Laura','Sánchez','Pérez','x103','laura.s@jardineria.com','BCN-ES',2,'Representante Ventas');
INSERT INTO empleados VALUES (4,'Pedro','López','Gómez','x104','pedro.l@jardineria.com','BCN-ES',2,'Representante Ventas');
INSERT INTO empleados VALUES (5,'María','Fernández',NULL,'x105','maria.f@jardineria.com','MAD-ES',2,'Representante Ventas');
INSERT INTO empleados VALUES (6,'Sofía','Moreno','Díaz','x106','sofia.m@jardineria.com','PAR-FR',2,'Representante Ventas');
INSERT INTO empleados VALUES (7,'Jean','Dupont',NULL,'x201','jean.d@jardineria.com','PAR-FR',6,'Técnico');
INSERT INTO empleados VALUES (8,'Emma','Wilson','Smith','x301','emma.w@jardineria.com','LON-UK',1,'Director Región UK');

-- GAMA PRODUCTOS
INSERT INTO gama_productos VALUES ('Aromáticas','Plantas con aroma característico',NULL,NULL);
INSERT INTO gama_productos VALUES ('Frutales','Árboles y arbustos que producen fruta',NULL,NULL);
INSERT INTO gama_productos VALUES ('Herbaceas','Plantas sin tallo leñoso',NULL,NULL);
INSERT INTO gama_productos VALUES ('Ornamentales','Plantas con valor decorativo',NULL,NULL);
INSERT INTO gama_productos VALUES ('Herramientas',NULL,NULL,NULL);

-- CLIENTES
INSERT INTO clientes VALUES (1,'Jardines del Norte SA','Roberto','Álvarez','+34 91 111 2233','+34 91 111 2234','Calle Mayor 5',NULL,'Madrid','Madrid','España','28001',5,10000.00);
INSERT INTO clientes VALUES (2,'Viveros Costa Verde','Silvia','Roca','+34 93 222 3344','+34 93 222 3345','Paseo Marítimo 12',NULL,'Barcelona','Cataluña','España','08003',3,15000.00);
INSERT INTO clientes VALUES (3,'Fleurs de Paris SARL','Paul','Bernard','+33 1 333 4455','+33 1 333 4456','Boulevard Haussmann 8',NULL,'París',NULL,'Francia','75009',6,8000.00);
INSERT INTO clientes VALUES (4,'Green Gardens Ltd','Tom','Clarke','+44 20 444 5566','+44 20 444 5567','King Street 22',NULL,'Londres',NULL,'Reino Unido','SW1A',8,20000.00);
INSERT INTO clientes VALUES (5,'Plantas Ibéricas SL','Carmen','Vega','+34 95 555 6677','+34 95 555 6678','Avenida de Cádiz 3',NULL,'Sevilla','Andalucía','España','41001',5,5000.00);
INSERT INTO clientes VALUES (6,'El Rosal SL','Fernando','Castro','+34 91 666 7788','+34 91 666 7789','Plaza de España 1',NULL,'Toledo','Castilla-La Mancha','España','45001',5,7500.00);
INSERT INTO clientes VALUES (7,'Herbs & Co','Alice','Martin','+33 4 777 8899','+33 4 777 8900','Cours Mirabeau 4',NULL,'Marsella',NULL,'Francia','13001',6,3000.00);
INSERT INTO clientes VALUES (8,'Luxury Blooms UK','James','Lee','+44 161 888 9900','+44 161 888 9901','Deansgate 100',NULL,'Manchester',NULL,'Reino Unido','M3',8,12000.00);
INSERT INTO clientes VALUES (9,'Viveros del Sur','Ana','Molina','+34 958 999 0011','+34 958 999 0012','Camino de Ronda 7',NULL,'Granada','Andalucía','España','18001',3,9000.00);
INSERT INTO clientes VALUES (10,'NaturePlant',NULL,NULL,'+34 96 010 1122','+34 96 010 1123','Calle Colón 15',NULL,'Valencia','Comunidad Valenciana','España','46001',4,4000.00);

-- PRODUCTOS
INSERT INTO productos VALUES ('AR-001','Lavanda Vera','Aromáticas','15x20cm','Proveedor Provenza','Lavanda auténtica de Provenza',200,5.50,3.00);
INSERT INTO productos VALUES ('AR-002','Romero Oficial','Aromáticas','10x15cm','Viveros Andalucía','Romero de alta calidad',350,3.20,1.50);
INSERT INTO productos VALUES ('FR-001','Limonero','Frutales','60x80cm','Cítricos del Sur','Limonero enano para terraza',80,18.00,10.00);
INSERT INTO productos VALUES ('FR-002','Naranjo Dulce','Frutales','70x90cm','Cítricos del Sur','Naranjo dulce variedad Valencia',60,22.00,12.00);
INSERT INTO productos VALUES ('FR-003','Higuera de Turquía','Frutales','50x60cm','Viveros Levante','Higuera resistente al frío',45,25.00,14.00);
INSERT INTO productos VALUES ('HE-001','Helechos Variados','Herbaceas','20x25cm','Viveros Green','Pack de 5 helechos variados',150,12.00,6.00);
INSERT INTO productos VALUES ('OR-001','Rosa Roja','Ornamentales','40x50cm','Rosas de España','Rosa roja de tallo largo',300,8.00,4.50);
INSERT INTO productos VALUES ('OR-002','Orquídea Phalaenopsis','Ornamentales','25x30cm','Orchid World','Orquídea de interior',120,15.00,8.00);
INSERT INTO productos VALUES ('OR-003','Cactus Saguaro','Ornamentales','30x40cm','Desert Plants','Cactus de interior bajo mantenimiento',250,9.50,5.00);
INSERT INTO productos VALUES ('HT-001','Set tijeras de poda','Herramientas','N/A','ToolPro','Set profesional tijeras de poda y podar',90,35.00,18.00);
INSERT INTO productos VALUES ('HT-002','Pala de jardín','Herramientas','N/A','ToolPro','Pala ergonómica de acero inoxidable',70,22.00,11.00);

-- PEDIDOS
INSERT INTO pedidos VALUES (1,'2024-01-10','2024-01-20','2024-01-18','Entregado',NULL,1);
INSERT INTO pedidos VALUES (2,'2024-01-15','2024-01-25','2024-01-24','Entregado','Entrega parcial acordada',2);
INSERT INTO pedidos VALUES (3,'2024-02-05','2024-02-15',NULL,'Pendiente',NULL,3);
INSERT INTO pedidos VALUES (4,'2024-02-10','2024-02-20','2024-02-19','Entregado',NULL,4);
INSERT INTO pedidos VALUES (5,'2024-03-01','2024-03-10',NULL,'Rechazado','Cliente canceló pedido',5);
INSERT INTO pedidos VALUES (6,'2024-03-05','2024-03-15','2024-03-14','Entregado',NULL,1);
INSERT INTO pedidos VALUES (7,'2024-03-12','2024-03-22',NULL,'En proceso',NULL,6);
INSERT INTO pedidos VALUES (8,'2024-04-01','2024-04-10','2024-04-09','Entregado',NULL,9);
INSERT INTO pedidos VALUES (9,'2024-04-05','2024-04-15',NULL,'Pendiente',NULL,7);
INSERT INTO pedidos VALUES (10,'2024-04-20','2024-04-30','2024-04-28','Entregado',NULL,2);

-- DETALLE PEDIDOS
INSERT INTO detalle_pedidos VALUES (1,'AR-001',10,5.50,1);
INSERT INTO detalle_pedidos VALUES (1,'OR-001',20,8.00,2);
INSERT INTO detalle_pedidos VALUES (2,'FR-001',5,18.00,1);
INSERT INTO detalle_pedidos VALUES (2,'FR-002',3,22.00,2);
INSERT INTO detalle_pedidos VALUES (2,'HT-001',2,35.00,3);
INSERT INTO detalle_pedidos VALUES (3,'OR-002',8,15.00,1);
INSERT INTO detalle_pedidos VALUES (4,'OR-001',50,8.00,1);
INSERT INTO detalle_pedidos VALUES (4,'OR-003',30,9.50,2);
INSERT INTO detalle_pedidos VALUES (6,'AR-002',100,3.20,1);
INSERT INTO detalle_pedidos VALUES (6,'HT-002',5,22.00,2);
INSERT INTO detalle_pedidos VALUES (7,'FR-003',10,25.00,1);
INSERT INTO detalle_pedidos VALUES (8,'HE-001',20,12.00,1);
INSERT INTO detalle_pedidos VALUES (9,'AR-001',30,5.50,1);
INSERT INTO detalle_pedidos VALUES (9,'AR-002',40,3.20,2);
INSERT INTO detalle_pedidos VALUES (10,'OR-001',15,8.00,1);
INSERT INTO detalle_pedidos VALUES (10,'OR-002',10,15.00,2);

-- PAGOS
INSERT INTO pagos VALUES (1,'Transferencia','TRF-2024-001','2024-01-20',215.00);
INSERT INTO pagos VALUES (2,'Tarjeta','CARD-2024-001','2024-01-26',356.00);
INSERT INTO pagos VALUES (4,'PayPal','PP-2024-001','2024-02-20',685.00);
INSERT INTO pagos VALUES (1,'Transferencia','TRF-2024-002','2024-03-15',430.00);
INSERT INTO pagos VALUES (9,'Tarjeta','CARD-2024-002','2024-04-12',240.00);
INSERT INTO pagos VALUES (2,'Transferencia','TRF-2024-003','2024-04-30',290.00);
