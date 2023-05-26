(select pi.name as pizzeria_name from pizzeria pi
    join person_visits pv on pi.id = pv.pizzeria_id
    join person p on pv.person_id = p.id
where p.gender = 'female'
intersect all
select pi.name as pizzeria_name from pizzeria pi
    join person_visits pv on pi.id = pv.pizzeria_id
    join person p on pv.person_id = p.id
where p.gender = 'male'
    )
order by pizzeria_name