#Check 1 entity
# say CHECK

#Get data
function entity_custom_data:z_/list/_conv_listcur_to_data
function entity_custom_data:z_/list/_get with storage entity_custom_data:result delete.pos
#Check if it is still exist
function entity_custom_data:z_/get_data/get with storage entity_custom_data:result delete.get
#If the entity is not exist,delete the data
execute if data storage entity_custom_data:result {get_datacur:{have:0b}} run function entity_custom_data:z_/list/_delete

#Next
function entity_custom_data:z_/list/_next
# say CHECK END