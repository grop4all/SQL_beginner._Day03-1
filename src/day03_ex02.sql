select m.pizza_name as pizza_name, m.price as price ,
       pizzeria.name as pizzeria_name
       from menu m
    full join person_order po on m.id = po.menu_id
       join pizzeria on m.pizzeria_id = pizzeria.id
where true and po.person_id is NULL
order by pizza_name, price;


WITH pizza_id AS (SELECT m.id
                  FROM menu m
                  EXCEPT
                  SELECT po.menu_id
                  FROM person_order po
                  ORDER BY 1)
SELECT m2.pizza_name,
       m2.price,
       p.name AS pizzeria_name
FROM pizza_id pi
    LEFT JOIN menu m2 ON pi.id = m2.id
    LEFT JOIN pizzeria p ON m2.pizzeria_id = p.id
ORDER BY 1, 2;