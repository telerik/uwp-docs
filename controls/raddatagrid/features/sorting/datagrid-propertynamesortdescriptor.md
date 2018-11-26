---
title: PropertySortDescriptor
page_title: PropertySortDescriptor
description: PropertySortDescriptor
slug: datagrid-sorting-propertynamesortdescriptor
tags: propertysortdescriptor
published: True
position: 1
---

# PropertySortDescriptor

You can sort the data in a DataGrid by a property value from the class that defines your objects.
This can be achieved with a PropertySortDescriptor and setting its PropertyName property.

* **PropertyName** (string): Gets or sets the name of the property that is used to retrieve the key to sort by.

>You can easily choose the sorting order - Ascending or Descending - using the SortOrder property.

>To apply multiple sorting, you need to enable it through the `RadDataGrid.UserSortMode = "Multiple"` and add two or more sort descriptors.

The following example will show how to sort data by property:

![Property Sort Descriptor Example](images/PropertySortDescriptorExample.png)

First, define a DataGrid instance in XAML with a PropertySortDescriptor which points to a property from the model through its PropertName property:

	<grid:RadDataGrid Width="600" Height="460" x:Name="grid">
	    <grid:RadDataGrid.SortDescriptors>
	        <dataCore:PropertySortDescriptor PropertyName="Country"/>
	    </grid:RadDataGrid.SortDescriptors>
	</grid:RadDataGrid>

Be aware that you need to define the correct namespace for PropertySortDescriptor in your .xaml file, which is Telerik.Data.Core

	xmlns:grid="using:Telerik.UI.Xaml.Controls.Grid"
	xmlns:dataCore="using:Telerik.Data.Core"

Then create sample data and add it to the datacontext of the DataGrid:

	List<CustomData> data = new List<CustomData>
	{
		new CustomData { Country = "Brazil", City = "Caxias do Sul"},
		new CustomData { Country = "Ghana", City = "Wa"},
		new CustomData { Country = "Brazil", City = "Fortaleza"},
		new CustomData { Country = "Italy", City = "Florence" },
		new CustomData { Country = "France", City = "Bordeaux" }, 
		new CustomData { Country = "Bulgaria", City = "Vratsa"},
		new CustomData { Country = "Spain", City = "Las Palmas"},
		new CustomData { Country = "France", City = "Le Mans" },
		new CustomData { Country = "Brazil", City = "Santos"},
		new CustomData { Country = "Ghana", City = "Ho"},
		new CustomData { Country = "Spain", City = "Malaga"},
		new CustomData { Country = "France", City = "Marseille" },
		new CustomData { Country = "Bulgaria", City = "Koynare" },
		new CustomData { Country = "Spain", City = "Valencia"},
		new CustomData { Country = "Ghana", City = "Kade" },
		new CustomData { Country = "Brazil", City = "Porto Alegre" }, 
		new CustomData { Country = "Bulgaria", City = "Byala Slatina"},
		new CustomData { Country = "Italy", City = "Naples" },
		new CustomData { Country = "Brazil", City = "Joinville" }, 
	};
	this.grid.ItemsSource = data;

*CustomData* is a custom class which defines our objects:

	public class CustomData
	{
		public string City { get; set; }
		public string Country { get; set; }
	}
