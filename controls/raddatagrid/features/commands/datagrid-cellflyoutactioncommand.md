---
title: CellFlyoutAction Command
page_title: CellFlyoutAction Command
description: Check our &quot;CellFlyoutAction Command&quot; documentation article for RadDataGrid for UWP control.
slug: datagrid-cellflyoutaction
tags: cell, flyout, action, command
published: True
position: 4
---

# CellFlyoutAction Command

Handles the contents and the appearance of  a grid cell, when cell flyout is initiated either through hover or hold.
The default implementation will open flyout displaying cell contents.

The execution parameter is of type CellFlyoutActionContext which exposes the following properties:

* **CellInfo**: Gets the *DataGridCellInfo* instance this cell is associated with, giving access to its column and data item.
* **FlyoutTemplate**: Gets or sets the *DataTemplate* that can be used instead of default cell template to display cell content.
* **IsOpen**: Gets or sets whether the flyout is open.

The following example first creates a class that inherits from the *DataGridCommand* and then adds it to the RadDataGrid.Commands collection.

	public class CustomCellFlyoutActionCommand : DataGridCommand
	{
	    public CustomCellFlyoutActionCommand()
	    {
	        this.Id = CommandId.CellFlyoutAction;
	    }
	
	    public override bool CanExecute(object parameter)
	    {
	        var context = parameter as CellFlyoutActionContext;
	        // put your custom logic here
	        return true;
	    }
	
	    public override void Execute(object parameter)
	    {
	        var context = parameter as CellFlyoutActionContext;
	        // put your custom logic here               
	    }
	}

Here is the XAML declaration:

	<grid:RadDataGrid>
	    <grid:RadDataGrid.Commands>
	        <local:CustomCellFlyoutActionCommand/>
	    </grid:RadDataGrid.Commands>
	</grid:RadDataGrid>
