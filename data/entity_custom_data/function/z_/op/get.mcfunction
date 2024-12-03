#Operation:Remove

#Get the data path
function entity_custom_data:z_/getpath_by_entity
#Set arguments
$data modify storage entity_custom_data:temp args set value {r:$(print),s:$(save)}
$data modify storage entity_custom_data:temp ex_path merge value $(path)
data modify storage entity_custom_data:temp args.t set from storage entity_custom_data:temp ex_path.val
data modify storage entity_custom_data:temp args.p set from storage entity_custom_data:result datapath.p
data modify storage entity_custom_data:temp args.f set from storage entity_custom_data:result datapath.f
return run function entity_custom_data:z_/op/_get with storage entity_custom_data:temp args