---
title: CellPointerOver Command
page_title: CellPointerOver Command
description: CellPointerOver Command
slug: datagrid-commands-cellpointerovercommand
tags: cellpointerover,command
published: True
position: 6
---

# CellPointerOver Command

Handles the PointerOver event over a grid cell. The default implementation will attempt to display the Hover UI for either the cell itself or for the owning grid row (depends on the RadDataGrid.SelectionUnit value). The execution parameter is of type *DataGridCellInfo*. For more information about this type see the [CellTap command]({%slug datagrid-commands-celltapcommand%}).

The following example creates a class that inherits from the *DataGridCommand* class and then in XAML adds an instance of this class to the **RadDataGrid.Commands** collection.

	public class CustomCellPointerOverCommand : DataGridCommand
	{
	    public CustomCellPointerOverCommand()
	    {
	        this.Id = CommandId.CellPointerOver;
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
	        <local:CustomCellPointerOverCommand/>
	    </grid:RadDataGrid.Commands>
	</grid:RadDataGrid>