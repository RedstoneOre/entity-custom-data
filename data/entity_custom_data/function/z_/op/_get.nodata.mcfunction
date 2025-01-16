$data modify storage entity_custom_data:temp ex_path merge value $(p)
$execute if predicate entity_custom_data:value/$(s) run tellraw @p {"color":"red","translate":"arguments.nbtpath.nothing_found","with":[{"storage":"entity_custom_data:temp","nbt":"ex_path.val"}]}
return fail