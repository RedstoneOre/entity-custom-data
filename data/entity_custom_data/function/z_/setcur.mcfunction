#Give a new cur if the entity has no cur

#Check if the entity has got a datacur
execute if predicate entity_custom_data:have_custom_data run return fail

#Set the own cur
scoreboard players operation @s entity_custom_data.datacur.low32b = low32b entity_custom_data.data
scoreboard players operation @s entity_custom_data.datacur.upp32b = upp32b entity_custom_data.data

#Save to the list
data remove storage entity_custom_data:temp args
execute store result storage entity_custom_data:temp args.low int 1 run scoreboard players get @s entity_custom_data.datacur.low32b
execute store result storage entity_custom_data:temp args.upp int 1 run scoreboard players get @s entity_custom_data.datacur.upp32b
data modify storage entity_custom_data:temp args.uuid set from entity @s UUID
function entity_custom_data:z_/list/add with storage entity_custom_data:temp args

#Next cur
scoreboard players add low32b entity_custom_data.data 1
execute if score low32b entity_custom_data.data matches 0 run scoreboard players add upp32b entity_custom_data.data 1