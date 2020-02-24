---
title: Range Series
page_title: Range Series
description: Check our &quot;Range Series&quot; documentation article for RadChart for UWP control.
slug: radchart-cartesianchart-series-categorical-rangeseries
tags: range,series
published: True
position: 2
---

# Range Series

## Overview

When using RangeSeries the high data points as well as the low data points are connected with straight line segments and the area enclosed by the two lines may be optionally stroked and/or filled as shown on the image below.

![Range Series](images/RangeSeries.png)

## Properties

>**RangeSeries** class inherits from the **RangeSeriesBase** class -
[See the inherited properties]({%slug radchart-cartesianchart-series-categorical-rangeseriesbase%}).

* **Fill**: Gets or sets the Brush instance that defines the fill of series.
* **Stroke**: Gets or sets the Brush instance that defines the stroke of the series.
* **StrokeThickness**: Gets or sets the thickness of the line used to present the series.
* **StrokeMode**: Gets or sets the mode that defines how the area is stroked.
* **StrokeLineJoin**: Gets or sets a PenLineJoin enumeration value that specifies the type of join that is used at the vertices of a stroked series.

## Example

Here's an example of how to create a **RadCartesianChart** with**Range Series**.

	<telerikChart:RadCartesianChart>
	    <telerikChart:RadCartesianChart.HorizontalAxis>
	        <telerikChart:CategoricalAxis/>
	    </telerikChart:RadCartesianChart.HorizontalAxis>
	    <telerikChart:RadCartesianChart.VerticalAxis>
	        <telerikChart:LinearAxis/>
	    </telerikChart:RadCartesianChart.VerticalAxis>
	
	    <telerikChart:RangeSeries>
	        <telerikCharting:RangeDataPoint Category="1" High="20" Low="17" />
	        <telerikCharting:RangeDataPoint Category="2" High="13" Low="5" />
	        <telerikCharting:RangeDataPoint Category="3" High="17" Low="11" />
	        <telerikCharting:RangeDataPoint Category="4" High="4" Low="1" />
	    </telerikChart:RangeSeries>
	</telerikChart:RadCartesianChart>

Where:

	xmlns:telerikChart="using:Telerik.UI.Xaml.Controls.Chart" and
	xmlns:telerikCharting="using:Telerik.Charting"