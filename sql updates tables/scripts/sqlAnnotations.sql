
--select * from wfiscal.cd00134

----incide tem que ser 1 ok


--select * from TB_CAD_EMPR

select cd.codespecifico, cd.incidemp540, cd.codigo_atividade_id
from 
TB_CAD_EMPR t1 left join  wfiscal.cd00134 cd on t1.codespecifico = cd.codespecifico
where cd.IncideMP540 = 1 


----update wfiscal.cd00134 cd
----right join TB_CAD_EMPR t1 on cd.codespecifico = t1.codespecifico
----set cd.incidemp540 = 1
----where cd.codespecifico = 'EQUIPAMENTO' and cd.idcodigo = 'ZZZG7E260B091E1B2B9070DBA7F7E9FE01'
----where cd.CodEspecifico = 'EQUIPAMENTO' and cd.idCodigo = 'ZZZG7E260B091E1B2B9070DBA7F7E9FE01'

--update wfiscal.cd00134 
--set IncideMP540 = 1
--from wfiscal.cd00134 cd right join TB_CAD_EMPR t1
--on cd.CodEspecifico = t1.codespecifico


--where cd.CodEspecifico = 'EQUIPAMENTO' and cd.idCodigo = 'ZZZG7E260B091E1B2B9070DBA7F7E9FE01'


--select * from wfiscal.cd00134 

--select cd.CodEspecifico, cd.incidemp540, cd.codigo_atividade_id
--from tb_cad_empr t1 left join wfiscal.cd00134 cd on t1.codespecifico = cd.codespecifico

--select * from wfiscal.cd00134 cd


select cd.codespecifico, t1.id -------
from 
wfiscal.codigo_atividade t1 right join  TB_CAD_EMPR cd on t1.agrupamento_ncm = cd.COD_ATIV


--INSERT INTO TB_EMPR_136 VALUES ('47879060','84212990','84212990')


---####### 136

select cd.codespecifico, cd.incidemp540, cd.codigo_atividade_id
from 
TB_EMPR_136 t1 left join  wfiscal.cd00136 cd on t1.codespecifico = cd.codespecifico
where cd.IncideMP540 = 1 


update wfiscal.cd00136
set IncideMP540 = 1
from wfiscal.cd00136 cd right join TB_EMPR_136 t1
on cd.CodEspecifico = t1.codespecifico

select * from wfiscal.cd00136
WHERE codigo_atividade_id IS NOT NULL



select * from TB_EMPR_136
select * from wfiscal.CD00136 --


--------------------------------------------------------------------------------



















update wfiscal.cd00134
set cd.incidemp540 = 1
where cd.codespecifico = 'EQUIPAMENTO' and cd.idcodigo = 'ZZZG7E260B091E1B2B9070DBA7F7E9FE01'





select IncideMP540, * from wfiscal.cd00134
where IncideMP540 = 1






UPDATE wfiscal.CD00134
SET
	CODIGO_ATIVIDADE_ID= (select t1.id
							from 
								wfiscal.codigo_atividade t1 right join  TB_CAD_EMPR cd 
							on t1.agrupamento_ncm = cd.COD_ATIV )
from wfiscal.cd00134 cd right join TB_CAD_EMPR t1
on cd.CodEspecifico = t1.codespecifico




---------------------------------------------------------------------------------------------------------------------------------------------------------
-----#### extrair relatorio xls sem filtro
select *
							from 
								wfiscal.codigo_atividade t1 



SELECT CodEspecifico, IncideMP540, codigo_atividade_id FROM wfiscal.CD00134 where CodEspecifico = '68503501200453299'

---------------------------------------------------------------------------------------------------------------------------------------------------------



---------------------------------------------------------------------------------------------------------------------------------------------------------
--####### query to fetch incidemp540 (1st value to update)
select cd.codespecifico, cd.incidemp540, cd.codigo_atividade_id
from 
TB_CAD_EMPR t1 left join  wfiscal.cd00134 cd on t1.codespecifico = cd.codespecifico
where cd.IncideMP540 = 1 

---------------------------------------------------------------------------------------------------------------------------------------------------------

select * from TB_CAD_EMPR






SELECT * FROM wfiscal.wfiscal