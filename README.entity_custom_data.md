# Entity Custom Data - Document
# LINKS
**[LICENSE](#license-bsd-2-clause)**
[how-to-use-in-your-datapack](#use-in-your-datapack)
Using: **[READ_FIRST](#expressions)** [get](#get) [getpath](#getpath) [merge](#merge) [modify.merge](#modify---merge) [modify.set](#modify---set--append--prepend) [modify.append](#modify---set--append--prepend) [modify.prepend](#modify---set--append--prepend) [modify.insert](#modify---insert) [remove](#remove)
[Configuares](#configuares)

------------------------------------------------------------------------


# Auther
### [RedstoneOre@modrinth.com](https://modrinth.com/user/RedstoneOre)
### [RedstoneOre@github.com](https://github.com/RedstoneOre)
## LICENSE: BSD-2-Clause
> File [`LICENSE`](LICENSE)

------------------------------------------------------------------------


# Configuares

### Clear Data of Dead Entities
1. Count of entities to check every time `scoreboard players set delete_check.count_p_1_time entity_custom_data.config`
2. Time delay between every 2 times(Unit:*tick*) `scoreboard players set delete_check.count_p_1_time entity_custom_data.config`
------------------------------------------------------------------------


# Expressions
#### the argument format will been expressed in this format:`<(name):(type)>`
| Name Of Type  | Description                  | Format                                                                               |
|--------------:|------------------------------|--------------------------------------------------------------------------------------|
| DataFrom      | the data from a existed path | String: `[ block <x> <y> <z> \| entity <selector> \| storage <name> ] <path:string>` |
| DataPath      | express a data               | One of the following format: `{value:<value:object>}` `{from:<path:DataFrom>}`       |
| string        | normal string                | /                                                                                    |
| int           | normal int value             | /                                                                                    |
| object{}      | nbt object                   | `{...}`                                                                              |

------------------------------------------------------------------------


# Tip Links

### tip.string_espace
If a string have this tip,you should espace the input(espace double quotes).
Like if you want to express `'components."minecraft:block_state"'`,
you should input `'\\"components.\\\\\\"minecraft:block_state\\\\\\"\\"'`,
instead of `'components."minecraft:block_state"'`
* But if the string exludes spaces and quots,you can just use `"ThisFormat"`
* if you want to input **with out espacing**,see [tip.special_usage](#tipspecial_usage)

### tip.no_string
you cannot set the value to a string with spaces and quots,
if you want to use it,see [tip.special_usage](#tipspecial_usage)

------------------------------------------------------------------------


# Usages
## Get
#### Command Line:
```mcfunction
function entity_custom_data:get.[print|run|save] {path:{val: <path:string>}}
```
#### Requires:
> Runner:(The target)
> Tip: **save_position_path:**[tip.fullpath](#tipfullpath)
#### Result:
Same as `data get ... (The value)`
> If you chose `entity_custom_data:get.print`,the nearest player can receive the data
> If you chose `entity_custom_data:get.save`,the data will been saved in `storage entity_custom_data:result get-save`

------------------------------------------------------------------------
## Merge
#### Command Line:
```mcfunction
function entity_custom_data:merge {data: <data:object{}>}
```
#### Requires:
> Runner:(The target)
#### Result:
Same as `data merge ... (The value)`

------------------------------------------------------------------------
## Modify - Merge
#### Command Line:
```mcfunction
function entity_custom_data:modify.merge {data: <data:DataPath>,path:{val: <path:string>}}
```
#### Requires:
> Runner:(The target)
#### Result:
Same as `data modify ... (The path) merge value (The value)`

------------------------------------------------------------------------
## Modify - \[Set / Append / Prepend]
#### Command Line:
```mcfunction
function entity_custom_data:modify.[set/append/prepend] {data: <data:DataPath>,path:{val: <path:string>}
```
#### Requires:
> Runner:(The target)
#### Result:
Same as `data modify ... (The path) [set/append/prepend] value (The value)`

------------------------------------------------------------------------
## Modify - Insert
#### Command Line:
```mcfunction
function entity_custom_data:modify.insert {idx: <index:int>,data: <data:DataPath>,path:{val: <path:string>}}
```
#### Requires:
> Runner:(The target)
#### Result:
Same as `data modify ... (The path) insert (The index) value (The value)`

------------------------------------------------------------------------
## Remove
#### Command Line:
```mcfunction
function entity_custom_data:remove {path:{val: <path:string>}}
```
#### Requires:
> Runner:(The target)
#### Result:
Same as `data remove ... (The value)`

------------------------------------------------------------------------


# Use In Your Datapack
+ KEEP THE FILE `README.entity_custom_data.md` and `LICENSE`(you can rename it to `LICENSE.entity_custom_data.md`) while using this datapack
+ Because of the limit of Minecraft,you need to copy the contents in namespace `entity_custom_data` to your datapack and merge the function tags into your datapack
+ If you want to use a newer version,you can just replace the namespace folder `entity_custom_data`(follow `/UPGRADE.md` if it exists)


### [return to the top](#entity-custom-data---document)
