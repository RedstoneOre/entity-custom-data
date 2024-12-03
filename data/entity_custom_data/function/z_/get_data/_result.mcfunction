#Save The result
data remove storage entity_custom_data:result get_datacur
execute store result storage entity_custom_data:result get_datacur.low int 1 run scoreboard players get @s entity_custom_data.datacur.low32b
execute store result storage entity_custom_data:result get_datacur.upp int 1 run scoreboard players get @s entity_custom_data.datacur.upp32b
execute store success storage entity_custom_data:result get_datacur.have byte 1 if score @s entity_custom_data.datacur.low32b matches -2147483648..2147483647
# say Result:Get @s