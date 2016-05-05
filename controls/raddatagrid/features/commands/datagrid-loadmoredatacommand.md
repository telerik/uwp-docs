---
title: LoadMoreData Command
page_title: LoadMoreData Command
description: LoadMoreData Command
slug: datagrid-commands-loadmoredatacommand
tags: loadmoredata,command
published: True
position: 11
---

# LoadMoreData Command

This command is associated with the [data virtualization]({%slug raddatagrid-datavirtualization%}) in **RadDataGrid**. It is executed when more rows are added through the **Load More Rows** button or through scrolling to the bottom.

**LoadMoreDataContext** exposes the following property:

* **BatchSize** (?uint): Gets or sets the size of the batch.

This example creates a class that inherits from the **DataGridCommand** and then adds it to the **RadDataGrid.Commands** collection.

	public class LoadMoreDataCommand : DataGridCommand
	{
	    public LoadMoreDataCommand()
	    {
	        this.Id = CommandId.LoadMoreData;
	    }
	
	    public override bool CanExecute(object parameter)
	    {
	        return true;
	    }
	
	    public override void Execute(object parameter)
	    {
	        var context = parameter as LoadMoreDataContext;
	        this.Owner.CommandService.ExecuteDefaultCommand(CommandId.LoadMoreData, context);
	    }
	}

Here is the XAML declaration:

	<telerikGrid:RadDataGrid>
	    <telerikGrid:RadDataGrid.Commands>
	        <local:LoadMoreDataCommand/>
	    </telerikGrid:RadDataGrid.Commands>
	</telerikGrid:RadDataGrid>