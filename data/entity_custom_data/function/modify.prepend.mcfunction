execute if data storage entity_custom_data:data {installed:0b} run return run tellraw @s {"color":"red","text":"Unable to operate:the datapck is already uninstalled."}
#Modify.set
$return run function entity_custom_data:z_/op/set {data:$(data),path:$(path),op:prepend}