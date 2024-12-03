#IO:Add an element to schedule deleting
#Arguments: low,upp,uuid

#Add at the end
function entity_custom_data:z_/list/_conv_end_and_now_listcur_to_data
$data modify storage entity_custom_data:temp list.new set value {l:$(low),u:$(upp),d:$(uuid)}
function entity_custom_data:z_/list/_add with storage entity_custom_data:result delete.pos
#end+=1
scoreboard players add delete.cur.end.low entity_custom_data.data 1
execute if score delete.cur.end.low entity_custom_data.data matches -2147483648 run scoreboard players set delete.cur.end.low entity_custom_data.data 0
execute if score delete.cur.end.low entity_custom_data.data matches 0 run scoreboard players add delete.cur.end.upp entity_custom_data.data 1