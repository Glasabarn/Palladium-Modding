# Move forward according to step size
tp @s ^ ^ ^0.5


# TEST
# execute as @s at @s run particle crit ~ ~ ~ 0 0 0 0 1 force


# Check for collisions with Entities
execute if entity @e[type=!minecraft:player,type=!minecraft:area_effect_cloud,distance=..1.5] run tag @s add hitEntity
execute if entity @e[type=!minecraft:area_effect_cloud,distance=..1.5] run tag @e[type=!minecraft:player,type=!minecraft:area_effect_cloud,distance=..1.5] add dismantleEntity


# Check for collisions with blocks
execute unless block ~ ~ ~ minecraft:air run tag @s add hitBlock


# Decrease the number of steps remaining
scoreboard players remove @s dismantleSteps 1


# Recurse until we hit something or run out of steps
execute as @s[tag=!hitBlock, scores={dismantleSteps=1..}] at @s run function meow2:dismantle/dismantle_move

