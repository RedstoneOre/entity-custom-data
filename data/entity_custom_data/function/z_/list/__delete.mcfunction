# $say _delete $(upp) $(low)  $(end_upp) $(end_low)!
#Delete data
$function entity_custom_data:z_/list/_delete_custom_data with storage entity_custom_data:custom_data d.list[$(upp)][$(low)]
#Delete cur in the list
# $say data modify storage entity_custom_data:custom_data d.list[$(upp)][$(low)] set from storage entity_custom_data:custom_data d.list[$(end_upp)][$(end_low)]
$data modify storage entity_custom_data:custom_data d.list[$(upp)][$(low)] set from storage entity_custom_data:custom_data d.list[$(end_upp)][$(end_low)]
# $say data remove storage entity_custom_data:custom_data d.list[$(end_upp)][$(end_low)]
$data remove storage entity_custom_data:custom_data d.list[$(end_upp)][$(end_low)]