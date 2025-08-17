-- criar uma tabela para praticar análise de dados com SQL Server
create table restaurant_orders (
	order_id varchar(20),
	customer_code varchar(20),
	placed_at datetime,
	restaurant_id varchar(20),
	cuisine varchar(20),
	order_status varchar(20),
	promo_code_name varchar(20)
);

insert into restaurant_orders (order_id, customer_code, placed_at, restaurant_id, cuisine, order_status, promo_code_name) values
('OF1900191801','UFDDN1991918XUY1','2025-01-01T15:30:20','KMKMH6787','Lebanese','Delivered','Tasty50'),
('OF1900191802','UFDDN1991918XUY1','2025-01-02T12:15:45','LEBANESE2','Lebanese','Delivered',null),
('OF1900191803','UFDDN1991918XUY1','2025-01-10T18:45:30','PIZZA123','Italian','Cancelled','HUNGRY20'),
('OF1900191804','UFDDN1991918XUY1','2025-01-15T19:20:15','ITALIAN2','Italian','Delivered',null),
('OF1900191805','UFDDN1991918XUY1','2025-01-20T11:30:00','BURGER99','American','Delivered',null),
('OF1900191806','ABC1234567890XYZ','2025-01-01T08:45:00','AMERICAN2','American','Delivered','NEWUSER'),
('OF1900191807','ABC1234567890XYZ','2025-01-05T13:20:00','TACO789','Mexican','Delivered',null),
('OF1900191808','DEF9876543210XYZ','2025-01-02T09:15:00','MEXICAN2','Mexican','Delivered','FIRSTORDER'),
('OF1900191809','GHI5678901234XYZ','2025-01-03T14:30:00','SUSHI456','Japanese','Delivered','NEWUSER'),
('OF1900191810','JKL3456789012XYZ','2025-01-04T12:00:00','JAPANESE2','Japanese','Delivered','FIRSTORDER'),
('OF1900191811','MNO7890123456XYZ','2025-01-05T19:45:00','KMKMH6787','Lebanese','Delivered',null),
('OF1900191812','PQR1234567890ABC','2025-01-06T11:30:00','LEBANESE2','Lebanese','Delivered','NEWUSER'),
('OF1900191813','STU9876543210ABC','2025-01-07T13:15:00','PIZZA123','Italian','Delivered',null),
('OF1900191814','VWX5678901234ABC','2025-01-08T18:00:00','ITALIAN2','Italian','Delivered','FIRSTORDER'),
('OF1900191815','YZA3456789012ABC','2025-01-09T12:45:00','BURGER99','American','Delivered',null),
('OF1900191816','BCD7890123456ABC','2025-01-10T20:15:00','AMERICAN2','American','Delivered','NEWUSER'),
('OF1900191817','EFG1234567890DEF','2025-01-11T09:30:00','TACO789','Mexican','Delivered',null),
('OF1900191818','HIJ9876543210DEF','2025-01-12T14:45:00','MEXICAN2','Mexican','Delivered','FIRSTORDER'),
('OF1900191819','KLM5678901234DEF','2025-01-13T17:30:00','SUSHI456','Japanese','Delivered',null),
('OF1900191820','NOP3456789012DEF','2025-01-14T12:15:00','JAPANESE2','Japanese','Delivered',null),
('OF1900191821','QRS7890123456DEF','2025-01-15T19:00:00','KMKMH6787','Lebanese','Delivered','NEWUSER'),
('OF1900191822','TUV1234567890GHI','2025-01-16T10:45:00','LEBANESE2','Lebanese','Delivered',null),
('OF1900191823','WXY9876543210GHI','2025-01-17T15:30:00','PIZZA123','Italian','Delivered','FIRSTORDER'),
('OF1900191824','ZAB5678901234GHI','2025-01-18T18:15:00','ITALIAN2','Italian','Delivered',null),
('OF1900191825','CDE3456789012GHI','2025-01-19T11:00:00','BURGER99','American','Delivered',null),
('OF1900191826','FGH7890123456GHI','2025-01-20T20:45:00','AMERICAN2','American','Delivered','NEWUSER'),
('OF1900191827','IJK1234567890JKL','2025-01-21T09:15:00','TACO789','Mexican','Delivered',null),
('OF1900191828','LMN9876543210JKL','2025-01-22T14:30:00','MEXICAN2','Mexican','Delivered','FIRSTORDER'),
('OF1900191829','OPQ5678901234JKL','2025-01-23T17:45:00','SUSHI456','Japanese','Delivered',null),
('OF1900191830','RST3456789012JKL','2025-01-24T12:30:00','JAPANESE2','Japanese','Delivered',null),
('OF1900191831','UVW7890123456JKL','2025-01-25T19:15:00','KMKMH6787','Lebanese','Delivered','NEWUSER'),
('OF1900191832','XYZ1234567890MNO','2025-01-26T10:00:00','LEBANESE2','Lebanese','Delivered',null),
('OF1900191833','ABC9876543210MNO','2025-01-27T15:15:00','PIZZA123','Italian','Delivered','FIRSTORDER'),
('OF1900191834','DEF5678901234MNO','2025-01-28T18:30:00','ITALIAN2','Italian','Delivered',null),
('OF1900191835','GHI3456789012MNO','2025-01-29T11:45:00','BURGER99','American','Delivered',null),
('OF1900191836','JKL7890123456MNO','2025-01-30T20:00:00','AMERICAN2','American','Delivered','NEWUSER'),
('OF1900191837','MNO1234567890PQR','2025-01-31T09:45:00','TACO789','Mexican','Delivered',null),
('OF1900191838','PQR9876543210PQR','2025-01-31T14:00:00','MEXICAN2','Mexican','Delivered','FIRSTORDER'),
('OF1900191839','STU5678901234PQR','2025-01-31T17:15:00','SUSHI456','Japanese','Delivered',null),
('OF1900191840','VWX3456789012PQR','2025-01-31T12:00:00','JAPANESE2','Japanese','Delivered',null),
('OF1900191841','JAN_ONLY_ORDER1','2025-01-15T13:30:00','KMKMH6787','Lebanese','Delivered','NEWUSER'),
('OF1900191842','JAN_ONLY_ORDER2','2025-01-20T18:45:00','LEBANESE2','Lebanese','Delivered','FIRSTORDER'),
('OF1900191843','NO_ORDER_LAST7_1','2025-02-01T12:15:00','PIZZA123','Italian','Delivered','NEWUSER'),
('OF1900191844','NO_ORDER_LAST7_2','2025-02-05T19:30:00','ITALIAN2','Italian','Delivered','FIRSTORDER'),
('OF1900191845','THIRD_ORDER_CUST1','2025-01-05T11:45:00','BURGER99','American','Delivered','NEWUSER'),
('OF1900191846','THIRD_ORDER_CUST1','2025-01-10T14:15:00','AMERICAN2','American','Delivered',null),
('OF1900191847','THIRD_ORDER_CUST1','2025-01-15T17:45:00','BURGER99','American','Delivered',null),
('OF1900191848','THIRD_ORDER_CUST2','2025-01-10T10:30:00','TACO789','Mexican','Delivered','FIRSTORDER'),
('OF1900191849','THIRD_ORDER_CUST2','2025-01-15T13:45:00','MEXICAN2','Mexican','Delivered',null),
('OF1900191850','THIRD_ORDER_CUST2','2025-01-20T16:30:00','TACO789','Mexican','Delivered',null),
('OF1900191851','MULTI_CUISINE_CUST','2025-01-05T12:00:00','KMKMH6787','Lebanese','Delivered','NEWUSER'),
('OF1900191852','MULTI_CUISINE_CUST','2025-01-10T15:30:00','LEBANESE2','Lebanese','Delivered',null),
('OF1900191853','MULTI_CUISINE_CUST','2025-01-15T18:45:00','PIZZA123','Italian','Delivered',null),
('OF1900191854','MULTI_CUISINE_CUST','2025-01-20T11:15:00','ITALIAN2','Italian','Delivered',null),
('OF1900191855','MULTI_CUISINE_CUST','2025-01-25T14:45:00','BURGER99','American','Delivered',null),
('OF1900191856','SINGLE_ORDER_JAN','2025-01-10T19:00:00','AMERICAN2','American','Delivered','FIRSTORDER'),
('OF1900191857','NO_ORDER_RECENT','2025-02-10T12:30:00','TACO789','Mexican','Delivered','NEWUSER'),
('OF1900191858','NO_ORDER_RECENT','2025-02-15T18:00:00','MEXICAN2','Mexican','Delivered',null),
('OF1900191859','PROMO_FIRST_ONLY','2025-02-01T11:45:00','SUSHI456','Japanese','Delivered','WELCOME50'),
('OF1900191860','PROMO_FIRST_ONLY','2025-02-05T14:15:00','JAPANESE2','Japanese','Delivered',null),
('OF1900191861','PROMO_FIRST_ONLY','2025-02-10T17:30:00','SUSHI456','Japanese','Delivered',null),
('OF1900191862','LAST_ORDER_7DAYS','2025-03-20T10:00:00','KMKMH6787','Lebanese','Delivered','FIRSTORDER'),
('OF1900191863','LAST_ORDER_7DAYS','2025-03-25T13:15:00','LEBANESE2','Lebanese','Delivered',null),
('OF1900191864','LAST_ORDER_7DAYS','2025-03-31T16:30:00','KMKMH6787','Lebanese','Delivered',null),
('OF1900191865','ABC9876543210MNO','2025-02-27T15:15:00','PIZZA123','Italian','Delivered',null),
('OF1900191866','CDE3456789012GHI','2025-03-27T15:15:00','PIZZA123','Italian','Delivered',null),
('OF1900191867','ABC9876543210MNO','2025-03-15T15:15:00','LEBANESE2','Lebanese','Delivered',null),
('OF1900191868','ZZZ9876543210MNO','2025-03-20T15:15:00','LEBANESE2','Lebanese','Delivered','NEWUSER'),
('OF1900191869','UFDDN1991918XUY1','2025-03-28T11:30:00','BURGER99','American','Delivered',null),
('OF1900191870','MULTI_CUISINE_CUST','2025-03-31T14:45:00','PIZZA123','Italian','Delivered',null),
('OF1900191871','DEF9876543210XYZ','2025-03-02T09:15:00','KMKMH6787','Lebanese','Delivered','TASTY50'),
('OF1900191872','UVW7890123456JKL','2025-02-25T19:15:00','KMKMH6787','Lebanese','Delivered','TASTY25'),
('OF1900191873','UVW7890123456JKL','2025-03-25T19:15:00','PIZZA123','Italian','Delivered','TASTY50');

select * from restaurant_orders


--Top 3 estabelecimentos por tipo de culinária sem usar as funções limit e top.
with cte as (
select	
	cuisine,
	restaurant_id,
	count(*) as Total_pedidos
from
	restaurant_orders
	group by cuisine, restaurant_id
)
select 
	*
from (
select
	*,
		ROW_NUMBER() over(partition by cuisine order by total_pedidos desc) as ranking_por_cuisine
from cte
) a
where ranking_por_cuisine <= 3


-- 2- Encontre a contagem diária de novos clientes a partir da data de lançamento (quantos novos clientes estamos adquirindo todos os dias
with cte_two as (
select
	customer_code,
	cast(MIN(placed_at) as date) as primeiro_pedido
from
	restaurant_orders
	group by customer_code
)

select 
	primeiro_pedido,
	count(*) as cont_total
from
	cte_two
group by primeiro_pedido
order by cont_total desc

-- Contar o número de clientes que se registraram em janeiro de 2025, fizeram apenas um pedido nesse mesmo mês e não realizaram mais nenhuma compra.
select
	customer_code,
	COUNT(*) as qtd_pedidos
from
	restaurant_orders
where MONTH(placed_at) = 1 and YEAR(placed_at) = 2025 and
customer_code not in
(
	select
	
		distinct customer_code
	from
		restaurant_orders
	where not (MONTH(placed_at) = 1 and YEAR(placed_at) = 2025)
)

group by customer_code
having COUNT(*) = 1


/*"Listar todos os clientes que não fizeram nenhum pedido nos últimos 7 dias, mas que se tornaram clientes há um mês,
e cujo primeiro pedido foi feito utilizando uma promoção."*/


insert into restaurant_orders (order_id, customer_code, placed_at, restaurant_id, cuisine, order_status, promo_code_name) values
('OF1900191877','UFDDN1991918XUY8','2025-07-13T23:30:20','KMKMH6787','Lebanese','Delivered','NEWUSER')


with cte_three as (
select	
	customer_code,
	MIN(placed_at) as primeiro_pedido,
	MAX(placed_at) as pedido_mais_recente
from	
	restaurant_orders
group by customer_code
)

select
	c.*,
	o.promo_code_name
from
	cte_three c
inner join restaurant_orders o on c.customer_code = o.customer_code and c.primeiro_pedido = o.placed_at
where c.pedido_mais_recente < DATEADD(day, -7, getdate()) and
CAST(c.primeiro_pedido as date) = CAST(DATEADD(month, -1, getdate()) as date) and
o.promo_code_name is not null

select * from restaurant_orders


/*A equipe de Growth está planejando criar um 'gatilho' que segmentará os clientes após cada terceiro pedido com uma comunicação personalizada, e eles pediram para você criar uma consulta (query) para isso.*/
with cte_four as (
select
	*,
	ROW_NUMBER() over(partition by customer_code order by placed_at) as order_number
from
	restaurant_orders
	)

select
	*
from cte_four
where order_number%3=0


-- Liste os clientes que fizeram pedidos mais de uma vez e todos os esses pedidos devem estar vinculados com código de promoção
with cte_five as (
select
	customer_code,
	count(*) as N_of_orders,
	count(promo_code_name) as promo_orders
from
	restaurant_orders
group by customer_code
)
select
	*
from
	cte_five
where N_of_orders > 1 and N_of_orders = promo_orders

-- Qual é a  porcentagem de clientes que eram originalmente adiquiridos em janeiro de 2025. (Onde estes primeiros pedidos foram feitos sem cupom de desconto)
with cte_six as (
select
	*,
	ROW_NUMBER() over(partition by customer_code order by placed_at) as rn
from
	restaurant_orders
where MONTH(placed_at) = 1 
)

select
	count(case when rn = 1 and promo_code_name is null then customer_code end)*100.0/count(distinct customer_code) prct_of_customers
from
	cte_six
