---
title: GenerateColumn Command
page_title: GenerateColumn Command
description: GenerateColumn Command
slug: datagrid-commands-generatecolumncommand
tags: generatecolumn,command
published: True
position: 7
---

# GenerateColumn Command


If you want to customize the logic for automatic generation of grid columns, the GenerateColumn command provides an entry point for external code. The default implementation will generate a *DataGridTextColumn* instance for each of the public properties in the underlying data item type. The execution parameter is of type **GenerateColumnContext**, which exposes the following properties:

* **Result**: Gets or sets the DataGridColumn instance that should be associated with the specified property.
If no instance is provided (null) the current property will be skipped and no column will be associated with it.
* **PropertyName**: Gets the name of the property for which a column instance is needed.

The following example creates a class that inherits from the *DataGridCommand* one and then adds it to the **RadDataGrid.Commands** collection.

	public class CustomGenerateColumnCommand : DataGridCommand
	{
	    public CustomGenerateColumnCommand()
	    {
	        this.Id = CommandId.GenerateColumn;
	    }
	
	    public override bool CanExecute(object parameter)
	    {
	        var context = parameter as GenerateColumnContext;
	        // put your custom logic here
	        return true;
	    }
	
	    public override void Execute(object parameter)
	    {
	        var context = parameter as GenerateColumnContext;
	        // put your custom logic here               
	    }
	}

Here is the XAML declaration:

	<grid:RadDataGrid>
	    <grid:RadDataGrid.Commands>
	        <local:CustomGenerateColumnCommand/>
	    </grid:RadDataGrid.Commands>
	</grid:RadDataGrid>