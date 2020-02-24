---
title: Properties
page_title: Properties
description: Check our &quot;Properties&quot; documentation article for RadDataForm for UWP control.
slug: dataform-properties
tags: properties, raddataform
published: True
position: 7
---

# Properties

- **Item** - Gets or sets the Item that should be exposed for editing by the DataForm.
- **CommitMode** - Gets or sets the CommitMode that DataForm uses to decide when to commit the new value.
- **ValidationMode** - Gets or sets the ValidationMode which DataForm uses to decide when to validate the edited property.
- **TransactionService** - Gets the Transaction service which is used to make operations over the item. For example: Commit, Validation and etc.
- **CommandService** - Gets the CommandService used to execute DataFormCommands within the DataForm.
- **Commands** - Gets the DataFormCommand collection.
- **PropertyIterationMode** - Gets or sets a value indicating how DataForm resolves the properties of the Item(only properties declared in the Item's Type, or all properties(including derrived ones).
- **EditorProvider** - Gets or sets the EntityProvider which is used to Generate an Entity object from the current Item.
- **LayoutDefinition** - Gets or sets the DataFormLayoutDefinition which is used to arrange EntityPropertyControls in the DataForm, arrange the elements(typeEditor, label and etc) within the EntityPropertyControl and also arrange the EntityPropertyControls within each group.
- **EditorTemplateSelector** - Gets or sets a DataTemplateSelector used to select the template of each TypeEditor.
- **GroupHeaderTemplateSelector** - Gets or sets the DataTemplateSelector used to select the template of each group header.