---
title: Template Column
page_title: Template Column
description: Check our &quot;Template Column&quot; documentation article for RadDataGrid for UWP control.
slug: datagrid-columns-templatecolumn
tags: template,column
published: True
position: 1
---

# Template Column

If you want to completely customize the content of the cells in a grid column you can use DataGridTemplateColumn, which uses a DataTemplate to describe the content of each associated grid cell.

## Properties

>The DataGridTemplateColumn supports **Grouping** and **Sorting** from the UI out of the box through the DataGridTemplateColumn.SortDescriptor and DataGridTemplateColumn.GroupDescriptor properties.
Programmatic grouping or sorting is not supported.

Here are the specific properties:

* **SortDescriptor** (SortDescriptorBase): Gets or sets an instance of the **SortDescriptorBase** class that defines how the column will be sorted by the user upon a Tap gesture over the column header.
* **GroupDescriptor** (GroupDescriptorBase): Gets or sets an instance of the **GroupDescriptorBase** class that defines whether and how the column can be grouped by the user using drag-and-drop operation.
* **CellContentTemplate** (DataTemplate): Gets or sets the **DataTemplate** instance that defines the appearance of each cell associated with this column.
* **[CellContentTemplateSelector]({%slug datagrid-columns-howto-usecellcontenttemplateselectorproperty%})** (DataTemplateSelector): Gets or sets a **DataTemplateSelector** instance that may be used to retrieve dynamic data templates on a per cell basis.

## Example

The following example shows how to make a **RadDataGrid** with DataGridTemplateColumns:

![Cell Content Template Property](images/CellContentTemplateProperty.png)

Here's the XAML definition. As you can see the DataTemplate of the second DataGridTemplateColumns is an image:

	<telerikGrid:RadDataGrid x:Name="grid" AutoGenerateColumns="False" VerticalAlignment="Center">
	    <telerikGrid:RadDataGrid.Columns>
	        <telerikGrid:DataGridTemplateColumn Header="Country">
	            <telerikGrid:DataGridTemplateColumn.CellContentTemplate>
	                <DataTemplate>
	                    <TextBlock Text="{Binding Country}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
	                </DataTemplate>
	            </telerikGrid:DataGridTemplateColumn.CellContentTemplate>
	        </telerikGrid:DataGridTemplateColumn>
	
	        <telerikGrid:DataGridTemplateColumn Header="Flag">
	            <telerikGrid:DataGridTemplateColumn.CellContentTemplate>
	                <DataTemplate>
	                    <StackPanel>
	                        <Image Source="{Binding Flag}" Stretch="UniformToFill" Width="100" Height="100" />
	                    </StackPanel>
	                </DataTemplate>
	            </telerikGrid:DataGridTemplateColumn.CellContentTemplate>
	        </telerikGrid:DataGridTemplateColumn>
	    </telerikGrid:RadDataGrid.Columns>
	</telerikGrid:RadDataGrid>

Here's the data:

	List<Data> list = new List<Data>();
	list.Add(new Data { Country = "Argentina", Flag = new BitmapImage(new Uri("ms-appx:///Argentina.png", UriKind.Absolute)) });
	list.Add(new Data { Country = "Brazil", Flag = new BitmapImage(new Uri("ms-appx:///Brazil.jpg", UriKind.Absolute)) });
	list.Add(new Data { Country = "China", Flag = new BitmapImage(new Uri("ms-appx:///China.jpg", UriKind.Absolute)) });
	this.grid.ItemsSource = list;

*Data* is our custom class:

	public class Data
	{
	    public string Country { get; set; }

	    public BitmapImage Flag { get; set; }
	}