# Initialize steps
scoreboard players set @s steps 128

# Move the ray
execute at @s run function viggos_powers:ray/move

# Check if the ray hit a -Creeper- a block
execute as @s[tag=hitBlock] run function viggos_powers:ray/hit

# Destroy the ray (very important!)
kill @s
