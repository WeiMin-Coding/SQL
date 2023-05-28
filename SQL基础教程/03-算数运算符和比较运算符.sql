/**
  算数运算符
 */
select product_name, sale_price, sale_price * 2 as "sale_price_x2"
from product;

/**
  比较运算符
 */
select product_name, product_type
from product
where sale_price = 500;

select product_name, product_type
from product
where sale_price <> 500;

select product_name, product_type, sale_price
from product
where sale_price >= 1000;

select product_name, product_type, regist_date
from product
where regist_date < '2009-09-27';

select product_name, product_type, sale_price
from product
where sale_price - purchase_price >= 500;

-- 对字符串使用不等号时的注意事项
create table chars
(
    chr char(3) not null,
    primary key (chr)
);
begin transaction;
insert into chars
values ('1');
insert into chars
values ('2');
insert into chars
values ('3');
insert into chars
values ('10');
insert into chars
values ('11');
insert into chars
values ('222');
commit;

-- 选取大于'2'的数据
select *
from chars
where chr > '2';

-- 不能对null使用比较运算符
select product_name, purchase_price
from product
where purchase_price = 2800;

select product_name, purchase_price
from product
where purchase_price <> 2800;

select product_name, purchase_price
from product
where purchase_price is null;

select product_name, purchase_price
from product
where purchase_price is not null;

/**
  逻辑运算符
 */
select product_name, product_type, sale_price
from product
where sale_price >= 1000;
-- NOT运算符
select product_name, product_type, sale_price
from product
where not sale_price >= 1000;
-- 上面SQL等价于这条
select product_name, product_type, sale_price
from product
where sale_price < 1000;

/**
  AND OR
 */
select product_name, product_type, sale_price
from product
where product_type = '厨房用具'
  and sale_price >= 3000;

select product_name, product_type, sale_price
from product
where product_type = '厨房用具'
  or sale_price >= 3000;
