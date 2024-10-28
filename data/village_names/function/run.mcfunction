scoreboard players enable @a village_names

execute as @a[scores={village_names=2..}] unless score @s village_names_msg_on matches 1 run function village_names:msg_on
execute as @a[scores={village_names=1}] unless score @s village_names_msg_off matches 1 run function village_names:msg_off

execute as @e[type=villager,tag=!eden.villagename.set,predicate=eden:entity/is_desert_type] if data entity @s Brain.memories.minecraft:meeting_point.value run function village_names:desert/get_data
execute as @e[type=villager,tag=!eden.villagename.set,predicate=eden:entity/is_jungle_type] if data entity @s Brain.memories.minecraft:meeting_point.value run function village_names:jungle/get_data
execute as @e[type=villager,tag=!eden.villagename.set,predicate=eden:entity/is_plains_type] if data entity @s Brain.memories.minecraft:meeting_point.value run function village_names:plains/get_data
execute as @e[type=villager,tag=!eden.villagename.set,predicate=eden:entity/is_savanna_type] if data entity @s Brain.memories.minecraft:meeting_point.value run function village_names:savanna/get_data
execute as @e[type=villager,tag=!eden.villagename.set,predicate=eden:entity/is_snow_type] if data entity @s Brain.memories.minecraft:meeting_point.value run function village_names:snow/get_data
execute as @e[type=villager,tag=!eden.villagename.set,predicate=eden:entity/is_swamp_type] if data entity @s Brain.memories.minecraft:meeting_point.value run function village_names:swamp/get_data
execute as @e[type=villager,tag=!eden.villagename.set,predicate=eden:entity/is_taiga_type] if data entity @s Brain.memories.minecraft:meeting_point.value run function village_names:taiga/get_data

execute as @e[type=marker,tag=village.name] at @s run function village_names:set_display with entity @s

execute as @e[type=marker,tag=village.name] at @s unless block ~ ~ ~ minecraft:bell run kill @s
execute as @e[type=text_display,tag=village.name] at @s unless entity @e[type=marker,tag=village.name,distance=..1.5] run kill @s
execute as @e[type=text_display,tag=village.name] at @s unless block ~ ~ ~ #minecraft:air run kill @s

execute as @e[type=player,tag=!at_village] at @s if entity @e[type=marker,tag=village.name,predicate=eden:entity/is_nearby_64] unless score @s village_names matches 1 run function village_names:display_name/entering with entity @n[type=marker,tag=village.name]
execute as @e[type=player,tag=!not_at_village] at @s unless entity @e[type=marker,tag=village.name,predicate=eden:entity/is_nearby_64] run function village_names:display_name/exiting

execute as @e[type=#eden:valid_for_village_healing] at @s if entity @e[type=marker,tag=village.name,predicate=eden:entity/is_nearby_32] unless predicate eden:time/night_time run effect give @s regeneration 5 0 true

schedule function village_names:run 2s