---
title: Delegate Filter Descriptor
page_title: Delegate Filter Descriptor
description: Check our &quot;Delegate Filter Descriptor&quot; documentation article for RadDataGrid for UWP control.
slug: datagrid-filtering-delegatefilterdescriptor
tags: delegate,filter,descriptor
published: True
position: 1
---

# Delegate Filter Descriptor

The **DelegateFilterDescriptor** exposes the following property:

* **Filter**: Gets or sets the *IFilter* implementation used to check whether a data item passes the filter or not.

To use a DelegateFilterDescriptor you need to create a class that implements the IFilter interface which will return the Key you want to filter by.

Then you need to add a DelegateFilterDescriptor to the RadDataGrid.FilterDescriptors collection and set its Filter property.

## Example

Here's a simple example demonstrating how use a custom DelegateFilterDescriptor - we will create a grid containing countires and cities and we will filter the items by the length of the country name.

Create a custom class that implements the IFilter interface where the context we receive is our object:

	public class CustomFilter : IFilter
	{
	    public bool PassesFilter(object item)
	    {
	        if ((item as CustomData).Country.Length < 6)
	        {
	            return true;
	        }
	        else
	        {
	            return false;
	        }
	    }
	}

As you can see, in this case the key we filter by is the number of letters of each Country. If a Country matches the condition to contain less than 6 letters - it passes the filter.

Then we set it to the Filter property of the DelegateFilterDescriptor:

	<grid:RadDataGrid x:Name="grid" Width="300" VerticalAlignment="Center">
	    <grid:RadDataGrid.FilterDescriptors>
	        <grid:DelegateFilterDescriptor>
	            <grid:DelegateFilterDescriptor.Filter>
	                <local:CustomFilter/>
	            </grid:DelegateFilterDescriptor.Filter>
	        </grid:DelegateFilterDescriptor>
	    </grid:RadDataGrid.FilterDescriptors>
	</grid:RadDataGrid>

Create sample data and set it as ItemsSource of our the DataGrid:

	List<CustomData> data = new List<CustomData>
	{
	    new CustomData { Country = "Brazil", City = "Caxias do Sul" },
	    new CustomData { Country = "Brazil", City = "Fortaleza" },
	    new CustomData { Country = "Spain", City = "Malaga" },
	    new CustomData { Country = "Bulgaria", City = "Koynare" },
	    new CustomData { Country = "Spain", City = "Valencia" },
	    new CustomData { Country = "Ghana", City = "Kade" },
	    new CustomData { Country = "Brazil", City = "Porto Alegre" },
	    new CustomData { Country = "Bulgaria", City = "Byala Slatina" },
	    new CustomData { Country = "Brazil", City = "Joinville" },
	};
	this.grid.ItemsSource = data;

*CustomData* is a custom class defining our objects:

	public class CustomData
	{
	    public string Country { get; set; }
	
	    public string City { get; set; }
	}

And this is the result - the first picture shows the RadDataGrid before passing the filter, and the second - after filtering:

![Delegate Filter Descriptor Example](images/DelegateFilterDescriptorExample.png)
