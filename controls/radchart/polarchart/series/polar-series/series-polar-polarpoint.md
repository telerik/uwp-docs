---
title: Polar Point Series
page_title: Polar Point Series
description: Polar Point Series
slug: radchart-series-polarchart-series-polar-polarpoint
tags: polar,point,series
published: True
position: 0
---

# Polar Point Series



## Overview

The **PolarPointSeries** are represented on the chart as not connected data points presented by an arbitrary Template, as shown on the image below:

![Polar Point Series](images/PolarPointSeries.png)

## Properties

>The **PolarPointSeries** class inherits from the **PolarSeries** class -
[See the inherited properties]({%slug radchart-series-polarchart-series-polarseriesclass%}).

* **DataPoints**: Gets the collection of data points associated with the series.
* **AngleBinding**: Gets or sets the binding that will be used by the **Angle** property of the contained **PolarDataPoint** instances in the **DataPoints** collection.

## Example

Here's an example of how to create a **RadCartesianChart** with **PolarPointSeries**:

1. First, create a class for the sample data:

	public class Data
	{
		public double Value { get; set; }
	
		public double Angle { get; set; }
	}

1. Then create the sample data:

		double a = 0.5;
		var b = (Math.PI / 180);
		List<Data> data = new List<Data>();
		for (int i = 1; i < 5 * 360; i += 10)
		{
			data.Add(new Data() { Angle = i, Value = (a * Math.Cos(20 * i * b)) });
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
		
		    <telerikChart:PolarPointSeries ItemsSource="{Binding}">
		        <telerikChart:PolarPointSeries.ValueBinding>
		            <telerikChart:PropertyNameDataPointBinding PropertyName="Value"/>
		        </telerikChart:PolarPointSeries.ValueBinding>
		        <telerikChart:PolarPointSeries.AngleBinding>
		            <telerikChart:PropertyNameDataPointBinding PropertyName="Angle"/>
		        </telerikChart:PolarPointSeries.AngleBinding>
		    </telerikChart:PolarPointSeries>
		</telerikChart:RadPolarChart>
