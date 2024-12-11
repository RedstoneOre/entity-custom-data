# Entity Custom Data
## A library to enable datapacks add custom data to any entity
#### **Command Format**
```mcfunction
execute as <entity> run function entity_custom_data:<operation> <arguments>
```

#### **Support Operations**
`get.print` `get.run` `get.save` `merge` `modify.append` `modify.insert` `modify.merge` `modify.prepend` `modify.set` `remove`
+ Support for 2⁶² entities is allowed to have custom data.

#### **Auto Delete**
+ Auto delete the data of the dead entity(exlude player)
+ Controlable deleting check

#### **Uninstall**
```mcfunction
function uninstall:entity_custom_data.<mode>
```
Choose *DELETE(special require)* or save(just use one command) the data