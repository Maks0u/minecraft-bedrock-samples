scoreboard objectives add tick dummy
scoreboard objectives add tick_per_second dummy
scoreboard players set timekeeper tick_per_second 20

# Loop 0-19
scoreboard players add timekeeper tick 1
scoreboard players operation timekeeper tick %= timekeeper tick_per_second
