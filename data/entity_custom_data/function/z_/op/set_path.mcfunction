# $say set_path $(data)
data modify storage entity_custom_data:temp args set value {}
$data modify storage entity_custom_data:temp merge_path set value $(data)
execute if data storage entity_custom_data:temp merge_path.from run data modify storage entity_custom_data:temp args.vt set value 'from'
execute if data storage entity_custom_data:temp merge_path.from run return run data modify storage entity_custom_data:temp args.v set from storage entity_custom_data:temp merge_path.from
data modify storage entity_custom_data:temp args.vt set value 'from'
data modify storage entity_custom_data:temp args_valsave set from storage entity_custom_data:temp merge_path.value
data modify storage entity_custom_data:temp args.v set value 'storage entity_custom_data:temp args_valsave'