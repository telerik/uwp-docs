---
title: DelegateSortDescriptor
page_title: DelegateSortDescriptor
description: DelegateSortDescriptor
slug: datagrid-sorting-delegatesortdescriptor
tags: delegatesortdescriptor
published: True
position: 2
---

# DelegateSortDescriptor

>The difference between **DelegateSortDescriptor** and the **PropertySortDescriptor** is that **DelegateSortDescriptor** sorts data by a custom Key, while the PropertySortDescriptor sorts by a defined Key,
which is a property from our model.

## Properties:

* **KeyLookup**: Gets or sets the IKeyLookup instance that is used to retrieve the sort key for each data item.

>You can easily set the sorting order - Ascending or Descending using the **SortOrder** property.

To use a DelegateSortDescriptor, you need to create a class that implements the **IKeyLookup** interface which will return the Key you want to sort by. Then you need to add DelegateSortDescriptor to the RadDataGrid.SortDescriptors collection and set its KeyLookUp property.

Now, we will show a simple example:

![Delegate Sort Descriptor](images/DelegateSortDescriptor.png)

	<grid:RadDataGrid Width="600" Height="460" x:Name="Grid">
	    <grid:RadDataGrid.SortDescriptors>
	        <grid:DelegateSortDescriptor>
	            <grid:DelegateSortDescriptor.KeyLookup>
	                <local:CustomIKeyLookup/>
	            </grid:DelegateSortDescriptor.KeyLookup>
	        </grid:DelegateSortDescriptor>
	    </grid:RadDataGrid.SortDescriptors>
	</grid:RadDataGrid>

Here we create a custom class that implement the IKeyLookup interface where the context we receive is our object:

	public class CustomIKeyLookup : IKeyLookup
	{
	    public object GetKey(object instance)
	    {
	        return (instance as CustomData).City.Length;
	    }
	}

As you can see, in this case the key we return is the number of letters of each City.

Here we create sample data and set it to the datacontext of our DataGrid:

	List<CustomData> dataSource = new List<CustomData>
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

	this.Grid.ItemsSource = dataSource;

*CustomData* is a custom class defining our objects:

	public class CustomData
	{
		public string City { get; set; }
		public string Country { get; set; }
	}