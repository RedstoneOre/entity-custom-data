# $say GET: $(d)
#if the given entity is loading
$execute as @e[nbt={UUID:$(d)}] run return run function entity_custom_data:z_/get_data/_result
#else
#summon the entity with the uuid
# $execute in entity_custom_data:dataswap store success score get_datacur.ifnewentity entity_custom_data.temp run summon minecraft:falling_block 0 1 0 {CustomName:'"Template:entity_custom_data"',DropItem:0b,NoGravity:1b,Tags:["entity_custom_data.temp","datapacks.tmp","tmp"],Time:600s,UUID:$(d)}
$execute at @s store success score get_datacur.ifnewentity entity_custom_data.temp run summon minecraft:falling_block ~ -1000 ~ {CustomName:'"Template:entity_custom_data"',DropItem:0b,NoGravity:1b,Tags:["entity_custom_data.temp","datapacks.tmp","tmp"],Time:600s,UUID:$(d)}
#Get the result by the new entity
# say Entities: @e[type=minecraft:falling_block,tag=entity_custom_data.temp]
execute as @e[type=minecraft:falling_block,tag=entity_custom_data.temp] run function entity_custom_data:z_/get_data/_result_tmpentity