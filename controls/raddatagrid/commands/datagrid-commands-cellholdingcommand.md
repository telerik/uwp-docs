---
title: CellHolding Command
page_title: CellHolding Command
description: CellHolding Command
slug: datagrid-commands-cellholdingcommand
tags: cellholding,command
published: True
position: 4
---

# CellHolding Command

Handles the Hold gesture on a grid cell, that is, the intersection of a data row and a column.
The default implementation will attempt execute CellFlyoutAction command for the cell specified.
The execution parameter is of type *CellHoldingContext* which exposes the following properties:

* **HoldingState**: Gets the *HoldingState* reported from Holding event.
* **CellInfo**: Gets the *DataGridCellInfo* instance this cell is associated with, giving access to its column and data item.

The following example first creates a class that inherits from the *DataGridCommand* and then adds it to the RadDataGrid.Commands collection.

	public class CustomCellHoldingCommand : DataGridCommand
	{
	    public CustomCellHoldingCommand()
	    {
	        this.Id = CommandId.CellTap;
	    }
	
	    public override bool CanExecute(object parameter)
	    {
	        var context = parameter as CellHoldingContext;
	        // put your custom logic here
	        return true;
	    }
	
	    public override void Execute(object parameter)
	    {
	        var context = parameter as CellHoldingContext;
	        // put your custom logic here               
	    }
	}

Here is the XAML declaration:

	<grid:RadDataGrid>
	    <grid:RadDataGrid.Commands>
	        <local:CustomCellHoldingCommand/>
	    </grid:RadDataGrid.Commands>
	</grid:RadDataGrid>
