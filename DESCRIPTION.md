# Entity Custom Data
## A library to enable datapacks add custom data to any entity
## See `README.md` to get more information!
#### **Command Format**
```mcfunction
execute as <entity> run function entity_custom_data:<operation> <arguments>
```
+ See `README.md` or `/function entity_custom_data:control`

#### **Support Operations**
`get.print` `get.run` `get.save` `merge` `modify.append` `modify.insert` `modify.merge` `modify.prepend` `modify.set` `remove`
+ Support for 2⁶² entities is allowed to have custom data.
+ Run **_`/function entity_custom_data:control`_** to open the _control panel_ for help (Release1.1+)

#### **Auto Delete**
+ Auto delete the data of the dead entity(exlude player)
+ Controlable deleting check

#### **Uninstall**
```mcfunction
function uninstall:entity_custom_data.<mode>
```
Choose *DELETE(special require)* or save(just use one command) the data