CREATE DEFINER=`root`@`localhost` PROCEDURE `locaisDisponiveis`()
begin
	select endereco 
    from local 
    where vagas > 0;
end