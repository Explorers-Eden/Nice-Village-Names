title @s title {"color":"gray","bold":false,"italic":false,"text":" "}
$title @s subtitle [{"bold":false,"color":"gray","italic":false,"text":"- "},$(CustomName),{"bold":false,"color":"gray","italic":false,"text":" -"}]
playsound minecraft:entity.villager.work_cartographer neutral @s ~ ~ ~ .75 1

tag @s add at_village
tag @s remove not_at_village