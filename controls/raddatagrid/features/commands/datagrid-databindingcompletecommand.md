---
title: DataBindingComplete Command
page_title: DataBindingComplete Command
description: Check our &quot;DataBindingComplete Command&quot; documentation article for RadDataGrid for UWP control.
slug: datagrid-commands-databindingcompletecommand
tags: databindingcomplete,command
published: True
position: 8
---

# DataBindingComplete Command

Provides a MVVM-friendly implementation of the RadDataGrid.DataBindingComplete event. This event is useful when additional logic is required over the already computed data View. Since RadDataGrid provides multi-threaded implementation of all the in-memory data operations like Grouping, Sorting and Filtering, this event is the safe entry point which grants that all the data-related operations are successfully completed and the data iew may be accessed and manipulated. The execution parameter is of type *DataBindingCompleteEventArgs* which expose the following properties:

* **DataView**: Gets the *Telerik.UI.Xaml.Controls.Grid.IDataView* implementation that allows for traversing and/or manipulating the already computed data View.
* **ChangeFlags**: Gets the flags that triggered the re-evaluation of the underlying raw data.
The three flags are *DataChangeFlags.Group*, *DataChangeFlags.Sort* and *DataChangeFlags.Filter*.

The following example first creates a class that inherits from the *DataGridCommand* and then adds it to the **RadDataGrid.Commands** collection.

	public class CustomDataBindingCompleteCommand : DataGridCommand
	{
	    public CustomDataBindingCompleteCommand()
	    {
	        this.Id = CommandId.DataBindingComplete;
	    }
	
	    public override bool CanExecute(object parameter)
	    {
	        var context = parameter as DataBindingCompleteEventArgs;
	        // put your custom logic here
	        return true;
	    }
	
	    public override void Execute(object parameter)
	    {
	        var context = parameter as DataBindingCompleteEventArgs;
	        // put your custom logic here               
	    }
	}

Here is the XAML declaration:

	<grid:RadDataGrid>
	    <grid:RadDataGrid.Commands>
	        <local:CustomDataBindingCompleteCommand/>
	    </grid:RadDataGrid.Commands>
	</grid:RadDataGrid>