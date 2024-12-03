#Operation:Merge

#Get the data path
function entity_custom_data:z_/getpath_by_entity
#Set arguments
$function entity_custom_data:z_/op/set_path {data:$(data)}
$data modify storage entity_custom_data:temp ex_path merge value $(path)
data modify storage entity_custom_data:temp args.t set from storage entity_custom_data:temp ex_path.val
data modify storage entity_custom_data:temp args.p set from storage entity_custom_data:result datapath.p
return run function entity_custom_data:z_/op/_merge with storage entity_custom_data:temp args