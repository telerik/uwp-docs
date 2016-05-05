---
title: Boolean Filter Descriptor
page_title: Boolean Filter Descriptor
description: Boolean Filter Descriptor
slug: datagrid-filtering-booleanfilterdescriptor
tags: boolean,filter,descriptor
published: True
position: 3
---

# Boolean Filter Descriptor

>BooleanFilterDescriptor is a Descriptor which filters by property of System.Boolean data type.

## Properties:

* **PropertyName**: Gets or sets the name of the property that is used to retrieve the value to filter by.
* **Value**: Gets or sets the value used in the comparisons. This is the right operand of the comparison.

Now, we will show a simple example where we will filter by the PassesFilter property and the condition will be its value to be *true*:

	<telerikGrid:RadDataGrid Width="300" VerticalAlignment="Center" x:Name="grid">
	    <telerikGrid:RadDataGrid.FilterDescriptors>
	        <telerikGrid:BooleanFilterDescriptor PropertyName="PassesFilter" Value="true"/>
	    </telerikGrid:RadDataGrid.FilterDescriptors>
	</telerikGrid:RadDataGrid>

Here we create sample data and set it as ItemsSource of our DataGrid:

	List<CustomData> data = new List<CustomData>
	{
	    new CustomData { Country = "Brazil", City = "Caxias do Sul", },
	    new CustomData { Country = "Brazil", City = "Fortaleza", },
	    new CustomData { Country = "Spain", City = "Malaga", PassesFilter = true },
	    new CustomData { Country = "Bulgaria", City = "Koynare" },
	    new CustomData { Country = "Spain", City = "Valencia", PassesFilter = true },
	    new CustomData { Country = "Ghana", City = "Kade" },
	    new CustomData { Country = "Brazil", City = "Porto Alegre" },
	    new CustomData { Country = "Bulgaria", City = "Byala Slatina" },
	    new CustomData { Country = "Brazil", City = "Joinville" },
	};
	this.grid.ItemsSource = data;

Where *CustomData* class defines our objects:

	public class CustomData
	{
	    public string Country { get; set; }
	
	    public string City { get; set; }
	
	    public bool PassesFilter { get; set; }
	}

The first picture shows our RadDataGrid before passing the filter and the second after filtering:

![BooleanFilterDescriptor example](images/BooleanFilterDescriptorExample.png)