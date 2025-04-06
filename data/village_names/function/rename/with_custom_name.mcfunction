execute at @n[type=marker,tag=village.name] run particle minecraft:happy_villager ~ ~ ~ .4 .4 .4 0.5 10

execute if data entity @s SelectedItem.components."minecraft:custom_name" run data modify entity @n[type=marker,tag=village.name] CustomName.text set from entity @s SelectedItem.components.minecraft:custom_name
execute if data entity @s SelectedItem.components."minecraft:custom_name" run data modify entity @n[type=text_display,tag=village.name] text.text set from entity @s SelectedItem.components.minecraft:custom_name

execute if data entity @s SelectedItem.components."minecraft:custom_name".text run data modify entity @n[type=marker,tag=village.name] CustomName.text set from entity @s SelectedItem.components.minecraft:custom_name.text
execute if data entity @s SelectedItem.components."minecraft:custom_name".text run data modify entity @n[type=text_display,tag=village.name] text.text set from entity @s SelectedItem.components.minecraft:custom_name.text

tag @n[type=marker,tag=village.name] add village.name.custom

execute as @s[gamemode=!creative] run item modify entity @s weapon.mainhand eden:used_item