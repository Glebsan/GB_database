-- task1

select id, name from
(select id, name from users) as u
inner join
(select user_id from orders) as o2
on u.id = o2.user_id
group by id, name 


-- task2
select prod_name, category from 
(select id, name as prod_name, catalog_id from products) as p
join
(select id, name as category from catalogs) as k
on p.catalog_id = k.id

-- task3

select id, FROM_RUS, name as TO_RUS from 
(select id, rus_name as FROM_RUS , c_to from 
(select label, name as rus_name from cities) as u
join
(select id, from as c_from, to as c_to from flights) as o
on u.label = o.c_from) as tbl
join 
(select label, name from cities) as o2
on tbl.c_to = o2.label
