---
title: Composite Filter Descriptor
page_title: Composite Filter Descriptor
description: Check our &quot;Composite Filter Descriptor&quot; documentation article for RadDataGrid for UWP control.
slug: datagrid-filtering-compositefilterdescriptor
tags: composite,filter,descriptor
published: True
position: 6
---

# Composite Filter Descriptor

>The CompositeFilterDescriptor represents a special FilterDescriptorBase that stores an arbitrary number of other Descriptors instances.
 The logical AND or OR operator is applied upon all composed filters to determine the result of the PassesFilter routine.

Now, we will show a simple example where we will create two NumericalFilterDescriptors and apply them both using the CompositeFilterDescriptor. In this case the condition we are filtering by is that the value of the CityPopulation property should be greater than 20 000 and less than 1 000 000. Both conditions should be passed as the Operator we are using is *And*.

	<telerikGrid:RadDataGrid Width="350" VerticalAlignment="Center" x:Name="grid">
	    <telerikGrid:RadDataGrid.FilterDescriptors>
	        <telerikGrid:CompositeFilterDescriptor Operator="And">
	            <telerikGrid:CompositeFilterDescriptor.Descriptors>
	                <telerikGrid:NumericalFilterDescriptor PropertyName="CityPopulation"
	                                       Operator="IsGreaterThan"
	                                       Value="20000"/>
	                <telerikGrid:NumericalFilterDescriptor PropertyName="CityPopulation"
	                                       Operator="IsLessThan"
	                                       Value="1000000"/>
	            </telerikGrid:CompositeFilterDescriptor.Descriptors>
	        </telerikGrid:CompositeFilterDescriptor>
	    </telerikGrid:RadDataGrid.FilterDescriptors>
	</telerikGrid:RadDataGrid>

Here we create sample data and set it as ItemsSource of our DataGrid:

	List<CustomData> data = new List<CustomData>
	{
	    new CustomData { Country = "Brazil", City = "Caxias do Sul", CityPopulation = 450000 },
	    new CustomData { Country = "Brazil", City = "Fortaleza", CityPopulation = 2500000 },
	    new CustomData { Country = "Spain", City = "Malaga", CityPopulation = 569000 },
	    new CustomData { Country = "Bulgaria", City = "Koynare", CityPopulation = 5000 },
	    new CustomData { Country = "Spain", City = "Valencia", CityPopulation = 810000 },
	    new CustomData { Country = "Ghana", City = "Kade", CityPopulation = 16000 },
	    new CustomData { Country = "Brazil", City = "Porto Alegre", CityPopulation = 1510000 },
	    new CustomData { Country = "Bulgaria", City = "Byala Slatina", CityPopulation = 11000 },
	    new CustomData { Country = "Brazil", City = "Joinville", CityPopulation = 515000 },
	};
	this.grid.ItemsSource = data;

Where *CustomData* class defines our objects:

	public class CustomData
	{
	    public string Country { get; set; }
	
	    public string City { get; set; }
	
	    public double CityPopulation { get; set; }
	}

The first picture shows our RadDataGrid before passing the filter and the second after filtering:

![CompositeFilterDescriptor example](images/CompositeFilterDescriptorExample.png)