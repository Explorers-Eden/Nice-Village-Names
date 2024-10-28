$title @s title $(CustomName)
title @s subtitle [{"bold":false,"color":"dark_gray","italic":false,"text":"- "},{"bold":false,"color":"#F5E8C9","italic":false,"text":"Entered Village"},{"bold":false,"color":"dark_gray","italic":false,"text":" -"}]
playsound minecraft:entity.villager.work_cartographer neutral @s ~ ~ ~ .75 1
advancement grant @s only nvr:progression/visit_village

tag @s add at_village
tag @s remove not_at_village