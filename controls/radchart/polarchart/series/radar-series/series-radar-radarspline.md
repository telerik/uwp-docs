---
title: Radar Spline Series
page_title: Radar Spline Series
description: Radar Spline Series
slug: radchart-series-polarchart-series-radar-radarspline
tags: radar,spline,series
published: True
position: 2
---

# Radar Spline Series

## Overview

The **RadarSplineSeries** are represented on the chart as data points connected with smooth line segments as shown on the image below:

![Radar Spline Series](images/RadarSplineSeries.png)

## Properties

>**RadarSplineSeries** class inherits from the **RadarLineSeries** class -
[See the inherited properties]({%slug %radchart-series-polarchart-series-radar-radarline}).

## Example

Here's an example of how to create a **RadCartesianChart** with **RadarSplineSeries**:

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
		
		    <telerikChart:RadarSplineSeries ItemsSource="{Binding}">
		        <telerikChart:RadarSplineSeries.ValueBinding>
		            <telerikChart:PropertyNameDataPointBinding PropertyName="Value"/>
		        </telerikChart:RadarSplineSeries.ValueBinding>
		        <telerikChart:RadarSplineSeries.CategoryBinding>
		            <telerikChart:PropertyNameDataPointBinding PropertyName="Category"/>
		        </telerikChart:RadarSplineSeries.CategoryBinding>
		    </telerikChart:RadarSplineSeries>
		</telerikChart:RadPolarChart>
