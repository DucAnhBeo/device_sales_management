create database device_sales_management;

create table devices (
device_id char(4) primary key,
device_name text ,
unit int 
);

create table suppliers ( 
supplier_id char(3) primary key,
supplier_name text,
supplier_address text,
supplier_phone text
);

create table orders (
order_id char(4) primary key,
supplier_id char(3),
order_time date,
order_quantity int,
foreign key (supplier_id) references suppliers(supplier_id)
);

create table device_order (
id int primary key,
order_id char(4),
device_id char(4),
foreign key (order_id) references orders(order_id ),
foreign key (device_id) references devices(device_id)
);

create table imports (
import_id char(4) primary key,
order_id char(4),
import_time date,
import_quantity int,
foreign key (order_id) references orders(order_id )
);

create table device_import(
id int primary key,
import_id char(4),
device_id char(4),
foreign key (import_id) references imports(import_id),
foreign key (device_id) references devices(device_id)
);

create table customers(
customer_id int,
customer_name text,
customer_phone text,
order_id char(4),
foreign key (order_id) references orders(order_id)
);

create table exports(
export_id char(4) primary key,
export_time date,
export_quantity int
);

create table device_export(
id int primary key,
device_id char(4),
export_id char(4),
foreign key (export_id) references exports(export_id),
foreign key (device_id) references devices(device_id)
);


create table inventory (
inventory_time date,
device_id char(4),
quantity int,
foreign key (device_id) references devices(device_id)
);

create table taxes (
device_id char(4),
tax text,
foreign key (device_id) references devices(device_id)
);

insert into suppliers (supplier_id, supplier_name, supplier_address, supplier_phone) values ('C01', 'Oyondu', 'Suite 93', 'jdavey0@ucla.edu');
insert into suppliers (supplier_id, supplier_name, supplier_address, supplier_phone) values ('C02', 'Jabbersphere', 'Room 812', 'bsimond1@sohu.com');
insert into suppliers (supplier_id, supplier_name, supplier_address, supplier_phone) values ('C03', 'InnoZ', 'Room 729', 'ireggler2@walmart.com');
insert into suppliers (supplier_id, supplier_name, supplier_address, supplier_phone) values ('C04', 'Kwimbee', 'Suite 78', 'jjenne3@rambler.ru');
insert into suppliers (supplier_id, supplier_name, supplier_address, supplier_phone) values ('C05', 'Demimbu', 'Room 15', 'zwallworth4@weibo.com');
insert into suppliers (supplier_id, supplier_name, supplier_address, supplier_phone) values ('C06', 'Eadel', '15th Floor', 'cbrownsell5@themeforest.net');
insert into suppliers (supplier_id, supplier_name, supplier_address, supplier_phone) values ('C07', 'Photojam', 'Suite 85', 'aborn6@sfgate.com');
insert into suppliers (supplier_id, supplier_name, supplier_address, supplier_phone) values ('C08', 'Aivee', 'PO Box 33999', 'ntrevenu7@cloudflare.com');
insert into suppliers (supplier_id, supplier_name, supplier_address, supplier_phone) values ('C09', 'Babbleset', 'PO Box 48314', 'rjeppe8@4shared.com');
insert into suppliers (supplier_id, supplier_name, supplier_address, supplier_phone) values ('C10', 'Devbug', 'Apt 495', 'khillburn9@cloudflare.com');

insert into devices (device_id, device_name, unit) values ('TV01', 'Tivi Samsung', 2);
insert into devices (device_id, device_name, unit) values ('TV02', 'Tivi LG', 5);
insert into devices (device_id, device_name, unit) values ('MT15', 'Máy tính Dell', 6);
insert into devices (device_id, device_name, unit) values ('MT90', 'Máy tính HP', 3);
insert into devices (device_id, device_name, unit) values ('DT14', 'Điện thoại Iphone', 8);
insert into devices (device_id, device_name, unit) values ('DT21', 'Điện thoại Oppo', 2);
insert into devices (device_id, device_name, unit) values ('TL29', 'Tủ lạnh Sanyo', 6);
insert into devices (device_id, device_name, unit) values ('TL56', 'Tủ lạnh Toshiba', 8);
insert into devices (device_id, device_name, unit) values ('MH34', 'Màn hình Xiaomi', 9);
insert into devices (device_id, device_name, unit) values ('MH78', 'Màn hình LCD', 3);

insert into orders (Order_id, supplier_id, order_time, order_quantity) values ('D001', 'C03', '2023-09-07', 1);
insert into orders (Order_id, supplier_id, order_time, order_quantity) values ('D002', 'C01', '2023-05-21', 2);
insert into orders (Order_id, supplier_id, order_time, order_quantity) values ('D003', 'C02', '2022-11-27', 3);
insert into orders (Order_id, supplier_id, order_time, order_quantity) values ('D004', 'C05', '2023-10-22', 4);
insert into orders (Order_id, supplier_id, order_time, order_quantity) values ('D005', 'C03', '2023-07-30', 5);
insert into orders (Order_id, supplier_id, order_time, order_quantity) values ('D006', 'C02', '2023-03-15', 6);
insert into orders (Order_id, supplier_id, order_time, order_quantity) values ('D007', 'C01', '2023-09-26', 7);
insert into orders (Order_id, supplier_id, order_time, order_quantity) values ('D008', 'C02', '2023-04-29', 8);
insert into orders (Order_id, supplier_id, order_time, order_quantity) values ('D009', 'C05', '2022-12-15', 9);
insert into orders (Order_id, supplier_id, order_time, order_quantity) values ('D010', 'C03', '2023-03-07', 10);

insert into imports (import_id, order_id, import_time, import_quantity) values ('N001', 'D001', '2022-11-21', 1);
insert into imports (import_id, order_id, import_time, import_quantity) values ('N002', 'D001', '2023-04-10', 2);
insert into imports (import_id, order_id, import_time, import_quantity) values ('N003', 'D002', '2023-10-05', 3);
insert into imports (import_id, order_id, import_time, import_quantity) values ('N004', 'D003', '2022-12-30', 4);
insert into imports (import_id, order_id, import_time, import_quantity) values ('N005', 'D006', '2022-11-24', 5);
insert into imports (import_id, order_id, import_time, import_quantity) values ('N006', 'D008', '2023-09-17', 6);
insert into imports (import_id, order_id, import_time, import_quantity) values ('N007', 'D002', '2023-02-22', 7);
insert into imports (import_id, order_id, import_time, import_quantity) values ('N008', 'D009', '2022-11-20', 8);
insert into imports (import_id, order_id, import_time, import_quantity) values ('N009', 'D008', '2023-04-19', 9);
insert into imports (import_id, order_id, import_time, import_quantity) values ('N010', 'D010', '2022-11-18', 10);

insert into device_order (id, order_id, device_id) values (1, 'D001', 'TV01');
insert into device_order (id, order_id, device_id) values (2, 'D002', 'TV02');
insert into device_order (id, order_id, device_id) values (3, 'D001', 'MT90');
insert into device_order (id, order_id, device_id) values (4, 'D004', 'MT15');
insert into device_order (id, order_id, device_id) values (5, 'D005', 'TL29');
insert into device_order (id, order_id, device_id) values (6, 'D007', 'MT15');
insert into device_order (id, order_id, device_id) values (7, 'D008', 'MH34');
insert into device_order (id, order_id, device_id) values (8, 'D003', 'TL56');
insert into device_order (id, order_id, device_id) values (9, 'D009', 'MH78');
insert into device_order (id, order_id, device_id) values (10, 'D010', 'TL56');

insert into device_import (id, import_id, device_id) values (1, 'N001', 'TV01');
insert into device_import (id, import_id, device_id) values (2, 'N002', 'TV02');
insert into device_import (id, import_id, device_id) values (3, 'N001', 'MT90');
insert into device_import (id, import_id, device_id) values (4, 'N004', 'MT15');
insert into device_import (id, import_id, device_id) values (5, 'N005', 'TL29');
insert into device_import (id, import_id, device_id) values (6, 'N007', 'MT15');
insert into device_import (id, import_id, device_id) values (7, 'N008', 'MH34');
insert into device_import (id, import_id, device_id) values (8, 'N003', 'TL56');
insert into device_import (id, import_id, device_id) values (9, 'N009', 'MH78');
insert into device_import (id, import_id, device_id) values (10, 'N010', 'TL56');

insert into exports (export_id, export_time, export_quantity) values ('X001', '2023-03-31', 1);
insert into exports (export_id, export_time, export_quantity) values ('X002', '2022-11-29', 2);
insert into exports (export_id, export_time, export_quantity) values ('X003', '2023-09-28', 3);
insert into exports (export_id, export_time, export_quantity) values ('X004', '2023-01-27', 4);
insert into exports (export_id, export_time, export_quantity) values ('X005', '2023-07-14', 5);
insert into exports (export_id, export_time, export_quantity) values ('X006', '2023-03-11', 6);
insert into exports (export_id, export_time, export_quantity) values ('X007', '2023-05-21', 7);
insert into exports (export_id, export_time, export_quantity) values ('X008', '2023-07-16', 8);
insert into exports (export_id, export_time, export_quantity) values ('X009', '2023-08-05', 9);
insert into exports (export_id, export_time, export_quantity) values ('X010', '2023-03-02', 10);

insert into device_export (id, device_id, export_id) values (1,'TV02', 'X001' );
insert into device_export (id, device_id, export_id) values (2,'TL56', 'X003');
insert into device_export (id, device_id, export_id) values (3,'MH34', 'X002');
insert into device_export (id, device_id, export_id) values (4,'MT90', 'X005');
insert into device_export (id, device_id, export_id) values (5,'MT15', 'X006');
insert into device_export (id, device_id, export_id) values (6,'TL29', 'X007');
insert into device_export (id, device_id, export_id) values (7,'MH34', 'X003');
insert into device_export (id, device_id, export_id) values (8,'TL29', 'X008');
insert into device_export (id, device_id, export_id) values (9,'DT21', 'X009');
insert into device_export (id, device_id, export_id) values (10,'TL56', 'X010');

insert into inventory(inventory_time, device_id, quantity) values ('2023-09-09', 'TV01', 1);
insert into inventory(inventory_time, device_id, quantity) values ('2023-01-09', 'TV02', 2);
insert into inventory(inventory_time, device_id, quantity) values ('2023-08-22', 'MT15', 3);
insert into inventory(inventory_time, device_id, quantity) values ('2023-02-23', 'MT90', 4);
insert into inventory(inventory_time, device_id, quantity) values ('2023-01-04', 'DT21', 5);
insert into inventory(inventory_time, device_id, quantity) values ('2023-02-22', 'TL29', 6);
insert into inventory(inventory_time, device_id, quantity) values ('2023-02-28', 'TL56', 7);
insert into inventory(inventory_time, device_id, quantity) values ('2023-01-13', 'MH34', 8);
insert into inventory(inventory_time, device_id, quantity) values ('2022-12-15', 'MH78', 9);
insert into inventory(inventory_time, device_id, quantity) values ('2023-10-17', 'DT14', 10);


insert into taxes (device_id, tax) values ('TV01', '18');
insert into taxes (device_id, tax) values ('TV02', '34');
insert into taxes (device_id, tax) values ('MT15', '06');
insert into taxes (device_id, tax) values ('MT90', '82');
insert into taxes (device_id, tax) values ('DT14', '06');
insert into taxes (device_id, tax) values ('DT21', '37');
insert into taxes (device_id, tax) values ('TL29', '82');
insert into taxes (device_id, tax) values ('TL56', '01');
insert into taxes (device_id, tax) values ('MH34', '12');
insert into taxes (device_id, tax) values ('MH78', '65');