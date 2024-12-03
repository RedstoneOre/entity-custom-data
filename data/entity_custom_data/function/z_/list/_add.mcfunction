#Add: storage entity_custom_data:temp list.new
# $say execute unless data storage entity_custom_data:custom_data d.list[$(end_upp)] run data modify storage entity_custom_data:custom_data d.list insert $(end_upp) value []
$execute unless data storage entity_custom_data:custom_data d.list[$(end_upp)] run data modify storage entity_custom_data:custom_data d.list insert $(end_upp) value []
# $say execute unless data storage entity_custom_data:custom_data d.list[$(end_upp)][$(end_low)] run return run data modify storage entity_custom_data:custom_data d.list[$(end_upp)] insert $(end_low) from storage entity_custom_data:temp list.new
$execute unless data storage entity_custom_data:custom_data d.list[$(end_upp)][$(end_low)] run return run data modify storage entity_custom_data:custom_data d.list[$(end_upp)] insert $(end_low) from storage entity_custom_data:temp list.new
# $say data modify storage entity_custom_data:custom_data d.list[$(end_upp)][$(end_low)] set from storage entity_custom_data:temp list.new
$data modify storage entity_custom_data:custom_data d.list[$(end_upp)][$(end_low)] set from storage entity_custom_data:temp list.new