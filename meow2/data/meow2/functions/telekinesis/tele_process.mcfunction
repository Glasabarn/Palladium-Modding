# Initialize steps
scoreboard players set @s teleSteps 16

# Move the ray
execute at @s run function meow2:telekinesis/tele_move

# Check if the ray hit a -Creeper- a block
execute as @s[tag=hitEntity] at @s run function meow2:telekinesis/tele_hit

# Destroy the ray (very important!)
kill @s
