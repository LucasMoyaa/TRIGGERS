delimiter $
create trigger checkDuracao
before insert
on filmes
for each row
begin
if 
new.duracao < 0
then
set new.duracao = null;
end if;
end $
delimiter ;

insert into filmes (titulo, duracao) 
values
			('O Poderoso Chefão', 175),
			('Interestelar', 169),
			('A Origem', 148),
			('O Senhor dos Anéis: O Retorno do Rei', 201),
			('Clube da Luta', 139),
			('Forrest Gump', 0),
			('Matrix', 136),
			('Cidade de Deus', 130),
            ('Barrados no Baile', -300);
            
select * from filmes;