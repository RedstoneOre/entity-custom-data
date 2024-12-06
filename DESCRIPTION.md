# Entity Custom Data
## A library to enable datapacks add custom data to any entity
#### **Command Format**
```mcfunction
execute as <entity> run function entity_custom_data:<operation> <arguments>
```

#### **Support Operations**
`get.print` `get.run` `get.save` `merge` `modify.append` `modify.insert` `modify.merge` `modify.prepend` `modify.set` `remove`
+ Support $2^{62}$ entities have custom data

#### **Auto Delete**
+ Auto delete the data of the dead entity(exlude player)
+ Controlable deleting check

#### **Uninstall**
Choose *DELETE(special require)* or save(just use one command) the data