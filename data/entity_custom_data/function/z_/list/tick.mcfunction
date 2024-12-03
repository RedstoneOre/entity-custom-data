# Update once
execute store result score time entity_custom_data.temp run time query gametime
scoreboard players operation time entity_custom_data.temp %= delete_check.tick_p_1_time entity_custom_data.config
execute unless score time entity_custom_data.temp matches 0 run return fail
# Delete check
scoreboard players operation delete_check.left_check_count entity_custom_data.temp = delete_check.count_p_1_time entity_custom_data.config
function entity_custom_data:z_/list/once