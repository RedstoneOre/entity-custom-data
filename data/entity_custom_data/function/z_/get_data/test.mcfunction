#Test: Get the datacur of a loading entity
data modify storage entity_custom_data:temp uuid.d set from entity @s UUID
return run function entity_custom_data:z_/get_data/get with storage entity_custom_data:temp uuid