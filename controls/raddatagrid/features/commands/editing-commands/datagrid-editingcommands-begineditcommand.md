---
title: BeginEdit Command
page_title: BeginEdit Command
description: Check our &quot;BeginEdit Command&quot; documentation article for RadDataGrid for UWP control.
slug: datagrid-commands-editingcommands-begineditcommand
tags: beginedit,command
published: True
position: 0
---

# BeginEdit Command

Provides an entry point just before the editing begins.
The execution parameter is of type *EditContext* that exposes the following properties:

* **CellInfo**: Gets the cell info associated with the operation.
* **TriggerAction**: Gets the SourceTriggerAction value that triggered the operation.
* **Parameter**: Gets an optional parameter holding additional information associated with the operation.

This example creates a class that inherits from the *DataGridCommand* and then adds it to the RadDataGrid.Commands collection

	public class CustomBeginEditCommand : DataGridCommand
	{
	    public CustomBeginEditCommand()
	    {
	        this.Id = CommandId.BeginEdit;
	    }
	
	    public override bool CanExecute(object parameter)
	    {
	        return true;
	    }
	
	    public override void Execute(object parameter)
	    {
	        var context = parameter as EditContext;
	
	        // Executes the default implementation of this command
	        this.Owner.CommandService.ExecuteDefaultCommand(CommandId.BeginEdit, context);
	    }
	}

Here is the XAML declaration:

	<telerikGrid:RadDataGrid>
	    <telerikGrid:RadDataGrid.Commands UserEditMode="Inline">
	        <local:CustomBeginEditCommand />
	    </telerikGrid:RadDataGrid.Commands>
	</telerikGrid:RadDataGrid>