# Save the data cur of each entity
scoreboard objectives add entity_custom_data.datacur.low32b dummy
scoreboard objectives add entity_custom_data.datacur.upp32b dummy

# Save the data
function entity_custom_data:z_/init/data_scoreboard
# Template
scoreboard objectives add entity_custom_data.temp dummy
# Configures
function entity_custom_data:z_/init/configuares

#initlize dimension dataswap
# execute in entity_custom_data:dataswap run function entity_custom_data:z_/init/dataswap