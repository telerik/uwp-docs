---
title: PropertyAggregateDescriptor
page_title: PropertyAggregateDescriptor
description: PropertyAggregateDescriptor
slug: datagrid-aggregates-propertyaggregatedescriptor
tags: propertyaggregatedescriptor
published: True
position: 1
---

# PropertyAggregateDescriptor

## Properties

* **PropertyName**: Gets or sets the name of the property that is used to compute the aggregate value.
* **Function**: Gets or sets the KnownFunction value to be applied to this aggregate.

Here is an example of how to add a PropertyAggregateDescriptor to a RadDataGrid. It will take the values from a Points property of the Model and the result will be the Average value.

	<telerikGrid:RadDataGrid>
	    <telerikGrid:RadDataGrid.AggregateDescriptors>
	        <telerikCore:PropertyAggregateDescriptor PropertyName="Points" Function="Average"/>
	    </telerikGrid:RadDataGrid.AggregateDescriptors>
	</telerikGrid:RadDataGrid>
You will need to define the telerikCore namespace like this

	xmlns:telerikGrid="using:Telerik.UI.Xaml.Controls.Grid"
    xmlns:telerikCore="using:Telerik.Data.Core"
 
>You can get the aggregate value/s through the GetAggregateValue and GetAggregateValues methods of the [IDataView]({%slug raddatagrid-dataview%}) interface.

