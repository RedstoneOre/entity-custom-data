#Operation:Get
#If no data exist
$execute unless predicate entity_custom_data:have_custom_data run return run function entity_custom_data:z_/op/_get.nodata {p:$(path),s:$(print)}
#Get the data path
function entity_custom_data:z_/getpath_by_entity
#Set arguments
$data modify storage entity_custom_data:temp args set value {r:$(print),s:$(save)}
$data modify storage entity_custom_data:temp ex_path merge value $(path)
data modify storage entity_custom_data:temp args.t set from storage entity_custom_data:temp ex_path.val
data modify storage entity_custom_data:temp args.p set from storage entity_custom_data:result datapath.p
data modify storage entity_custom_data:temp args.f set from storage entity_custom_data:result datapath.f
execute store success storage entity_custom_data:temp success int 1 run function entity_custom_data:z_/op/_get.chkdata with storage entity_custom_data:temp args
execute if data storage entity_custom_data:temp {success:0} run return fail
return run function entity_custom_data:z_/op/_get with storage entity_custom_data:temp args