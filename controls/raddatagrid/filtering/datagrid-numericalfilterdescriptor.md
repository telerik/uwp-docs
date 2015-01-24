---
title: Numerical Filter Descriptor
page_title: Numerical Filter Descriptor
description: Numerical Filter Descriptor
slug: datagrid-filtering-numericalfilterdescriptor
tags: numerical,filter,descriptor
published: True
position: 4
---

# Numerical Filter Descriptor

>Represents a Descriptor which filters by property of numerical data type.

* **PropertyName**: Gets or sets the name of the property that is used to retrieve the value to filter by.
* **Value**: Gets or sets the value used in the comparisons. This is the right operand of the comparison.
* **Operator**: Gets or sets the NumericalOperator value that defines the boolean logc behind the left and right operand comparison.

Now, we will show a simple example where we will filter by the CityPopulation property and the condition will be its value to be less than 20 000 :

	<telerikGrid:RadDataGrid Width="350" VerticalAlignment="Center" x:Name="grid">
	    <telerikGrid:RadDataGrid.FilterDescriptors>
	        <telerikGrid:NumericalFilterDescriptor PropertyName="CityPopulation"
	                                               Operator="IsLessThan"
	                                               Value="20000"/>
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

![NumericalFilterDescriptor example](images/NumericalFilterDescriptorExample.png)