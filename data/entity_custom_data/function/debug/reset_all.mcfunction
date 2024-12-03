execute unless data entity @s {SelectedItem:{id:"minecraft:redstone_block"}} run return run tellraw @s {"bold":true,"color":"red","text":"ARE YOU SURE TO RESET ALL?HOLD REDSTONE BLOCK TO CONFIRM"}
item modify entity @s weapon.mainhand entity_custom_data:disable_used_redstone_block
scoreboard players reset * entity_custom_data.datacur.low32b
scoreboard players reset * entity_custom_data.datacur.upp32b
data remove storage entity_custom_data:custom_data d
scoreboard objectives remove entity_custom_data.config
scoreboard objectives remove entity_custom_data.data
function entity_custom_data:z_/init
tellraw @s {"bold":true,"color":"red","text":"ALL OF THE ENTITY CUSTOM DATA RESETED!"}