	CREATE DATABASE primer_parcial_ISC_2025;
    USE primer_parcial_ISC_2025;
    create table Productos (id_producto int auto_increment primary key,
    cantidad varchar (100) not null,
    precio_unitario varchar (100) unique not null);
    CREATE TABLE Facturas (id_factura int auto_increment primary key,
    NIT varchar (100) not null,
    descripcion TEXT);
    CREATE TABLE factura_detalle (
    id_producto INT,
    id_factura INT,
    fecha_factura timestamp default current_timestamp,
    primary key (id_producto, id_factura),
    foreign key (id_producto) references Productos(id_producto) ON DELETE CASCADE,
    foreign key (id_factura) references Facturas(id_factura) ON DELETE CASCADE);
    INSERT INTO  Productos (cantidad, precio_unitario) VALUES
    ('80', 'Q55.70'),
    ('22', 'Q16.50');
    INSERT INTO Facturas (consumidor, descripcion) VALUES
    ('NIT', 'Shampoo anticaspa'),
    ('Consumidor Final', 'Chocolates de fresa');
    INSERT INTO factura_detalle (id_producto, id_factura) VALUES
    (1, 1),
    (1, 2),
    (2, 1);
    
    
		
    
    