# Initialize steps
scoreboard players set @s dismantleSteps 64


# Move the ray
execute at @s run function meow2:dismantle/dismantle_move


# Check if the ray hit a -Creeper- a block
execute as @s[tag=hitEntity] at @s run function meow2:dismantle/dismantle_hit


# Check if the ray hit a block that isnt air
execute as @s[tag=hitBlock] at @s run function meow2:dismantle/dismantle_hit_block


# Destroy the ray (very important!)
kill @s
