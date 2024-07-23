summon minecraft:area_effect_cloud ~ ~ ~ {Duration: 1, Tags: [cleave_ray]}

execute anchored eyes rotated as @s run tp @e[tag=cleave_ray,limit=1,sort=nearest] ^ ^ ^ ~ ~

execute as @e[tag=cleave_ray,limit=1,sort=nearest] run function meow2:cleave/cleave_process
