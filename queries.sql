select * from customers;
select * from device_export;
select * from device_import;
select * from device_order;
select * from devices;
select * from taxes;
select * from imports;
select * from inventory;
select * from orders;
select * from suppliers;
select * from exports;

select devices.device_name, orders.order_time
from devices
inner join device_order
on devices.device_id = device_order.device_id
inner join orders
on orders.order_id = device_order.order_id;