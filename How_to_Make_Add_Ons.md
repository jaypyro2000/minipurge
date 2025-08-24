# How to make Minipurge Add-Ons

Minipurge is super customizable and allows other creators to tap into the main functionality to utilize its timing, add to it or change it.

Any loaded data pack can be registered to Minipurges "namespace registry" and minipurge will recognize it and call its functions.

To register your namespace have load.json call a function that runs:

```
function mphelper:register/register_namespace {namespace:your_custom_namespace}
```

### If your your_custom_namespace is registered, Minipurge will call:

Before the mid structre is loaded:
```
    execute run function your_custom_namespace/mpboot with storage minipurge:variables
```

Right after players spawn in:
    execute run function your_custom_namespace/mpsetup with storage minipurge:variables

When war is initiated (Pvp is enabled):
    execute run function your_custom_namespace/mpwar with storage minipurge:variables

When the border starts shrinking:
    execute run function your_custom_namespace/mpshrink with storage minipurge:variables

When the endgame is initiated (5 minutes before the border stops shrinking):
    execute run function your_custom_namespace/mpendgame with storage minipurge:variables

When minipurge:reset is called:
    execute run function your_custom_namespace/mpreset with storage minipurge:variables

When minipurge:help is called:
    execute run function your_custom_namespace/mphelp with storage minipurge:variables

### Built in functions

There are many functions that minipurge has so that various tasks can be done easily. Please make use of them.

function mphelper:surface {xpos:<x_coordinate>, zpos:<z_coordinate>}

will get 


