$execute if predicate entity_custom_data:value/$(r) if data storage $(p).$(t) run tellraw @p [{"with":[{"selector":"@s"},{"color":"yellow","nbt":"$(f).$(t)","storage":"entity_custom_data:custom_data"}],"translate":"commands.data.entity.query"}," ",{"color":"gray","clickEvent":{"action":"run_command","value":"/data get storage $(p).$(t)"},"text":"[BETTER OUTPUT]","underlined":true}]
$execute if predicate entity_custom_data:value/$(s) run data modify storage entity_custom_data:result get-save set from storage $(p).$(t)
$return run data get storage $(p).$(t)