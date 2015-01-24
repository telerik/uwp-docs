---
title: Radar Line Series
page_title: Radar Line Series
description: Radar Line Series
slug: radchart-series-polarchart-series-radar-radarline
tags: radar,line,series
published: True
position: 1
---

# Radar Line Series

## Overview

The **RadarLineSeries** are represented on the chart as data points connected with straight line segments as shown on the image below:

![Radar Line Series](images/RadarLineSeries.png)

## Properties

>**RadarLineSeries** class inherits from the **RadarPointSeries** class -
[See the inherited properties]({%slug radchart-series-polarchart-series-radar-radarpoint%}).

* **Stroke** (Brush): Gets or sets the **Brush** instance that defines the stroke of the **Line** shape that presents the series.
* **StrokeThickness** (double): ets or sets the thickness of the line used to present the series.
* **IsClosed** (bool): Gets or sets a value indicating whether the Line shape will be closed (the last point to be connected to the first one). The default value is true.
* **AutoSortPoints** (bool): Gets or sets a value indicating whether the data points associated with the series will be automatically sorted by their **Category** property in ascending order. The default value is *true*.

## Example

Here's an example of how to create **RadCartesianChart** with **RadarLineSeries**:

1. First, create a class for the sample data:

		public class Data
		{
		    public double Value { get; set; }
		
		    public double Category { get; set; }
		}

1. Then create the sample data:

		List<Data> data = new List<Data>();
		for (double i = 1; i < 30; i += 1)
		{
		    data.Add(new Data() { Category = i, Value = ((0.7) * Math.Cos(20 * i)) });
		}
		
		this.polarChart.DataContext = data;

1. Finally, create the chart in XAML.

		<telerikChart:RadPolarChart x:Name="polarChart">
		    <telerikChart:RadPolarChart.PolarAxis>
		        <telerikChart:PolarAxis/>
		    </telerikChart:RadPolarChart.PolarAxis>
		    <telerikChart:RadPolarChart.RadialAxis>
		        <telerikChart:NumericalRadialAxis/>
		    </telerikChart:RadPolarChart.RadialAxis>
		
		    <telerikChart:RadarLineSeries ItemsSource="{Binding}">
		        <telerikChart:RadarLineSeries.ValueBinding>
		            <telerikChart:PropertyNameDataPointBinding PropertyName="Value"/>
		        </telerikChart:RadarLineSeries.ValueBinding>
		        <telerikChart:RadarLineSeries.CategoryBinding>
		            <telerikChart:PropertyNameDataPointBinding PropertyName="Category"/>
		        </telerikChart:RadarLineSeries.CategoryBinding>
		    </telerikChart:RadarLineSeries>
		</telerikChart:RadPolarChart>
