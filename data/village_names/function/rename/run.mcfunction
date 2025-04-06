execute as @a[scores={eden.used.bell=1..}] at @s if items entity @s weapon.mainhand minecraft:name_tag run function village_names:rename/check_hand
scoreboard players set @a[scores={eden.used.bell=1..}] eden.used.bell 0

schedule function village_names:rename/run 1s