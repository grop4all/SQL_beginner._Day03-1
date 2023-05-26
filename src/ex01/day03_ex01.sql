select m.id from menu m
full join person_order po on m.id = po.menu_id
where true and po.person_id is NULL
order by m.id;
