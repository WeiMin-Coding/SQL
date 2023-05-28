-- 创建表：product
create table product
(
    product_id     char(4)      not null,
    product_name   varchar(100) not null,
    product_type   varchar(32)  not null,
    sale_price     integer,
    purchase_price integer,
    regist_date    date,
    primary key (product_id)
);
-- 修改表结构：新增product_name_pinyin字段
alter table product
    add column product_name_pinyin varchar(100);
-- 修改表结构：删除product_name_pinyin字段
alter table product
    drop column product_name_pinyin;
-- 查询表结构
select table_name, column_name, data_type, column_default, character_maximum_length
from information_schema.columns
where table_name = 'product';

/**
  插入数据
 */
begin transaction; -- 开始事务
INSERT INTO Product
VALUES ('0001', 'T恤衫', '衣服', 1000, 500, '2009-09-20');
INSERT INTO Product
VALUES ('0002', '打孔器', '办公用品', 500, 320, '2009-09-11');
INSERT INTO Product
VALUES ('0003', '运动T恤', '衣服', 4000, 2800, NULL);
INSERT INTO Product
VALUES ('0004', '菜刀', '厨房用具', 3000, 2800, '2009-09-20');
INSERT INTO Product
VALUES ('0005', '高压锅', '厨房用具', 6800, 5000, '2009-01-15');
INSERT INTO Product
VALUES ('0006', '叉子', '厨房用具', 500, NULL, '2009-09-20');
INSERT INTO Product
VALUES ('0007', '擦菜板', '厨房用具', 880, 790, '2008-04-28');
INSERT INTO Product
VALUES ('0008', '圆珠笔', '办公用品', 100, NULL, '2009-11-11');
COMMIT; -- 提交

/**
  练习
 */
-- 创建表
create table Addressbook
(
    regist_no    int          not null,
    name         varchar(128) not null,
    address      varchar(256) not null,
    tel_no       char(10),
    mail_address char(20),
    primary key (regist_no)
);
-- 修改表结构
alter table Addressbook
    add column postal_code char(18) not null;
-- 删除表
begin transaction ;
drop table Addressbook;
rollback ;

select * from information_schema.tables where table_name = 'addressbook';