---
title: Scatter Point Series
page_title: Scatter Point Series
description: Check our &quot;Scatter Point Series&quot; documentation article for RadChart for UWP control.
slug: radchart-cartesianchart-series-skatter-scatterpointseries
tags: scatter,point,series
published: True
position: 0
---

# Scatter Point Series

## Overview

The **ScatterPointSeries** are represented on the chart as not connected data points presented by an arbitrary Template. Each scatter data point has X and Y values which make the position of the data point in the data source and its location on the plot area unrelated. For example the third data point in the data source may appear before the first data point when plotted. There are also scatter line and scatter area series which behave in the exact same way with the only (visual) difference that the points define a line and area respectively.

![Scatter Point Series](images/ScatterPointSeries.png)

## Properties

>**ScatterPointSeries** class inherits from the **CartesianSeries** class -
[See the inherited properties]({%slug radchart-series-cartesianbase%}).

* **DataPoints**: Gets the collection of data points associated with the series.
* **XValueBinding**: Gets or sets the binding that will be used to fill the **XValue** of **ScatterDataPoint** members of the **DataPoints** collection.
* **YValueBinding**: Gets or sets the binding that will be used to fill the **YValue** of **ScatterDataPoint** members of the **DataPoints** collection.

## Example

Here's an example of how to implement a RadCartesianChart with the ScatterPoint Series.


1. First, create a class for the sample data.

		public class Data
		{
		    public double XValue { get; set; }
		
		    public double YValue { get; set; }
		}

1. Then, create the sample data.

		List<Data> sampleData = new List<Data>();
		sampleData.Add(new Data() { XValue = 2, YValue = 3 });
		sampleData.Add(new Data() { XValue = 3, YValue = 4 });
		sampleData.Add(new Data() { XValue = 4, YValue = 5 });
		sampleData.Add(new Data() { XValue = 5, YValue = 6 });
		sampleData.Add(new Data() { XValue = 6, YValue = 5 });
		sampleData.Add(new Data() { XValue = 7, YValue = 4 });
		sampleData.Add(new Data() { XValue = 8, YValue = 3 });
		sampleData.Add(new Data() { XValue = 9, YValue = 4 });
		sampleData.Add(new Data() { XValue = 10, YValue = 5 });
		sampleData.Add(new Data() { XValue = 11, YValue = 4 });
		sampleData.Add(new Data() { XValue = 12, YValue = 3 });
		sampleData.Add(new Data() { XValue = 13, YValue = 2 });
		sampleData.Add(new Data() { XValue = 14, YValue = 1 });
		
		this.scatterPointSeries.DataContext = sampleData;

1. Finally, create a chart using XAML.
		
		<telerikChart:RadCartesianChart x:Name="scatterPointSeries">
		    <telerikChart:RadCartesianChart.VerticalAxis>
		        <telerikChart:LinearAxis/>
		    </telerikChart:RadCartesianChart.VerticalAxis>
		    <telerikChart:RadCartesianChart.HorizontalAxis>
		        <telerikChart:LinearAxis/>
		    </telerikChart:RadCartesianChart.HorizontalAxis>
		
		    <telerikChart:ScatterPointSeries ItemsSource="{Binding}">
		        <telerikChart:ScatterPointSeries.XValueBinding>
		            <telerikChart:PropertyNameDataPointBinding PropertyName="XValue"/>
		        </telerikChart:ScatterPointSeries.XValueBinding>
		        <telerikChart:ScatterPointSeries.YValueBinding>
		            <telerikChart:PropertyNameDataPointBinding PropertyName="YValue"/>
		        </telerikChart:ScatterPointSeries.YValueBinding>
		    </telerikChart:ScatterPointSeries>
		</telerikChart:RadCartesianChart>