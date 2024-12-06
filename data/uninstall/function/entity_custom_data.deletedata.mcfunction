# Warning
execute unless data entity @s {SelectedItem:{id:"minecraft:redstone_block"}} run return run tellraw @s {"bold":true,"color":"red","text":"ARE YOU SURE TO RESET ALL?HOLD REDSTONE BLOCK TO CONFIRM"}

# Remove scoreboard
scoreboard objectives remove entity_custom_data.config
scoreboard objectives remove entity_custom_data.data
scoreboard objectives remove entity_custom_data.datacur.low32b
scoreboard objectives remove entity_custom_data.datacur.upp32b
scoreboard objectives remove entity_custom_data.temp

# Remove data
data remove storage entity_custom_data:custom_data d

data remove storage entity_custom_data:result get-save
data remove storage entity_custom_data:result args
data remove storage entity_custom_data:result get_datacur
data remove storage entity_custom_data:result delete
data remove storage entity_custom_data:result datapath

data remove storage entity_custom_data:temp args
data remove storage entity_custom_data:temp args_valsave
data remove storage entity_custom_data:temp ex_path
data remove storage entity_custom_data:temp merge_path
data remove storage entity_custom_data:temp op
data remove storage entity_custom_data:temp list

# Stop Tick Update
data merge storage entity_custom_data:data {installed:0b}

#Tellraw
tellraw @s {"bold":true,"color":"red","text":"Entity Custom Data is uninstalled(DELETE DATA)!Reload to enable it again or delete the datapack to disable forever"}