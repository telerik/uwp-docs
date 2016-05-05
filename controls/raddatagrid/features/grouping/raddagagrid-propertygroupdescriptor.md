---
title: PropertyGroupDescriptor
page_title: PropertyGroupDescriptor
description: PropertyGroupDescriptor
slug: raddagagrid-grouping-propertygroupdescriptor
tags: propertygroupdescriptor
published: True
position: 1
---

# PropertyGroupDescriptor

The **PropertyGroupDescriptor** is used to group the data in a DataGrid by property from the class that defines your objects.

To use the PropertyGroupDescriptor you have to set its property PropertyName.

* **PropertyName** (string): Gets or sets the name of the property that is used to retrieve the key to group by.

>You can easily sort the groups in ascending or descending order using the **SortOrder** property.

## Example

Let’s walk through an example of how to group data by property.

![Property Group Descriptor](images/PropertyGroupDescriptor.png)

>You can expand/collapse groups by a click/tap on the group header.

First, define a DataGrid instance in XAML with a PropertyGroupDescriptor which points to a property from our model through its PropertyName property:

	<grid:RadDataGrid Width="600" Height="460" x:Name="grid">
	    <grid:RadDataGrid.GroupDescriptors>
	        <grid:PropertyGroupDescriptor PropertyName="Country" />
	        </grid:RadDataGrid.GroupDescriptors>
	</grid:RadDataGrid>

Next, create sample data and add it to the DataContext of our DataGrid:

	List<Data> data = new List<Data>
	{
		new Data { Country = "Brazil", City = "Caxias do Sul"},
		new Data { Country = "Ghana", City = "Wa"},
		new Data { Country = "Brazil", City = "Fortaleza"},
		new Data { Country = "Italy", City = "Florence" },
		new Data { Country = "France", City = "Bordeaux" }, 
		new Data { Country = "Bulgaria", City = "Vratsa"},
		new Data { Country = "Spain", City = "Las Palmas"},
		new Data { Country = "France", City = "Le Mans" },
		new Data { Country = "Brazil", City = "Santos"},
		new Data { Country = "Ghana", City = "Ho"},
		new Data { Country = "Spain", City = "Malaga"},
		new Data { Country = "France", City = "Marseille" },
		new Data { Country = "Bulgaria", City = "Koynare" },
		new Data { Country = "Spain", City = "Valencia"},
		new Data { Country = "Ghana", City = "Kade" },
		new Data { Country = "Brazil", City = "Porto Alegre" }, 
		new Data { Country = "Bulgaria", City = "Byala Slatina"},
		new Data { Country = "Italy", City = "Naples" },
		new Data { Country = "Brazil", City = "Joinville" }, 
	};
	
	this.grid.ItemsSource = data;

*Data* is a custom class which defines our objects:

	public class Data
	{
		public string City { get; set; }
		public string Country { get; set; }
	}