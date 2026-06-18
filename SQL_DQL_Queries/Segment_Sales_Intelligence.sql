select 
g.segment,
concat('$',sum(s.COGS)) as Cost,
concat('$',sum(s.sales)) as Total_Sales,
concat('$',sum(s.gross_sales)) as Gross_Sales,
count(*) as Units_Sold,
concat('$',sum(s.profit)) as Profit,
concat((sum(s.profit)/sum(s.sales) * 100),'%') as Profit_Margin
from 
pbi_practice.sales_fct s
join pbi_practice.seg_dim g on g.seg_key = s.seg_key
group by
g.segment
order by 
concat('$',sum(s.profit)) desc




