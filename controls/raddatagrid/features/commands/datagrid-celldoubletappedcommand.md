---
title: CellDoubleTap Command
page_title: CellDoubleTap Command
description: Check our &quot;CellDoubleTap Command&quot; documentation article for RadDataGrid for UWP control.
slug: datagrid-commands-celldoubletappedcommand
tags: celldoubletap,command
published: True
position: 5
---

# CellDoubleTap Command

>This command is associated with the **DoubleTap** event that occurs over a cell.

Here's an example where we first create a class that inherits from the *DataGridCommand* one and then add it to the RadDataGrid.Commands collection

	public class CustomCellDoubleTapped : DataGridCommand
	{
	    public CustomCellDoubleTapped()
	    {
	        this.Id = CommandId.CellDoubleTap;
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

And the XAML declaration:

	<telerikGrid:RadDataGrid>
	    <telerikGrid:RadDataGrid.Commands>
	        <local:CustomCellDoubleTapped/>
	    </telerikGrid:RadDataGrid.Commands>
	</telerikGrid:RadDataGrid>