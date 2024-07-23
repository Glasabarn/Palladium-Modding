# Initialize steps
scoreboard players set @s cleaveSteps 32

# Move the ray
execute at @s run function meow2:cleave/cleave_move

# Check if the ray hit a -Creeper- a block
# execute as @s[tag=hitEntity] at @s run function meow2:cleave/cleave_hit

# Check if the ray hit a block that isnt air
execute as @s[tag=hitBlock] at @s run function meow2:cleave/cleave_hit

# Destroy the ray (very important!)
kill @s
