{{ config(event_time='loaded_at') }}

SELECT 
* 
FROM {{source('manual_insert_data','orders')}}