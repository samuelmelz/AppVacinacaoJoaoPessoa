CREATE DEFINER=`root`@`localhost` PROCEDURE `cadastroVacinacao`(IN data_agen date, IN disponivel tinyint, IN quantidade float, IN concluido tinyint, IN cpf bigint, IN cod_vac tinyint, IN endereco2 varchar(100))
begin
if(select vagas from local where endereco2 = endereco) > 0
then
	insert into vacinacao values(data_agen, disponivel, quantidade, concluido, cpf, cod_vac, endereco2);
else 
	select "Nao ha vagas" as ' ';
    END IF;
end