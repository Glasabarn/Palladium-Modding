
scoreboard players add .SpatialDisplay Heroes.Space_Time_Manipulation.Spatial.Range 1

tp @s ^ ^ ^0.1

execute if score .SpatialDisplay Heroes.Space_Time_Manipulation.Spatial.Range <= @s Heroes.Space_Time_Manipulation.Spatial.Max positioned ^ ^ ^0.1 rotated ~ ~ if block ~ ~ ~ #heroes:block_pass run function heroes:powers/spatial_teleport