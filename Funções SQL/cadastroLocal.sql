CREATE DEFINER=`root`@`localhost` PROCEDURE `cadastroLocal`(IN bairro varchar(20), IN vagas float, IN endereco varchar(100))
begin
	insert into local values(bairro, vagas, endereco);
end