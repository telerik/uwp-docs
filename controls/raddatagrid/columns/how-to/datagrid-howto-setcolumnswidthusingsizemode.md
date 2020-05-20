---
title: Set a Column's Width
page_title: Set a Column's Width
description: Check our &quot;Set a Column's Width&quot; documentation article for RadDataGrid for UWP control.
slug: datagrid-columns-howto-setcolumnswidthusingsizemode
tags: set,a,column's,width
published: True
position: 0
---

# Set a Column's Width

This article describes how to use the SizeMode and Width properties.

The width of each column in a RadDataGrid depends on its **SizeMode** and **Width** properties. We’ll walk through an example that shows how the size of each column changes depending on the value of the SizeMode property.

**SizeMode** property is of enum type *DataGridColumnSizeMode* and could be set to any of the following values:

* Fixed: The column has a fixed width as defined by its Width property.
* Stretch: The column is stretched to the available width proportionally to its desired width. This is the default SizeMode value.
* Auto: The columns is sized to its desired width. That is the maximum desired width of all associated cells.

To begin this example, we set the ItemsSource of a DataGrid:

	this.grid.ItemsSource = new List<Data>
	{
		new Data { Country = "Columbia", Capital = "Bogota" },
		new Data { Country = "Germany", Capital = "Berlin" },
		new Data { Country = "Italy", Capital = "Rome" },
		new Data { Country = "France", Capital = "Paris" },
		new Data { Country = "Bulgaria", Capital = "Sofia" },
	};

Data is our custom class, that represents our objects:

	public class Data
	{
		public string Country { get; set; }
	
		public string Capital { get; set; }
	}

Here's the XAML definition:

	<telerikGrid:RadDataGrid x:Name="grid" AutoGenerateColumns="False" Width="300" VerticalAlignment="Center">
	    <telerikGrid:RadDataGrid.Columns>
	        <telerikGrid:DataGridTextColumn PropertyName="Country" Header="Country" Width="100"/>
	        <telerikGrid:DataGridTextColumn PropertyName="Capital" Header="Capital" Width="200"/>
	    </telerikGrid:RadDataGrid.Columns>
	</telerikGrid:RadDataGrid>

>The **Width** property of columns will apply only when `SizeMode="Fixed"`

1. In the first scenario we will set `SizeMode="Fixed"`:

		this.grid.Columns[0].SizeMode = DataGridColumnSizeMode.Fixed;
		this.grid.Columns[1].SizeMode = DataGridColumnSizeMode.Fixed;
	

	As you can see, the first and second columns have set widths of 100 and 200, respectively.

	![Size Mode Fixed](images/SizeModeFixed.png)

1. In the second scenario we will set `SizeMode="Stretch"`:

		this.grid.Columns[0].SizeMode = DataGridColumnSizeMode.Stretch;
		this.grid.Columns[1].SizeMode = DataGridColumnSizeMode.Stretch;
	
	In this case, the columns take all the available space proportionally. The Width property is ignored.

	![Size Mode Stretch](images/SizeModeStretch.png)

1. In the third scenario, we will set `SizeMode="Auto"`:

		this.grid.Columns[0].SizeMode = DataGridColumnSizeMode.Auto;
		this.grid.Columns[1].SizeMode = DataGridColumnSizeMode.Auto;

	In this case, the columns take only as much space as they need. The Width property is ignored.

	![Size Mode Auto](images/SizeModeAuto.png)

1. In the last scenario, we will demonstrate using three columns to fully clarify the SizeMode behavior:

		<telerikGrid:RadDataGrid x:Name="grid" AutoGenerateColumns="False" Width="400" VerticalAlignment="Center">
		    <telerikGrid:RadDataGrid.Columns>
		        <telerikGrid:DataGridTextColumn PropertyName="Country" Header="Country" SizeMode="Fixed" Width="100" />
		        <telerikGrid:DataGridTextColumn PropertyName="Capital" Header="Capital" SizeMode="Stretch" />
		        <telerikGrid:DataGridTextColumn PropertyName="Country" Header="Country" SizeMode="Fixed" Width="100" />
		    </telerikGrid:RadDataGrid.Columns>
		</telerikGrid:RadDataGrid>

	As you can see, the first and the third columns each have a fixed size of 100 and the second column takes all the available space because of `SizeMode="Stretch"`:
	
	![Size Mode Mixed](images/SizeModeMixed.png)
