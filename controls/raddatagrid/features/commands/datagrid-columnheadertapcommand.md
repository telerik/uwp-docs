---
title: ColumnHeaderTap Command
page_title: ColumnHeaderTap Command
description: Check our &quot;ColumnHeaderTap Command&quot; documentation article for RadDataGrid for UWP control.
slug: datagrid-commands-columnheadertapcommand
tags: columnheadertap,command
published: True
position: 2
---

# ColumnHeaderTap Command



## 

Handles the Tap gesture over a ColumnHeader.
The default implementation of this command will try to add a new Sort Descriptor to the SortDescriptors collection of the grid,
thus changing the current sort order of the data.
The execution parameter is of type *ColumnHeaderTapContext* which exposes the following properties:

* **Column**: Gets or sets the *DataGridColumn* instance which header has been tapped.
* **CanSort**: Determines whether the user is allowed to sort the data through the UI (as specified by the RadDataGrid.UserSortMode property).
* **IsMultipleSortAllowed**: Determines whether any existing sort will be cleared before new sort is applied (if any).

This example creates a class that inherits from the *DataGridCommand* and then adds it to the **RadDataGrid.Commands** collection

	public class CustomColumnHeaderTapCommand : DataGridCommand
	{
	    public CustomColumnHeaderTapCommand()
	    {
	        this.Id = CommandId.ColumnHeaderTap;
	    }
	
	    public override bool CanExecute(object parameter)
	    {
	        var context = parameter as ColumnHeaderTapContext;
	        // put your custom logic here
	        return true;
	    }
	
	    public override void Execute(object parameter)
	    {
	        var context = parameter as ColumnHeaderTapContext;
	        // put your custom logic here               
	    }
	}

Here is the XAML declaration:

	<grid:RadDataGrid>
	    <grid:RadDataGrid.Commands>
	        <local:CustomColumnHeaderTapCommand/>
	    </grid:RadDataGrid.Commands>
	</grid:RadDataGrid>