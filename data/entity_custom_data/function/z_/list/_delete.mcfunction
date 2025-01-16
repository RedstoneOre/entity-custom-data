# say delete
#if no element,exit
execute if score delete.cur.end.low entity_custom_data.data matches 0 if score delete.cur.end.upp entity_custom_data.data matches 0 run return fail
#end-=1
scoreboard players remove delete.cur.end.low entity_custom_data.data 1
execute if score delete.cur.end.low entity_custom_data.data matches -1 run scoreboard players remove delete.cur.end.upp entity_custom_data.data 1
execute if score delete.cur.end.low entity_custom_data.data matches -1 run scoreboard players set delete.cur.end.low entity_custom_data.data 2147483638
#delete
function entity_custom_data:z_/list/_conv_end_and_now_listcur_to_data
function entity_custom_data:z_/list/__delete with storage entity_custom_data:result delete.pos