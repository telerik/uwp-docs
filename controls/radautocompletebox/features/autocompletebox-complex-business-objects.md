---
title: Binding to Complex Business Objects
page_title: Binding to Complex Business Objects
description: Binding to Complex Business Objects
slug: autocompletebox-complex-business-objects
tags: binding,to,complex,business,objects
published: True
position: 0
---

# Binding to Complex Business Objects

Besides using a collection of strings as a source for filtered items, RadAutoCompleteBox supports displaying more complex item templates that visualize multiple properties of a custom business object. RadAutoCompleteBox exposes the **DisplayMemberPath**, **FilterMemberPath** and **FilterMemberProvider** properties which are used in this context.
      

> **DisplayMemberPath** property should be set to *true* whenever the developer uses a custom business object in order to display suggested items. It is also necessary in the absence of a **FilterMemberPath** property for correctly filtering the suggested items.

## Using the DisplayMemberPath Property

The **DisplayMemberPath** property gets or sets a string that represents the name of the property of a single business object from the ItemsSource collection. That property will be used to display in the suggested items of the drop-down control.
        
A simple scenario that demonstrates the usage of the DisplayMemberPath property is shown below:

	<telerikInput:RadAutoCompleteBox DisplayMemberPath="Name"/>

## Using the FilterMemberPath Property

The **FilterMemberPath** property gets or sets a string that represents the name of the property of a single business object from the ItemsSource collection that will be used to filter the object according to the current user input in a **RadAutoCompleteBox**. A simple scenario that demonstrates the usage of the FilterMemberPath property is shown below.

Suppose you have the following C# class:

	public class Street
	{
	    public string Name
	    {
	        get;
	        set;
	    }
	
	    public string State
	    {
	        get;
	        set;
	    }
	
	    public string Country
	    {
	        get;
	        set;
	    }
	
	    public string City
	    {
	        get;
	        set;
	    }
	}

and you use instances of the public class Street to bind the **ItemsSource** property of **RadAutoCompleteBox**. Now you have to set the **FilterMemberPath** property to the name of the property which value we would like to use when filtering items:

	<telerikInput:RadAutoCompleteBox x:Name="radAutoCompleteBox" FilterMemberPath="Name"/>

As the user types, all Street instances will be filtered based on the user input and the value which is returned by the **Name** property defined by the **Street** class.

> When the **FilterMemberPath** property is not set, the **RadAutoCompleteBox** control gets the **DisplayMemberPath** property content for filtering the objects.

## Using the FilterMemberProvider Property

The **FilterMemberProvider** gets or sets a delegate called for each object from the **ItemsSource** collection. The delegate provides the key which will be used when deciding whether the object is a valid suggestion according to the current user input. The FilterMemberProvider property cannot be set in XAML. The property provides the possibility for more complex filter keys, composed from a couple of properties on the source object.

The following code snippet demonstrates how a custom filter key provider for the Name property of the **Street** class mentioned above can be defined:

	this.radAutoCompleteBox.FilterMemberProvider = (object item) =>
	{
	    return (item as Street).Name + " St.";
	};

# See Also

 * [Filter Modes]({%slug autocompletebox-filtermode%})
 * [Filtering Items with Web Service ]({%slug autocompletebox-webservice-support%})
 * [Inline Filtered Items Display]({%slug autocompletebox-inline-filtered-items%})
