---
title: Label Definitions
page_title: Label Definitions
description: Check our &quot;Label Definitions&quot; documentation article for RadChart for UWP control.
slug: radchart-labels-chartserieslabeldefinition
tags: label,definitions
published: True
position: 0
---

# Label Definitions

If you wish to customize the default labels of the chart series, you could use Label Definition.

>To see labels in the series you have to set ShowLabels="True"

> More than one Label Definition can be set on each series. You have to add ChartSeriesLabelDefinition item to the LabelDefinitions collection of the chart series (see the Examle below).

## Properties

All the properties of a ChartSeriesLabelDefinition are listed here:

* **Binding**: Gets or sets the **DataPointBinding** instance that will retrieve the content of each label.
* **Format**: Gets or sets the string used to format the label content, using the **String.Format** method.
* **Margin**: Gets or sets the offset of each label from the four box edges.
* **HorizontalAlignment**: Gets or sets the horizontal alignment of each label relative to the **DataPoint** it is associated with.
* **VerticalAlignment**: Gets or sets the vertical alignmentof each label relative to the **DataPoint** it is associated with.
* **Template**: Gets or sets the **DataTemplate** instance that may be used to define custom labels.
* **TemplateSelector**: Gets or sets the **DataTemplateSelector** instance that may be used to provide context-specific data templates, depending on the provided DataPoint.
* **DefaultVisualStyle**: Gets or sets the **Style** instance that defines the default appearance of the labels. The **Style** should arget the **TextBlock** type.
* **[Strategy]({%slug radchart-labels-chartserieslabelstrategy%})**: Gets or sets a custom **ChartSeriesLabelStrategy** instance that may be used to override the labels' appearance, content and layout.

## Example

This example shows how to bind the label's content to a custom property from your business model.

Two Label Definitions are added for each data item.

![Chart Label Definiton Bar Series](images/ChartLabelDefinitonBarSeries.png)

	<telerik:RadCartesianChart  x:Name="myChart" Width="300" Height="300">
	    <telerik:RadCartesianChart.VerticalAxis>
	        <telerik:LinearAxis/>
	    </telerik:RadCartesianChart.VerticalAxis>
	
	    <telerik:RadCartesianChart.HorizontalAxis>
	        <telerik:CategoricalAxis/>
	    </telerik:RadCartesianChart.HorizontalAxis>
	
	    <telerik:BarSeries ShowLabels="True">
	        <telerik:BarSeries.LabelDefinitions>
	            <telerik:ChartSeriesLabelDefinition HorizontalAlignment="Center" VerticalAlignment="Center">
	                <telerik:ChartSeriesLabelDefinition.Template>
	                    <DataTemplate>
	                        <TextBlock Text="{Binding DataItem.LabelProperty}" Foreground="Red"/>
	                    </DataTemplate>
	                </telerik:ChartSeriesLabelDefinition.Template>
	            </telerik:ChartSeriesLabelDefinition>
	
	            <telerik:ChartSeriesLabelDefinition HorizontalAlignment="Center" VerticalAlignment="Top">
	                <telerik:ChartSeriesLabelDefinition.Template>
	                    <DataTemplate>
	                        <TextBlock Text="{Binding DataItem.Value}" Foreground="Yellow"/>
	                    </DataTemplate>
	                </telerik:ChartSeriesLabelDefinition.Template>
	            </telerik:ChartSeriesLabelDefinition>
	        </telerik:BarSeries.LabelDefinitions>
	
	        <telerik:BarSeries.CategoryBinding>
	            <telerik:PropertyNameDataPointBinding PropertyName="Category"/>
	        </telerik:BarSeries.CategoryBinding>
	        <telerik:BarSeries.ValueBinding>
	            <telerik:PropertyNameDataPointBinding PropertyName="Value"/>
	        </telerik:BarSeries.ValueBinding>
	    </telerik:BarSeries>
	</telerik:RadCartesianChart>

The data:

	public class Data
	{
	    public string Category { get; set; }
	
	    public double Value { get; set; }
	
	    public string LabelProperty { get; set; }
	}
	
	public List<Data> CreateData()
	{
	    List<Data> collection = new List<Data>();
	    collection.Add(new Data { Category = "Apples", Value = 10, LabelProperty = "First Point" });
	    collection.Add(new Data { Category = "Oranges", Value = 8, LabelProperty = "Second Point" });
	    collection.Add(new Data { Category = "Pineapples", Value = 21, LabelProperty = "Third Point" });
	    return collection;
	}

Set the series ItemsSource:
	
	this.myChart.Series[0].ItemsSource = CreateData();

