execute unless function entity_custom_data:z_/init/_create_conf_score_board run return 0
# Tick per 1 time
scoreboard players set delete_check.tick_p_1_time entity_custom_data.config 1
# The number of entities to check in 1 time
scoreboard players set delete_check.count_p_1_time entity_custom_data.config 5