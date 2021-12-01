CREATE DEFINER=`root`@`localhost` PROCEDURE `cadastroPessoa`(IN dose tinyint, IN cpf bigint, IN idade tinyint)
begin
	insert into pessoa values(dose, cpf, idade);
end