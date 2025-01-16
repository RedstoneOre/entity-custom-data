$execute if data storage $(p).$(t) run return 0
$execute if predicate entity_custom_data:value/$(r) run tellraw @p {"color":"red","translate":"arguments.nbtpath.nothing_found","with":[{"storage":"entity_custom_data:temp","nbt":"ex_path.val"}]}
return fail