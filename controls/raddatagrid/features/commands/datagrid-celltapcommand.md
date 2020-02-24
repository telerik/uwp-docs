---
title: CellTap Command
page_title: CellTap Command
description: Check our &quot;CellTap Command&quot; documentation article for RadDataGrid for UWP control.
slug: datagrid-commands-celltapcommand
tags: celltap,command
published: True
position: 4
---

# CellTap Command

Handles the Tap gesture over a grid cell, that is, the intersection of a data row and a column.
The default implementation will attempt to change the current selection,
based on the *RadDataGrid.SelectionMode* and *RadDataGrid.SelectionUnit* values.
The execution parameter is of type DataGridCellInfo which exposes the following properties:

* **Column**: Gets the *DataGridColumn* instance this cell is associated with.
* **Item**: Gets the underlying data row (ViewModel instance) this cell is associated with.

The following example first creates a class that inherits from the *DataGridCommand* and then adds it to the RadDataGrid.Commands collection.

	public class CustomCellTapCommand : DataGridCommand
	{
	    public CustomCellTapCommand()
	    {
	        this.Id = CommandId.CellTap;
	    }
	
	    public override bool CanExecute(object parameter)
	    {
	        var context = parameter as DataGridCellInfo;
	        // put your custom logic here
	        return true;
	    }
	
	    public override void Execute(object parameter)
	    {
	        var context = parameter as DataGridCellInfo;
	        // put your custom logic here               
	    }
	}

Here is the XAML declaration:

	<grid:RadDataGrid>
	    <grid:RadDataGrid.Commands>
	        <local:CustomCellTapCommand/>
	    </grid:RadDataGrid.Commands>
	</grid:RadDataGrid>
