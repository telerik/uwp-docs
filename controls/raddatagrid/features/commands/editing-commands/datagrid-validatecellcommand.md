---
title: ValidateCell Command
page_title: ValidateCell Command
description: Check our &quot;ValidateCell Command&quot; documentation article for RadDataGrid for UWP control.
slug: datagrid-commands-validatecellcommand
tags: validatecell,command
published: True
position: 3
---

# ValidateCell Command

Provides an entry point for validating cells content. The execution parameter is of type *ValidateCellContext* that exposes the following properties:

* **CellInfo**: Gets the cell info associated with the operation.
* **Errors**: Gets or sets the errors (if any) that occurred during the validation.

This example creates a class that inherits from the *DataGridCommand* and then adds it to the RadDataGrid.Commands collection

	public class CustomValicateCellCommand : DataGridCommand
	{
	    public CustomValicateCellCommand()
	    {
	        this.Id = CommandId.ValidateCell;
	    }
	
	    public override bool CanExecute(object parameter)
	    {
	        var context = parameter as ValidateCellContext;
	        // put your custom logic here          
	        return true;
	    }
	
	    public override void Execute(object parameter)
	    {
	        var context = parameter as ValidateCellContext;
	        // put your custom logic here             
	    }
	}

Here is the XAML declaration:

	<telerikGrid:RadDataGrid UserEditMode="Inline">
	    <telerikGrid:RadDataGrid.Commands>
	        <local:CustomValicateCellCommand/>
	    </telerikGrid:RadDataGrid.Commands>
	</telerikGrid:RadDataGrid>
