#Find next element in the list
scoreboard players add delete.cur.low entity_custom_data.data 1
execute if score delete.cur.low entity_custom_data.data matches 2147483639.. run scoreboard players set delete.cur.low entity_custom_data.data 0
execute if score delete.cur.low entity_custom_data.data matches 0 run scoreboard players add delete.cur.upp entity_custom_data.data 1
function entity_custom_data:z_/list/_conv_listcur_to_data
#Check if the cur out of the range
function entity_custom_data:z_/list/_get with storage entity_custom_data:result delete.pos
execute if data storage entity_custom_data:result {delete:{get:{have:0b}}} run function entity_custom_data:z_/list/_reset_pos