---
title: Step Line Series
page_title: Step Line Series
description: Check our &quot;Step Line Series&quot; documentation article for RadChart for UWP control.
slug: radchart-cartesianchart-series-categoricalseries-steplineseries
tags: step,line,series
published: True
position: 2
---

# Step Line Series

## Overview

StepLine Series is similar to the [Line Series]({%slug radchart-cartesianchart-series-categorical-lineseries%}). The difference is that the StepLine Series connects its points through horizontal and vertical line instead of a straight line. The **RisersPosition** property defines the end of the first and the begining of the second line.

![Step Line Series-Overview](images/StepLineSeries-Overview.png)

## Properties

>**StepLineSeries** class inherits from the **LineSeries** class -
[See the inherited properties]({%slug radchart-cartesianchart-series-categorical-lineseries%}).

* **RisersPosition**: Gets or sets the RisersPosition that will be used to draw the series.
	* **Default**: Risers' position depends on the axis' plot mode.
	* **OnTicks**: Risers will be positioned where the axis' ticks are positioned.
	* **BetweenTicks**: Risers will be positioned between the axis' ticks.

## Example

Here's an example of how to create a **RadCartesianChart** with **StepLineSeries**.

	<telerikChart:RadCartesianChart>
	    <telerikChart:RadCartesianChart.HorizontalAxis>
	        <telerikChart:CategoricalAxis/>
	    </telerikChart:RadCartesianChart.HorizontalAxis>
	    <telerikChart:RadCartesianChart.VerticalAxis>
	        <telerikChart:LinearAxis/>
	    </telerikChart:RadCartesianChart.VerticalAxis>
	
	    <telerikChart:StepLineSeries>
	        <telerikCharting:CategoricalDataPoint Category="first" Value="10"/>
	        <telerikCharting:CategoricalDataPoint Category="second" Value="20"/>
	        <telerikCharting:CategoricalDataPoint Category="third" Value="30"/>
	        <telerikCharting:CategoricalDataPoint Category="fourth" Value="15"/>
	    </telerikChart:StepLineSeries>
	</telerikChart:RadCartesianChart>

Where:

	xmlns:telerikChart="using:Telerik.UI.Xaml.Controls.Chart" and
	xmlns:telerikCharting="using:Telerik.Charting"