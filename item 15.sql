select *
from Duplicata
where	dateadd(day,-30,getdate()) < Dt_Vencimento_Parcial -- vencido há 30 dias
		and getdate() > Dt_Vencimento_Parcial
union
select * 
from Duplicata
where	dateadd(day,30,getdate()) > Dt_Vencimento_Parcial -- vencimento em 30 dias
		and getdate() < Dt_Vencimento_Parcial