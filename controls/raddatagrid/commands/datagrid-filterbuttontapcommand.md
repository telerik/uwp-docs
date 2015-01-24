---
title: FilterButtonTap Command
page_title: FilterButtonTap Command
description: FilterButtonTap Command
slug: datagrid-commands-filterbuttontapcommand
tags: filterbuttontap,command
published: True
position: 10
---

# FilterButtonTap Command

Handles the Tap gesture over a Filter Button. The default implementation will open the Filtering Flyout. 

> The FilterButtonTap command allows to easily replace the [First Filter Control]({%slug datagrid-filtering-overview%}) and [Second Filter Control]({%slug datagrid-filtering-overview%}).  Thus, you can apply a completely different UI and also associate it with a different property of the Model. [See an example.]({%slug datagrid-filtering-howto-createcustomfilteringcontrol%})

The execution parameter is of type *FilterButtonTapContext* which exposes the following properties:

* **AssociatedDescriptor**: Gets the FilterDescriptorBase instance associated with the context.
 Typically this is the PropertyFilterDescriptor already applied to the Column instance.
* **FirstFilterControl**: Gets or sets the IFilterControl control that represents the UI used to generate the first FilterDescriptorBase.
* **SecondFilterControl**: Gets or sets the IFilterControl control that represents the UI used to generate the second FilterDescriptorBase.
* **Column**: Gets the DataGridColumn instance that own the Filter Glyph Button being tapped.

This example creates a class that inherits from the *DataGridCommand* and then adds it to the RadDataGrid.Commands collection.

	public class CustomFilterButtonTapCommand : DataGridCommand
	{
	    public CustomFilterButtonTapCommand()
	    {
	        this.Id = CommandId.FilterButtonTap;
	    }
	
	    public override bool CanExecute(object parameter)
	    {
	        var context = parameter as FilterButtonTapContext;
	        // put your custom logic here
	        return true;
	    }
	
	    public override void Execute(object parameter)
	    {
	        var context = parameter as FilterButtonTapContext;
	        // put your custom logic here               
	    }
	}

Here is the XAML declaration:

	<grid:RadDataGrid>
	    <grid:RadDataGrid.Commands>
	        <local:CustomFilterButtonTapCommand/>
	    </grid:RadDataGrid.Commands>
	</grid:RadDataGrid>