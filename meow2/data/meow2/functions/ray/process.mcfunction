# Initialize steps
scoreboard players set @s steps 128

# Move the ray
execute at @s run function meow2:ray/move

# Check if the ray hit a -Creeper- a block
execute as @s[tag=hitBlock] run function meow2:ray/hit

# Destroy the ray (very important!)
kill @s
