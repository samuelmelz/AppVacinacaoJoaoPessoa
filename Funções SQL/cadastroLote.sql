CREATE DEFINER=`root`@`localhost` PROCEDURE `cadastroLote`(IN validade date, IN qt_vacinas int, IN id_lote float, IN cod_vac tinyint)
begin
	insert into lote values(validade, qt_vacinas, id_lote, cod_vac);
end