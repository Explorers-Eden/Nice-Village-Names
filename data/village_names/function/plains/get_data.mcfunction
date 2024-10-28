data modify storage eden:temp village.x set from entity @s Brain.memories.minecraft:meeting_point.value.pos[0]
data modify storage eden:temp village.y set from entity @s Brain.memories.minecraft:meeting_point.value.pos[1]
data modify storage eden:temp village.z set from entity @s Brain.memories.minecraft:meeting_point.value.pos[2]

function village_names:plains/get_name
function village_names:set_name with storage eden:temp village

tag @s add eden.villagename.set
data remove storage eden:temp village