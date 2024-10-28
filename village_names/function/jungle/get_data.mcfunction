data remove storage nvr:village x
data remove storage nvr:village y
data remove storage nvr:village z

data modify storage nvr:village x set from entity @s Brain.memories.minecraft:meeting_point.value.pos[0]
data modify storage nvr:village y set from entity @s Brain.memories.minecraft:meeting_point.value.pos[1]
data modify storage nvr:village z set from entity @s Brain.memories.minecraft:meeting_point.value.pos[2]

function nvr:village_names/jungle/get_name
function nvr:village_names/set_name with storage nvr:village

tag @s add nvr.villagename.set