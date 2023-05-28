-- 列的查询
select product_id, product_name, purchase_price
from product;

-- 查询表中的所有列
select *
from product;

-- 为列设定别名
select product_id     as id,
       product_name   as name,
       purchase_price as price
from product;

-- 中文别名
select product_id     as 商品编号,
       product_name   as 商品名称,
       purchase_price as 进货单价
from product;

-- 常数查询
select '商品' as string, 38 as number, '2009-02-24' as date, product_id, product_name
from product;

-- 删除重复的行
select distinct product_type
from product;
select distinct purchase_price
from product;
select distinct product_type, regist_date
from product;

-- where选择数据
select product_name, product_type
from product
where product_type = '衣服';
select product_name
from product
where product_type = '衣服';
