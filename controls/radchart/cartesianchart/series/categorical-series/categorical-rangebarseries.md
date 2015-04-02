---
title: RangeBar Series
page_title: RangeBar Series
description: RangeBar Series
slug: radchart-cartesianchart-series-categorical-rangebarseries
tags: rangebar,series
published: True
position: 2
---

# RangeBar Series

## Overview

Data points are represented by a box where the height (width) of the box is the distance between the point’s high value and the point's low value. Bars may be either horizontal or vertical depending on whether the categorical axis is specified as an X-axis or as an Y-axis.

![Range Bar Series](images/RangeBarSeries.png)

## Properties

>**RangeBarSeries** class inherits from the **RangeSeriesBase** class - [See the inherited properties]({%slug radchart-cartesianchart-series-categorical-rangeseriesbase%}).

* **CombineMode**: Gets or sets the combination mode to be used when data points are plotted. The RangeBarSeries supports only a **Cluster** CombineMode.
* **PaletteMode**: Gets or sets the target type of the chart palette, specified to the owning Chart instance. Defaults to PaletteTargetType.Series.
	* **Series**: Applies the palette per series.
	* **DataPoint**: Applies the palette per points.
* **LegendTitleBinding**: Gets or sets the binding that will be used by any attached legend to display legend item title.

## Example

Here's an example of how to create a **RadCartesianChart** with**RangeBar Series**.

	<telerikChart:RadCartesianChart>
	    <telerikChart:RadCartesianChart.HorizontalAxis>
	        <telerikChart:CategoricalAxis/>
	    </telerikChart:RadCartesianChart.HorizontalAxis>
	    <telerikChart:RadCartesianChart.VerticalAxis>
	        <telerikChart:LinearAxis/>
	    </telerikChart:RadCartesianChart.VerticalAxis>
	
	    <telerikChart:RangeBarSeries>
	        <telerikCharting:RangeDataPoint Category="1" High="20" Low="17" />
	        <telerikCharting:RangeDataPoint Category="2" High="13" Low="5" />
	        <telerikCharting:RangeDataPoint Category="3" High="17" Low="11" />
	        <telerikCharting:RangeDataPoint Category="4" High="4" Low="1" />
	    </telerikChart:RangeBarSeries>
	</telerikChart:RadCartesianChart>

Where:

	xmlns:telerikChart="using:Telerik.UI.Xaml.Controls.Chart" and 
	xmlns:telerikCharting="using:Telerik.Charting"