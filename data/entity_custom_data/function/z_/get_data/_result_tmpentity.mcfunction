function entity_custom_data:z_/get_data/_result
tag @s remove entity_custom_data.temp
scoreboard players operation storge_low32b entity_custom_data.temp = @s entity_custom_data.datacur.low32b
scoreboard players operation storge_upp32b entity_custom_data.temp = @s entity_custom_data.datacur.upp32b
kill @s
execute unless data storage entity_custom_data:result {get_datacur:{have:1b}} run return 0
scoreboard players operation @s entity_custom_data.datacur.low32b = storge_low32b entity_custom_data.temp
scoreboard players operation @s entity_custom_data.datacur.upp32b = storge_upp32b entity_custom_data.temp