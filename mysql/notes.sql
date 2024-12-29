






with recursive nubmers as
    (select 1 as n 
    union
    select n + 1
    from numbers where n < 10
    )
select * from numbers;











