---
title: Text Filter Descriptor
page_title: Text Filter Descriptor
description: Text Filter Descriptor
slug: datagrid-filtering-textfilterdescriptor
tags: text,filter,descriptor
published: True
position: 2
---

# Text Filter Descriptor

>TextFilterDescriptor is a descriptor which filters by property of *System.String* data type.

## Properties:

* **PropertyName**: Gets or sets the name of the property that is used to retrieve the value to filter by.
* **Operator**: Gets or sets the TextOperator value that defines how the Value member is compared with each value from the items source.
* **Value**: Gets or sets the value used in the comparisons. This is the right operand of the comparison.
* **IsCaseSensitive**: Gets or sets a value that determines whether the text comparisons will be case-sensitive. Default value is true.

To use TextFilterDescriptor you need to add its instance to the RadDataGrid.FilterDescriptors collection and
to set its **PropertyName** property to associate it with the property from your ViewModel.
Then through the **Operator** and **Value** properties you need to
set the filter condition and the value to compare. You can also take advantage of the **IsCaseSensitive** property
to determine if the text comparisons will be case-sensitive or not.

Now, we will show a simple example where we will filter by the Country property and the condition will be our objects to start with "BR" (case-insensitive):

	<telerikGrid:RadDataGrid Width="300" VerticalAlignment="Center" x:Name="grid"> 
	    <telerikGrid:RadDataGrid.FilterDescriptors>
	        <telerikGrid:TextFilterDescriptor PropertyName="Country"
	                                Operator="StartsWith"
	                                IsCaseSensitive="False" 
	                                Value="BR"/>
	    </telerikGrid:RadDataGrid.FilterDescriptors>
	</telerikGrid:RadDataGrid>

Here we create sample data and set it as ItemsSource of our DataGrid:

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

Where *CustomData* class defines our objects:

	public class CustomData
	{
	    public string Country { get; set; }
	
	    public string City { get; set; }
	}

The first picture shows our RadDataGrid before passing the filter and the second after filtering:

![TextFilterDescriptor example](images/TextFilterDescriptorExample.png)