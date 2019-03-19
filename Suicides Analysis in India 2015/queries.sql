-- These are the only spatial queries I had used

-- checking if CRS is correct after geojson import
select st_srid(geom) from ind_states; -- 32645 (CRS for India)

-- creating a view from ind_states table
create view ind_states_view as (select "ID_1" as state_id,  "NAME_1" as state_name, st_area(geom)/1000000 as area_sqkm, "TYPE_1" as state_type from ind_states);

select *  from ind_states_view;
select * from city order by total_suicides desc; -- Chennai 2274 Bengaluru 1855 Delhi 1533 Mumbai 1122
select * from city order by pop_mil desc; -- Delhi 18.98, Mumbai 18.41