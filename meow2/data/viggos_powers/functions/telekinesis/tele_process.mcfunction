# Initialize steps
scoreboard players set @s teleSteps 16

# Move the ray
execute at @s run function viggos_powers:telekinesis/tele_move

# Check if the ray hit a -Creeper- a block
execute as @s[tag=hitEntity] at @s run function viggos_powers:telekinesis/tele_hit

# Destroy the ray (very important!)
say oops died
kill @s
