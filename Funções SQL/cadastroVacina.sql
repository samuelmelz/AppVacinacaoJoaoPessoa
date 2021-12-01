CREATE DEFINER=`root`@`localhost` PROCEDURE `cadastroVacina`(IN cod_vac tinyint, IN tipo varchar(20))
begin
	insert into vacina values(cod_vac, tipo);
end