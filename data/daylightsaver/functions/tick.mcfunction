	### Reset
scoreboard players set Daylight DaylightCycleStatus 0
scoreboard players set PlayerOn PlayerOn 0

	### Main
execute if entity @a[gamemode=!adventure] run scoreboard players set PlayerOn PlayerOn 1

execute store result score Daylight DaylightCycleStatus run gamerule doDaylightCycle

execute if score PlayerOn PlayerOn matches 1.. if score Daylight DaylightCycleStatus matches ..0 run gamerule doDaylightCycle true
execute if score PlayerOn PlayerOn matches ..0 if score Daylight DaylightCycleStatus matches 1.. run gamerule doDaylightCycle false