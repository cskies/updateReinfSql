


--## 'DESCOMENTAR' AS 4 LINHAS ABAIXO E TROCAR O NOME DA TAB NA 1a LINHA



--select * from wfiscal.cd00155
--WHERE codigo_atividade_id IS NOT Null


--BEGIN TRAN
--update wfiscal.cd00155
--set IncideMP540 = 1
--from wfiscal.cd00155 cd right join TB_EMPR_155 t1
--on cd.CodEspecifico = t1.codespecifico
--commit tran


--UPDATE wfiscal.cd00155
--SET IncideMP540 = NULL


--$$$$$$$$$$$$$$$$$$$$$$$$    EXECUTA A PROC $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$


--exec [dbo].[SP_Reinf_atualizaCodigoAtiv]




--$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$



-- ####### alteracao de nome das tabelas - 8,13,15,67,78,80





USE [BASEVAZIA]
GO
/****** Object:  StoredProcedure [dbo].[SP_Reinf_atualizaCodigoAtiv]    Script Date: 14/06/2018 18:53:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--exec [dbo].[SP_Reinf_atualizaCodigoAtiv]

ALTER PROCEDURE [dbo].[SP_Reinf_atualizaCodigoAtiv]

AS

BEGIN

DECLARE @ID_TOSET INT
set @ID_TOSET = 0;

declare @CodEspec varchar(60)

DECLARE @VAR_TOUP smallint

DECLARE LOOP_ATUALIZA_CURSOR CURSOR static FOR
	
	select t1.id, cd.CodEspecifico
			from 
				wfiscal.codigo_atividade t1 right join TB_EMPR_155 cd --## ALTERAR NOME TABELA
			on t1.agrupamento_ncm = cd.COD_ATIV


OPEN LOOP_ATUALIZA_CURSOR;

FETCH NEXT FROM LOOP_ATUALIZA_CURSOR INTO @ID_TOSET, @CodEspec;

WHILE @@FETCH_STATUS = 0
    BEGIN
		
		update wfiscal.cd00155 --## ALTERAR NOME TABELA
		set codigo_atividade_id = @ID_TOSET
		from wfiscal.cd00155 cd right join TB_EMPR_155 t1 -- ## ALTERAR NOMES DAS TABELAS
		on cd.CodEspecifico = t1.CodEspecifico
		where cd.CodEspecifico = @CodEspec
			
		FETCH NEXT FROM LOOP_ATUALIZA_CURSOR INTO @ID_TOSET, @CodEspec;

    END;  

    CLOSE LOOP_ATUALIZA_CURSOR;  
    DEALLOCATE LOOP_ATUALIZA_CURSOR;   

END





--- ## DEPOIS DE ATUALIZAR AS TABELAS ... DAR F5 