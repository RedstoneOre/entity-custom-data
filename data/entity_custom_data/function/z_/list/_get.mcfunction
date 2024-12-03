data remove storage entity_custom_data:result delete.get
$execute store success storage entity_custom_data:result delete.get.have byte 1 if data storage entity_custom_data:custom_data d.list[$(upp)][$(low)]
$data modify storage entity_custom_data:result delete.get merge from storage entity_custom_data:custom_data d.list[$(upp)][$(low)]