# Executed every tick
# @s = player

scoreboard players operation @s tick = timekeeper tick
execute as @s[scores={tick=0}] at @s run function player/second
