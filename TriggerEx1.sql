delimiter $
create trigger RegistroDataCriacaoPedido
before insert
on pedidos
for each row
begin
set new.dataPedido = now();
end $
delimiter ;

insert into pedidos(dataPedido, nomeCliente)
values 
			(now(), 'Daniel Ohata'),
            (now(), 'Ouvidio Francisco'),
			(now(), 'Eliney Sabino'),
            (now(), 'Marcio Funes');

select * from pedidos;