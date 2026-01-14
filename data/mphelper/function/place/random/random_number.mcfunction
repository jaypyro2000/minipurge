#Copyright JayPyro2000 2025. All Rights Reserved.

# !! To use make sure random range is set in storage minipurge:variables !!
$execute store result storage minipurge:variables random_number int 1 run random value $(random_low)..$(random_high)
return run data get storage minipurge:variables random_number 1

