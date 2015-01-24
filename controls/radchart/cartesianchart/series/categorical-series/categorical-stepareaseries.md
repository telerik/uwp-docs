---
title: Step Area Series
page_title: Step Area Series
description: Step Area Series
slug: radchart-cartesianchart-series-categoricalseries-stepareaseries
tags: step,area,series
published: True
position: 9
---

# Step Area Series

## Overview

StepArea Series is similar to the [StepLine Series]({%slug radchart-cartesianchart-series-categoricalseries-steplineseries%}). The difference is that the StepArea Series fills the area between the line segments and the categorical axis.

![Step Area Series-Overview](images/StepAreaSeries-Overview.png)

## Properties

>**StepAreaSeries** class inherits from the **AreaSeries** class -
[See the inherited properties]({%slug radchart-cartesianchart-series-categorical-areaseries%}).

* **RisersPosition**: Gets or sets the RisersPosition that will be used to draw the series.
	* **Default**: Risers' position depends on the axis' plot mode.
	* **OnTicks**: Risers will be positioned where the axis' ticks are positioned.
	* **BetweenTicks**: Risers will be positioned between the axis' ticks.

## Example

Here's an example of how to create a **RadCartesianChart** with **StepAreaSeries**.

	<telerikChart:RadCartesianChart>
	    <telerikChart:RadCartesianChart.HorizontalAxis>
	        <telerikChart:CategoricalAxis/>
	    </telerikChart:RadCartesianChart.HorizontalAxis>
	    <telerikChart:RadCartesianChart.VerticalAxis>
	        <telerikChart:LinearAxis/>
	    </telerikChart:RadCartesianChart.VerticalAxis>
	
	    <telerikChart:StepAreaSeries>
	        <telerikCharting:CategoricalDataPoint Category="first" Value="10"/>
	        <telerikCharting:CategoricalDataPoint Category="second" Value="20"/>
	        <telerikCharting:CategoricalDataPoint Category="third" Value="30"/>
	        <telerikCharting:CategoricalDataPoint Category="fourth" Value="15"/>
	    </telerikChart:StepAreaSeries>
	</telerikChart:RadCartesianChart>

Where:

	xmlns:telerikChart="using:Telerik.UI.Xaml.Controls.Chart" and
	xmlns:telerikCharting="using:Telerik.Charting"