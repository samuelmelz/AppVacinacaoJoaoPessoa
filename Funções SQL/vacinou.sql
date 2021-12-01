CREATE DEFINER=`root`@`localhost` PROCEDURE `vacinou`(IN CPF2 bigint, IN id_lote2 tinyint)
begin
    if (select qt_vacinas from lote where id_lote = id_lote2) > 0 
    then
		if (select cpf from vacinacao) = CPF2
		then
			update pessoa
			set dose = dose + 1
			where cpf = CPF2;
		
			update lote
			set qt_vacinas = qt_vacinas-1
			where id_lote = id_lote2;
			
			delete from vacinacao
			where cpf = CPF2;
		
        else 
			select "Nao esta agendado" as '';
		
		END IF;
        else 
			select "Nao ha vacinas suficientes" as '';
	END IF;
END