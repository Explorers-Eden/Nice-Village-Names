execute as @e[type=villager,tag=!nvr.villagename.set,predicate=nvr:entity/is_desert_type] if data entity @s Brain.memories.minecraft:meeting_point.value run function nvr:village_names/desert/get_data
execute as @e[type=villager,tag=!nvr.villagename.set,predicate=nvr:entity/is_jungle_type] if data entity @s Brain.memories.minecraft:meeting_point.value run function nvr:village_names/jungle/get_data
execute as @e[type=villager,tag=!nvr.villagename.set,predicate=nvr:entity/is_plains_type] if data entity @s Brain.memories.minecraft:meeting_point.value run function nvr:village_names/plains/get_data
execute as @e[type=villager,tag=!nvr.villagename.set,predicate=nvr:entity/is_savanna_type] if data entity @s Brain.memories.minecraft:meeting_point.value run function nvr:village_names/savanna/get_data
execute as @e[type=villager,tag=!nvr.villagename.set,predicate=nvr:entity/is_snow_type] if data entity @s Brain.memories.minecraft:meeting_point.value run function nvr:village_names/snow/get_data
execute as @e[type=villager,tag=!nvr.villagename.set,predicate=nvr:entity/is_swamp_type] if data entity @s Brain.memories.minecraft:meeting_point.value run function nvr:village_names/swamp/get_data
execute as @e[type=villager,tag=!nvr.villagename.set,predicate=nvr:entity/is_taiga_type] if data entity @s Brain.memories.minecraft:meeting_point.value run function nvr:village_names/taiga/get_data

execute as @e[type=marker,tag=village.name] at @s unless block ~ ~ ~ minecraft:bell run kill @s

execute as @e[type=player,tag=!at_village] at @s if entity @e[type=marker,tag=village.name,distance=..64] run function nvr:village_names/display_name/entering with entity @n[type=marker,tag=village.name]
execute as @e[type=player,tag=!not_at_village] at @s unless entity @e[type=marker,tag=village.name,distance=..64] run function nvr:village_names/display_name/exiting