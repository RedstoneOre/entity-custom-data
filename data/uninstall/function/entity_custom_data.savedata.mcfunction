# Remove scoreboard
scoreboard objectives remove entity_custom_data.temp

# Remove tmp data
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

# Tellraw
tellraw @s {"bold":true,"color":"red","text":"Entity Custom Data is uninstalled(SAVE DATA)!Reload to enable it again or delete the datapack to disable forever"}