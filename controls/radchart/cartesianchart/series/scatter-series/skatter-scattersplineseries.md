---
title: Scatter Spline Series
page_title: Scatter Spline Series
description: Check our &quot;Scatter Spline Series&quot; documentation article for RadChart for UWP control.
slug: radchart-cartesianchart-series-skatter-scattersplineseries
tags: scatter,spline,series
published: True
position: 2
---

# Scatter Spline Series

## Overview

The **ScatterSplineSeries** are represented on the chart as data points connected with smooth line segments as shown on the image below.

![Scatter Spline Series](images/ScatterSplineSeries.png)

>ScatterSplineSeries class inherits from the ScatterLineSeries class -
[See the inherited properties]({%slug radchart-cartesianchart-series-skatter-scatterlineseries%}).

## Example

Here's an example of how to implement **RadCartesianChart** with the **ScatterSplineSeries**.


1. First, create a class for the sample data.
		
		public class Data
		{
			public double Category { get; set; }
		
			public double Value { get; set; }
		}

1. Then, create the sample data.

		List<Data> sampleData = new List<Data>();
		sampleData.Add(new Data() { Category = 2, Value = 3 });
		sampleData.Add(new Data() { Category = 3, Value = 4 });
		sampleData.Add(new Data() { Category = 4, Value = 5 });
		sampleData.Add(new Data() { Category = 5, Value = 6 });
		sampleData.Add(new Data() { Category = 6, Value = 5 });
		sampleData.Add(new Data() { Category = 7, Value = 4 });
		sampleData.Add(new Data() { Category = 8, Value = 3 });
		sampleData.Add(new Data() { Category = 9, Value = 4 });
		sampleData.Add(new Data() { Category = 10, Value = 5 });
		sampleData.Add(new Data() { Category = 11, Value = 4 });
		sampleData.Add(new Data() { Category = 12, Value = 3 });
		sampleData.Add(new Data() { Category = 13, Value = 2 });
		sampleData.Add(new Data() { Category = 14, Value = 1 });
		
		this.scatterSplineSeries.DataContext = sampleData;

1. Finally, create a chart using XAML.

		<telerikChart:RadCartesianChart x:Name="scatterSplineSeries">
		    <telerikChart:RadCartesianChart.VerticalAxis>
		        <telerikChart:LinearAxis/>
		    </telerikChart:RadCartesianChart.VerticalAxis>
		    <telerikChart:RadCartesianChart.HorizontalAxis>
		        <telerikChart:LinearAxis/>
		    </telerikChart:RadCartesianChart.HorizontalAxis>
		
		    <telerikChart:ScatterSplineSeries ItemsSource="{Binding}">
		        <telerikChart:ScatterSplineSeries.XValueBinding>
		            <telerikChart:PropertyNameDataPointBinding PropertyName="XValue"/>
		        </telerikChart:ScatterSplineSeries.XValueBinding>
		        <telerikChart:ScatterSplineSeries.YValueBinding>
		            <telerikChart:PropertyNameDataPointBinding PropertyName="YValue"/>
		        </telerikChart:ScatterSplineSeries.YValueBinding>
		    </telerikChart:ScatterSplineSeries>
		</telerikChart:RadCartesianChart>
