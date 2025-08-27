# How to make Minipurge Add-Ons

Minipurge is super customizable and allows other creators to tap into the main functionality to utilize its timing, add to it or change it.

Any loaded data pack can be registered to Minipurges "namespace registry" and minipurge will recognize it and call its functions.

To register your namespace have load.json call a function that runs:

```
function mphelper:register/register_namespace {namespace:your_custom_namespace,execute_last:0|1}
```

If the execute last flag is set to 1, Minipurge will always execute your functions last. An add-on with execute last won't run with another execute last add-on. So, if you don't have a really good reason for executing your functions last, keep this flag set to 0!


### If your your_custom_namespace is registered, Minipurge will call:

Before the mid structre is loaded:
```
    execute run function your_custom_namespace/mpboot with storage minipurge:variables
```

Right after players spawn in:
```
    execute run function your_custom_namespace/mpsetup with storage minipurge:variables
```

When war is initiated (Pvp is enabled):
```
    execute run function your_custom_namespace/mpwar with storage minipurge:variables
```

When the border starts shrinking:
```
    execute run function your_custom_namespace/mpshrink with storage minipurge:variables
```

When the endgame is initiated (5 minutes before the border stops shrinking):
```
    execute run function your_custom_namespace/mpendgame with storage minipurge:variables
```

When minipurge:reset is called:
```
    execute run function your_custom_namespace/mpreset with storage minipurge:variables
```

When minipurge:help is called:
```
    execute run function your_custom_namespace/mphelp with storage minipurge:variables
```

An example minipurge add-on can be found [here.](https://github.com/jaypyro2000/example_minipurge_add_on)

## Built in functions

There are many functions that minipurge has so that various tasks can be done easily. Please make use of them.

### Surface

```
function mphelper:surface/find_surface {x_pos:<x_coordinate>, z_pos:<z_coordinate>}
```

will return the y coordinate of the surface at any x_pos,z_pos pair.

You can also call this using a score or a storage location using:

```
function mphelper:surface/surface_from_scoreboard {x_pos_score:"#player_x objective",z_pos_score:"#player_z objective"}

function mphelper:surface/surface_from_storage {x_pos_storage:"namespace:storage_location x_variable",z_pos_storage:"namespace:storage_location z_variable"}
```
### Adding Mid Structures

Minipurge randomly selects a structure from a registry of mid structures. The registry has three parts. 1) The name of the structure, located at minipurge:structure structures . 2) The height of the mid chest from the ground, located at minipurge:structure structure_heights . 3) (Not working yet) The distance a player should spawn from mid, located at minipurge:structure spawn_distances .

You can overwrite all the structures to only have specific mid structures or you can add your structures to the mix by appending them to the lists. This must be done in the mpboot stage as the structures list is cleared at the end of each round. All three storage locations must be written to for each structure!

An example of this is:
```
data modify storage minipurge:structure structures append value "mpstructure:super_awesome_structure"
data modify storage minipurge:structure structure_heights append value 12
data modify storage minipurge:structure spawn_distances append value 0
```


## Good Practices

Be careful not to overwrite existing dummy scores and storage locations of minipurge or minipurge add ons. Do this by making your "player names" or "objectives" unique and by trying not to use the minipurge:variables storage location if possible. I am in the process of putting together a list of these so that you know what to stay away from.

Clear all running functions and clear all variables when mpreset is called so that previous rounds of minipurge don't interfere with the proper functioning of the next round.

### Please do not create add-ons that copy functionality of exclusive add-ons as it hurts the long term viability of this project.

If you have any questions please reach out: jaypyro2000@gmail.com

Happy Coding!

JayPyro2000

