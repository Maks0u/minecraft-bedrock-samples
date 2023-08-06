# Timekeeper

# SETUP
scoreboard objectives add tick dummy
scoreboard objectives add tick_increment dummy
# scoreboard players set timekeeper tick_increment 1

scoreboard objectives add second dummy
scoreboard objectives add second_display dummy
scoreboard objectives add tick_per_second dummy
scoreboard players set timekeeper tick_per_second 20
scoreboard players operation timekeeper second = timekeeper tick
scoreboard players operation timekeeper second /= timekeeper tick_per_second
scoreboard players operation timekeeper second_display = timekeeper second
scoreboard players operation timekeeper second_display %= timekeeper second_per_minute

scoreboard objectives add minute dummy
scoreboard objectives add minute_display dummy
scoreboard objectives add second_per_minute dummy
scoreboard players set timekeeper second_per_minute 60
scoreboard players operation timekeeper minute = timekeeper second
scoreboard players operation timekeeper minute /= timekeeper second_per_minute
scoreboard players operation timekeeper minute_display = timekeeper minute

scoreboard objectives add tenth dummy
scoreboard objectives add tick_per_tenth dummy
scoreboard players set timekeeper tick_per_tenth 2
scoreboard objectives add tenth_per_second dummy
scoreboard players set timekeeper tenth_per_second 10
scoreboard players operation timekeeper tenth = timekeeper tick
scoreboard players operation timekeeper tenth /= timekeeper tick_per_tenth
scoreboard players operation timekeeper tenth %= timekeeper tenth_per_second

# RUN
scoreboard players operation timekeeper tick += timekeeper tick_increment
