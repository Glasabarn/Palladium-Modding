# Initialize steps
scoreboard players set @s popSteps 32


# Move the ray
execute at @s run function meow2:pop/pop_move


# Check if the ray hit a -Creeper- a block
execute as @s[tag=hitEntity] at @s run function meow2:pop/pop_hit


# Destroy the ray (very important!)
kill @s