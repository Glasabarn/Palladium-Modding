summon minecraft:area_effect_cloud ~ ~ ~ {Duration: 1, Tags: [tele_ray]}

execute anchored eyes rotated as @s run tp @e[tag=tele_ray,limit=1,sort=nearest] ^ ^ ^ ~ ~

execute as @e[tag=tele_ray,limit=1,sort=nearest] run function meow2:telekinesis/tele_process
