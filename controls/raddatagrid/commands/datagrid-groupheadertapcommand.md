---
title: GroupHeaderTap Command
page_title: GroupHeaderTap Command
description: GroupHeaderTap Command
slug: datagrid-commands-groupheadertapcommand
tags: groupheadertap,command
published: True
position: 3
---

# GroupHeaderTap Command

Handles the Tap gesture over a GroupHeader.
The default implementation will toggle (Expand/Collapse) the underlying IDataGroup implementation.
The execution parameter is of type *GroupHeaderContext* which exposes the following properties:

* **Level**: Gets the zero-based level (depth) of the group within the current data view.
* **Descriptor**: Gets the *GroupDescriptorBase* - an instance that defines the grouping level for the group header that has been tapped.
* **IDataGroup**: Gets the *IDataGroup* implementation that represents the Data group abstraction.
* **IsExpanded**: Gets or sets the current IsExpanded state of the associated data group.

This example creates a class that inherits from the *DataGridCommand* and then adds it to the RadDataGrid.Commands collection.

	public class CustomGroupHeaderTapCommand : DataGridCommand
	{
	    public CustomGroupHeaderTapCommand()
	    {
	        this.Id = CommandId.GroupHeaderTap;
	    }
	
	    public override bool CanExecute(object parameter)
	    {
	        var context = parameter as GroupHeaderContext;
	        // put your custom logic here
	        return true;
	    }
	
	    public override void Execute(object parameter)
	    {
	        var context = parameter as GroupHeaderContext;
	        // put your custom logic here               
	    }
	}

Here is the XAML declaration:

	<grid:RadDataGrid>
	    <grid:RadDataGrid.Commands>
	        <local:CustomGroupHeaderTapCommand/>
	    </grid:RadDataGrid.Commands>
	</grid:RadDataGrid>