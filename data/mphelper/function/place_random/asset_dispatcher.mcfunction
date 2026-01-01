$data modify storage minipurge:variables asset_name set value "$(asset_list)[$(random_index)]"

execute run function mphelper:place_random/asset_dispatcher2 with storage minipurge:variables