##default technical scoreboard
scoreboard objectives add eden.technical dummy

##additional scoreboards
scoreboard objectives add village_names trigger
scoreboard objectives add village_names_msg_on dummy
scoreboard objectives add village_names_msg_off dummy
scoreboard objectives modify village_names displayname "Village Names Title Message Toggle"

##init schedules
schedule function village_names:run 2s
schedule function village_names:bell_particles 10t

##create database
execute unless data storage eden:name_db village run function village_names:database/create

##remove temp storage
data remove storage eden:temp village