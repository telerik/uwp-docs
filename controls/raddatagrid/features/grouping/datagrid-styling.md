---
title: Styling
page_title: Styling
description: Check our &quot;Styling&quot; documentation article for RadDataGrid for UWP control.
slug: datagrid-grouping-styling
tags: styling
published: True
position: 3
---

# Styling

RadDataGrid provides several approaches to customize its Group Headers.

You can choose whether the Group Headers will be frozen or scrollable through the RadDataGrid.GroupHeaderDisplayMode property.

You can change their appearance through the following properties:

* **GroupHeaderStyle**:  
the TargetType should be *gridPrimitives:DataGridGroupHeader*  
where: `xmlns:gridPrimitives="using:Telerik.UI.Xaml.Controls.Grid.Primitives"`

		<grid:RadDataGrid.GroupHeaderStyle>
		    <Style TargetType="gridPrimitives:DataGridGroupHeader">
		        <Setter Property="FontSize" Value="20"/>
		        <Setter Property="FontStyle" Value="Italic"/>
		        <Setter Property="Foreground" Value="Red"/>
		    </Style>
		</grid:RadDataGrid.GroupHeaderStyle>
* **GroupHeaderStyleSelector**
* **GroupHeaderTemplate**

		<grid:RadDataGrid.GroupHeaderTemplate>
		    <DataTemplate>
		        <StackPanel>
		            <TextBlock Text="Group :"/>
		            <TextBlock Text="{Binding Group.Key}"/>
		        </StackPanel>
		    </DataTemplate>
		</grid:RadDataGrid.GroupHeaderTemplate>
* **GroupHeaderTemplateSelector**

Let's walk through an example that shows a full setup of a DataGrid using the GroupHeaderTemplateSelector and GroupHeaderStyleSelector properties.

## Example

For the example we need a DataGrid with data and a GroupDescriptor in order to have groups. Then we need to create two custom classes - one that inherits from the *DataTemplateSelector* and one that inherits from the *StyleSelector*.

This example exposes two properties for each class that will hold two possible Style objects and DataTemplate objects. Styles will be applied to the DataGridGroupHeaders depending on custom logic. We will use different styles and templates depending on whether the GroupHeader is *expanded* or *collapsed*.


1. Create our custom DataTemplateSelector class:

		public class CustomDataTemplateSelector : DataTemplateSelector
		{
		    public DataTemplate ExpandedTemplate { get; set; }
		
		    public DataTemplate CollapsedTemplate { get; set; }
		
		    protected override DataTemplate SelectTemplateCore(object item, Windows.UI.Xaml.DependencyObject container)
		    {
		        if ((item as GroupHeaderContext).IsExpanded == true)
		        {
		            return this.ExpandedTemplate;
		        }
		        else
		        {
		            return this.CollapsedTemplate;
		        }
		    }
		}

1. In the Page Resources, define the class and set the values of the two properties:

		<local:CustomDataTemplateSelector x:Key="TemplateSelector">
		    <local:CustomDataTemplateSelector.ExpandedTemplate>
		        <DataTemplate>
		            <TextBlock Text="{Binding Group.Key}" Foreground="#21A6FF" 
		                       FontStyle="Italic" 
		                       Margin="115,0,0,0" VerticalAlignment="Center"/>
		        </DataTemplate>
		    </local:CustomDataTemplateSelector.ExpandedTemplate>
		    <local:CustomDataTemplateSelector.CollapsedTemplate>
		        <DataTemplate>
		            <TextBlock Text="{Binding Group.Key}" Foreground="#FFDE5B" 
		                       FontStyle="Italic" 
		                       Margin="115,0,0,0" VerticalAlignment="Center"/>
		        </DataTemplate>
		    </local:CustomDataTemplateSelector.CollapsedTemplate>
		</local:CustomDataTemplateSelector>

1. Create the custom StyleSelector class:

		public class CustomStyleSelector : StyleSelector
		{
		    public Style ExpandedStyle { get; set; }
		
		    public Style CollapsedStyle { get; set; }
		
		    protected override Style SelectStyleCore(object item, DependencyObject container)
		    {
		        if ((item as GroupHeaderContext).IsExpanded == true)
		        {
		            return this.ExpandedStyle;
		        }
		        else
		        {
		            return this.CollapsedStyle;
		        }
		    }
		}

1. In the Page Resources, define the class and set the values of the two properties:

		<local:CustomStyleSelector x:Key="StyleSelector">
		    <local:CustomStyleSelector.ExpandedStyle>
		        <Style TargetType="gridPrimitives:DataGridGroupHeader">
		            <Setter Property="FontSize" Value="20"/>
		        </Style>
		    </local:CustomStyleSelector.ExpandedStyle>
		    <local:CustomStyleSelector.CollapsedStyle>
		        <Style TargetType="gridPrimitives:DataGridGroupHeader">
		            <Setter Property="FontSize" Value="12"/>
		        </Style>
		    </local:CustomStyleSelector.CollapsedStyle>
		</local:CustomStyleSelector>

1. Define a DataGrid setting its GroupHeaderTemplateSelector and GroupHeaderStyleSelector properties using the StaticResources we created. Also, create a PropertyGroupDescriptor which will group by the "Country" property:

		<grid:RadDataGrid Width="600" Height="460" x:Name="grid"
		                  GroupHeaderTemplateSelector="{StaticResource TemplateSelector}"
		                  GroupHeaderStyleSelector="{StaticResource StyleSelector}">
		    <grid:RadDataGrid.GroupDescriptors>
		        <grid:PropertyGroupDescriptor PropertyName="Country"/>
		    </grid:RadDataGrid.GroupDescriptors>
		</grid:RadDataGrid>

1. In the main page, set custom data to the DataGrid:

		List<CustomData> data = new List<CustomData>
		{
		    new CustomData { Country = "Brazil", City = "Caxias do Sul" },
		    new CustomData { Country = "Ghana", City = "Wa" },
		    new CustomData { Country = "Brazil", City = "Fortaleza" },
		    new CustomData { Country = "Italy", City = "Florence" },
		    new CustomData { Country = "France", City = "Bordeaux" },
		    new CustomData { Country = "Bulgaria", City = "Vratsa" },
		    new CustomData { Country = "Spain", City = "Las Palmas" },
		    new CustomData { Country = "France", City = "Le Mans" },
		    new CustomData { Country = "Brazil", City = "Santos" },
		    new CustomData { Country = "Ghana", City = "Ho" },
		    new CustomData { Country = "Spain", City = "Malaga" },
		    new CustomData { Country = "France", City = "Marseille" },
		    new CustomData { Country = "Bulgaria", City = "Koynare" },
		    new CustomData { Country = "Spain", City = "Valencia" },
		    new CustomData { Country = "Ghana", City = "Kade" },
		    new CustomData { Country = "Brazil", City = "Porto Alegre" },
		    new CustomData { Country = "Bulgaria", City = "Byala Slatina" },
		    new CustomData { Country = "Italy", City = "Naples" },
		    new CustomData { Country = "Brazil", City = "Joinville" },
		};
		this.grid.ItemsSource = data;

	Where *CustomData* is a class that defines the objects:

		public class CustomData
		{
		    public string City { get; set; }
		
		    public string Country { get; set; }
		}

And this is the result:

![Group Header Styling Example](images/GroupHeaderStylingExample.png)
