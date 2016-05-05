---
title: DelegateGroupDescriptor
page_title: DelegateGroupDescriptor
description: DelegateGroupDescriptor
slug: datagrid-grouping-delegategroupdescriptor
tags: delegategroupdescriptor
published: True
position: 2
---

# DelegateGroupDescriptor

In this article we are going to present the **DelegateGroupDescriptor** and show how to use it.

>The difference between the **DelegateGroupDescriptor** and the **[PropertyGroupDescriptor]({%slug raddagagrid-grouping-propertygroupdescriptor%})** is that **DelegateGroupDescriptor** groups data by a custom Key while the PropertyGroupDescriptor groups by a defined Key which is a property from our model.

You have to set the following property of the DelegateGroupDescriptor:

* **KeyLookup**: Gets or sets the IKeyLookup instance that is used to retrieve the group key for each data item.

>You can easily sort the groups in ascending or descending order using the **SortOrder** property.

You have to create a class that implements the **IKeyLookup** interface which will return the Key you want to group by. Then you need to add the DelegateGroupDescriptor to the RadDataGrid.GroupDescriptors collection and set its KeyLookUp property.

## Example

Let's see how this actually works. In the following example we have a data grid with cities and countries and we will group the grid items by the first letter of cities.

![Delegate Group Descriptor](images/DelegateGroupDescriptor.png)

First, create a custom class that implements the IKeyLookup interface where the context we receive is our object:

	public class CustomIKeyLookup : IKeyLookup
	{
	    public object GetKey(object instance)
	    {
	        return (instance as DataClass).City[0];
	    }
	}

And set the KeyLookup property to this class:

	<grid:RadDataGrid Width="600" Height="460" x:Name="grid">
	    <grid:RadDataGrid.GroupDescriptors>
	        <grid:DelegateGroupDescriptor>
	            <grid:DelegateGroupDescriptor.KeyLookup>
	                <local:CustomIKeyLookup/>
	            </grid:DelegateGroupDescriptor.KeyLookup>
	        </grid:DelegateGroupDescriptor>
	    </grid:RadDataGrid.GroupDescriptors>
	</grid:RadDataGrid>

As you can see, in this case the key we return is the first letter from each City.

Next, create sample data and set it to the DataContext of our DataGrid:

	List<DataClass> data = new List<DataClass>
	{
		new DataClass { Country = "Brazil", City = "Caxias do Sul"},
		new DataClass { Country = "Ghana", City = "Wa"},
		new DataClass { Country = "Brazil", City = "Fortaleza"},
		new DataClass { Country = "Italy", City = "Florence" },
		new DataClass { Country = "France", City = "Bordeaux" }, 
		new DataClass { Country = "Bulgaria", City = "Vratsa"},
		new DataClass { Country = "Spain", City = "Las Palmas"},
		new DataClass { Country = "France", City = "Le Mans" },
		new DataClass { Country = "Brazil", City = "Santos"},
		new DataClass { Country = "Ghana", City = "Ho"},
		new DataClass { Country = "Spain", City = "Malaga"},
		new DataClass { Country = "France", City = "Marseille" },
		new DataClass { Country = "Bulgaria", City = "Koynare" },
		new DataClass { Country = "Spain", City = "Valencia"},
		new DataClass { Country = "Ghana", City = "Kade" },
		new DataClass { Country = "Brazil", City = "Porto Alegre" }, 
		new DataClass { Country = "Bulgaria", City = "Byala Slatina"},
		new DataClass { Country = "Italy", City = "Naples" },
		new DataClass { Country = "Brazil", City = "Joinville" }, 
	};

	this.grid.ItemsSource = data;

*DataClass* is a custom class defining our objects:


{{region DataClass}}
	public class DataClass
	{
		public string City { get; set; }
		public string Country { get; set; }
	}