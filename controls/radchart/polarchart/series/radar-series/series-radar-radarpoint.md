---
title: Radar Point Series
page_title: Radar Point Series
description: Check our &quot;Radar Point Series&quot; documentation article for RadChart for UWP control.
slug: radchart-series-polarchart-series-radar-radarpoint
tags: radar,point,series
published: True
position: 0
---

# Radar Point Series

## Overview

The **RadarPointSeries** are represented on the chart as not connected data points presented by an arbitrary Template, as shown on the image below:

![Radar Point Series](images/RadarPointSeries.png)

## Properties

>**RadarPointSeries** class inherits from the **PolarSeries** class -
[See the inherited properties]({%slug radchart-series-polarchart-series-polarseriesclass%}).

* **DataPoints**: Gets the collection of data points associated with the series.
* **CategoryBinding**: Gets or sets the binding that will be used by the **Category** property of the contained **CategoricalDataPointBase** in the **DataPoints** collection.
* **CombineMode**: Gets or sets the combination mode to be used when data points are plotted.
* **StackGroupKey**: Gets or sets the key that defines in which stack group this series will be included if its **CombineMode** property is set to **Stack** or **Stack100**.

## Example

Here's an example of how to create a **RadCartesianChart** with **RadarPointSeries**:

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
		
		    <telerikChart:RadarPointSeries ItemsSource="{Binding}">
		        <telerikChart:RadarPointSeries.ValueBinding>
		            <telerikChart:PropertyNameDataPointBinding PropertyName="Value"/>
		        </telerikChart:RadarPointSeries.ValueBinding>
		        <telerikChart:RadarPointSeries.CategoryBinding>
		            <telerikChart:PropertyNameDataPointBinding PropertyName="Category"/>
		        </telerikChart:RadarPointSeries.CategoryBinding>
		    </telerikChart:RadarPointSeries>
		</telerikChart:RadPolarChart>