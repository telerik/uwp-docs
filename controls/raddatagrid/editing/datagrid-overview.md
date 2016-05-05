---
title: Overview
page_title: Overview
description: Overview
slug: datagrid-editing-overview
tags: overview
published: True
position: 0
---

# Overview

Except displaying sets of data, Telerik's RadDataGrid also allows you to execute an [Edit operation]({%slug datagrid-editing-editoperation%}).

## Data Validation

RadDataGrid also supports Data Validation out of the box.

>Besides using this functionality, you are able to control it via the several commands that provide an entry point for the key-points of the action:

* [BeginEdit Command]({%slug datagrid-commands-editingcommands-begineditcommand%})
* [CancelEdit Command]({%slug datagrid-commands-editingcommands-canceleditcommand%})
* [CommitEdit Command]({%slug datagrid-commands-editingcommands-commiteditcommand%})

## Edit Mode

RadDataGrid supports several edit modes through the **UserEditMode** property. The possible values are:

* Inline: User can edit the values using the inline row editor.
* External: External control is used for editing.
* None: Editing is not allowed.

## External Editor

Our default implementation of external editor uses a [RadDataForm control]({% slug dataform-overview %}). Using the **ExternalEditor** property you can set your custom external editor. It has to implement the **IGridExternalEditor** interface, that requires the following members:

### Methods

* void **BeginEdit**(object *item*, RadDataGrid *owner*): Called when BeginEdit command is executed.
* void **CancelEdit**(): This method is called when **CancelEdit** command is executed. Make sure that the **EditCanceled** event handler is called here. You can also call it from your editor to cancel the editing.
* void **CommitEdit**(): This method is called when **CommitEdit** command is executed. Make sure that the  **EditCommitted** event handler is called here. You can also call it from your editor to commit the changes.

### Events

* event EventHandler **EditCanceled**: Used to notify the grid that the editing has been canceled. Make sure that this event handler is called in the **CancelEdit()** implementation.
* event EventHandler **EditCommitted**: Used to notify the grid that the changes are ready to be committed. Make sure that this event handler is called in the **CommitEdit()** implementation.

### Properties

* **Position** (ExternalEditorPosition): Gets or sets the position at which the custom editor will be visualized. The possible values are { *Right*, *Left* }