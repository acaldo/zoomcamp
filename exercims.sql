create table taxi as 
SELECT
    taxi_data.*,
	zones_pickup.*
FROM
    green_taxi_data taxi_data
LEFT JOIN
    zones zones_pickup ON taxi_data."PULocationID"  = zones_pickup."LocationID"



select count(1)  from green_view gv where DATE(lpep_pickup_datetime) = '2019-09-18'
--15767

select lpep_dropoff_datetime - lpep_pickup_datetime as hora, lpep_pickup_datetime ,lpep_dropoff_datetime  from green_taxi_data gtd  order by hora desc
--2019-09-26


select t."Borough" , sum(t.total_amount) from taxi t where DATE(lpep_pickup_datetime) = '2019-09-18' and t."Borough" <> 'Unknown'
group by t."Borough"
--"Brooklyn" "Manhattan" "Queens"

select * from green_taxi_data where "PULocationID"  = 7
order by tip_amount desc
--JFK Airport