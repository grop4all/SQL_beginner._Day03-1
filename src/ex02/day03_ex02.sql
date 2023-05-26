select m.pizza_name as pizza_name, m.price as price ,
       pizzeria.name as pizzeria_name
       from menu m
    full join person_order po on m.id = po.menu_id
       join pizzeria on m.pizzeria_id = pizzeria.id
where true and po.person_id is NULL
order by pizza_name, price;