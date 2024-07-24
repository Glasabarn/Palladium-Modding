summon minecraft:area_effect_cloud ~ ~ ~ {Duration: 1, Tags: [dismantle_ray]}


execute anchored eyes rotated as @s run tp @e[tag=dismantle_ray,limit=1,sort=nearest] ^ ^ ^ ~ ~


execute as @e[tag=dismantle_ray,limit=1,sort=nearest] run function meow2:dismantle/dismantle_process
