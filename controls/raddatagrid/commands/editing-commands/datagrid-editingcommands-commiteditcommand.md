---
title: CommitEdit Command
page_title: CommitEdit Command
description: CommitEdit Command
slug: datagrid-commands-editingcommands-commiteditcommand
tags: commitedit,command
published: True
position: 2
---

# CommitEdit Command

Provides an entry point just before the editing is commited.
The execution parameter is of type *EditContext* that exposes the following properties:

* **CellInfo**: Gets the cell info associated with the operation.
* **TriggerAction**: Gets the SourceTriggerAction value that triggered the operation.
* **Parameter**: Gets an optional parameter holding additional information associated with the operation.

This example creates a class that inherits from the *DataGridCommand* and then adds it to the RadDataGrid.Commands collection

	public class CustomCommitEditCommand : DataGridCommand
	{
	    public CustomCommitEditCommand()
	    {
	        this.Id = CommandId.CommitEdit;
	    }
	
	    public override bool CanExecute(object parameter)
	    {
	        return true;
	    }
	
	    public override void Execute(object parameter)
	    {
	        var context = parameter as EditContext;
	
	        // Executes the default implementation of this command
	        this.Owner.CommandService.ExecuteDefaultCommand(CommandId.CommitEdit, context);
	    }
	}

Here is the XAML declaration:

	<telerikGrid:RadDataGrid UserEditMode="Inline">
	    <telerikGrid:RadDataGrid.Commands>
	        <local:CustomCommitEditCommand/>
	    </telerikGrid:RadDataGrid.Commands>
	</telerikGrid:RadDataGrid>