---
title: Use the CellContentTemplateSelector Property
page_title: Use the CellContentTemplateSelector Property
description: Check our &quot;Use the CellContentTemplateSelector Property&quot; documentation article for RadDataGrid for UWP control.
slug: datagrid-columns-howto-usecellcontenttemplateselectorproperty
tags: use,the,cellcontenttemplateselector,property
published: True
position: 4
---

# Use the CellContentTemplateSelector Property

This article demonstrates how to use the CellContentTemplateSelector property.

The following example shows pictures of flags. Some of the flags do not have pictures so we will take advantage of the CellContentTemplateSelector
property to handle this case with an appropriate DataTemplate.

![Template Column Cell Content Template Selector Property](images/TemplateColumnCellContentTemplateSelectorProperty.png)

For this example we will need a custom class which inherits from the *DataTemplateSelector* and also override the *SelectTemplateCore* method which returns an object of type DataTemplate:

	public class CustomDataTemplateSelector : DataTemplateSelector
	{
	    public DataTemplate ImageTemplate { get; set; }
	
	    public DataTemplate NoImageFoundTemplate { get; set; }
	
	    protected override Windows.UI.Xaml.DataTemplate SelectTemplateCore(object item, Windows.UI.Xaml.DependencyObject container)
	    {
	        if ((item as CustomObject).Flag == null)
	        {
	            return this.NoImageFoundTemplate;
	        }
	        else
	        {
	            return this.ImageTemplate;
	        }
	    }
	}

Our logic is pretty simple. When there is an available picture, it will be displayed and when there is not an available picture, a proper message will be displayed.

Then we will define the CustomDataTemplateSelector in our DataGrid resources and use it as a StaticResource when setting the CellContentTemplateSelector property:

	<telerikGrid:RadDataGrid x:Name="grid" AutoGenerateColumns="False" VerticalAlignment="Center">
	    <telerikGrid:RadDataGrid.Resources>
	        <local:CustomDataTemplateSelector x:Key="CustomDataTemplateSelector">
	            <local:CustomDataTemplateSelector.ImageTemplate>
	                <DataTemplate>
	                    <StackPanel>
	                        <Image Source="{Binding Flag}" Stretch="UniformToFill" Width="100" Height="100" />
	                    </StackPanel>
	                </DataTemplate>
	            </local:CustomDataTemplateSelector.ImageTemplate>
	            <local:CustomDataTemplateSelector.NoImageFoundTemplate>
	                <DataTemplate>
	                    <TextBlock Text="No Image Found" FontSize="16" FontStyle="Italic"
	                       Foreground="Red" HorizontalAlignment="Center" />
	                </DataTemplate>
	            </local:CustomDataTemplateSelector.NoImageFoundTemplate>
	        </local:CustomDataTemplateSelector>
	    </telerikGrid:RadDataGrid.Resources>
	
	    <telerikGrid:RadDataGrid.Columns>
	        <telerikGrid:DataGridTemplateColumn Header="Country">
	            <telerikGrid:DataGridTemplateColumn.CellContentTemplate>
	                <DataTemplate>
	                    <TextBlock Text="{Binding Country}" HorizontalAlignment="Center" VerticalAlignment="Center"/>
	                </DataTemplate>
	            </telerikGrid:DataGridTemplateColumn.CellContentTemplate>
	        </telerikGrid:DataGridTemplateColumn>
	
	        <telerikGrid:DataGridTemplateColumn Header="Flag" CellContentTemplateSelector="{StaticResource CustomDataTemplateSelector}">
	
	        </telerikGrid:DataGridTemplateColumn>
	    </telerikGrid:RadDataGrid.Columns>
	</telerikGrid:RadDataGrid>

Here we pass data to our DataGrid:

	List<CustomObject> list = new List<CustomObject>();
	list.Add(new CustomObject { Country = "Germany", Flag = new BitmapImage(new Uri("ms-appx:///Germany.png", UriKind.Absolute)) });
	list.Add(new CustomObject { Country = "England", Flag = null });
	list.Add(new CustomObject { Country = "Mexico", Flag = new BitmapImage(new Uri("ms-appx:///Mexico.png", UriKind.Absolute)) });
	list.Add(new CustomObject { Country = "Kenya", Flag = null });
	list.Add(new CustomObject { Country = "South-Africa", Flag = new BitmapImage(new Uri("ms-appx:///South-Africa.png", UriKind.Absolute)) });
	this.grid.ItemsSource = list;

Where *CustomObject* is our custom class that defines each object:

	public class CustomObject
	{
	    public string Country { get; set; }
	
	    public BitmapImage Flag { get; set; }
	}