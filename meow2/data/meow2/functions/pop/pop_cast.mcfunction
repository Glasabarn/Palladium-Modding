summon minecraft:area_effect_cloud ~ ~ ~ {Duration: 1, Tags: [pop_ray]}


execute anchored eyes rotated as @s run tp @e[tag=pop_ray,limit=1,sort=nearest] ^ ^ ^ ~ ~


execute as @e[tag=pop_ray,limit=1,sort=nearest] run function meow2:pop/pop_process