#save the gotten path
data modify storage entity_custom_data:result datapath.p set value "entity_custom_data:custom_data d.nulldata"
$execute if predicate entity_custom_data:value/$(have) run data modify storage entity_custom_data:result datapath.p set value "entity_custom_data:custom_data d.$(upp).$(low)"
$data modify storage entity_custom_data:result datapath.f set value "d.$(upp).$(low)"