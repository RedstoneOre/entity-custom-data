#Operation:Set,Append,Prepend

#Get the data path
function entity_custom_data:z_/getpath_by_entity
#Set arguments
$function entity_custom_data:z_/op/set_path {data:$(data)}
$data modify storage entity_custom_data:temp ex_path merge value $(path)
data modify storage entity_custom_data:temp args.t set from storage entity_custom_data:temp ex_path.val
data modify storage entity_custom_data:temp args.p set from storage entity_custom_data:result datapath.p
$data modify storage entity_custom_data:temp args.i set value '$(idx)'
return run function entity_custom_data:z_/op/_insert with storage entity_custom_data:temp args