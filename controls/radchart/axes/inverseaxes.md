---
title: Inverse Axes
page_title: Inverse Axes
description: Check our &quot;Inverse Axes&quot; documentation article for RadChart for UWP control.
slug: radchart-axes-inverseaxes
tags: inverse,axes
published: True
position: 2
---

# Inverse Axes

The **RadChart** control supports inverse axes. Depending on the axis type there are different properties that specify whether the axis will be inverse or not.

* **IsInverse** (bool):  
Defines the plot direction of all axes that inherit from the **[LineAxis]({%slug radchart-axes-axis%})** abstract class:
	* [CategoricalAxis]({%slug radchart-axes-categoricalaxis%})
	* [LinearAxis]({%slug radchart-axes-linearaxis%})
	* [LogarithmicAxis]({%slug radchart-axes-logarithmicaxis%})
	* [DateTimeCategoricalAxis]({%slug radchart-axes-datetimeaxes%})
	* [DateTimeContinuousAxis]({%slug radchart-axes-datetimeaxes%})
	* [PolarAxis]({%slug radchart-axes-polaraxis%})
* **SweepDirection**: Clockwise/CounterClockwise  
Defines the plot direction of all axes that inherit from the **[RadialAxis]({%slug radchart-axes-axis%})** abstract class:
	* [NumericalRadialAxis]({%slug radchart-axes-numericalradialaxis%})
	* [CategoricalRadialAxis]({%slug radchart-axes-categoricalradialaxis%})

>The alternative for inverse axes for **RadPieChart** is represented by the **AngeRange** property.


## Example for Cartesian chart

![Categorical Inverse Axes](images/CategoricalInverseAxes.png)

Here is an example of how to invert both axes in a **RadCartesianChart**.

	<telerikChart:RadCartesianChart>
	    <telerikChart:RadCartesianChart.VerticalAxis>
	        <telerikChart:LinearAxis IsInverse="True"/>
	    </telerikChart:RadCartesianChart.VerticalAxis>
	    <telerikChart:RadCartesianChart.HorizontalAxis>
	        <telerikChart:CategoricalAxis IsInverse="True"/>
	    </telerikChart:RadCartesianChart.HorizontalAxis>
	
	    <telerikChart:BarSeries>
	        <telerikChart:BarSeries.DataPoints>
	            <telerikCharting:CategoricalDataPoint Category="A" Value="0.8"/>
	            <telerikCharting:CategoricalDataPoint Category="B" Value="0.85"/>
	            <telerikCharting:CategoricalDataPoint Category="C" Value="0.7"/>
	            <telerikCharting:CategoricalDataPoint Category="D" Value="0.9"/>
	            <telerikCharting:CategoricalDataPoint Category="E" Value="1.3"/>
	        </telerikChart:BarSeries.DataPoints>
	    </telerikChart:BarSeries>
	</telerikChart:RadCartesianChart>

## Example for polar chart

![Polar Inverse Axes](images/PolarInverseAxes.png)

Here is an example of how to invert both axes in a **RadPolarChart**.

	<telerikChart:RadPolarChart StartAngle="30">
	    <telerikChart:RadPolarChart.PolarAxis>
	        <telerikChart:PolarAxis IsInverse="True"/>
	    </telerikChart:RadPolarChart.PolarAxis>
	    <telerikChart:RadPolarChart.RadialAxis>
	        <telerikChart:NumericalRadialAxis SweepDirection="Clockwise"/>
	    </telerikChart:RadPolarChart.RadialAxis>
	
	    <telerikChart:PolarPointSeries>
	        <telerikChart:PolarPointSeries.DataPoints>
	            <telerikCharting:PolarDataPoint Angle="40" Value="10"/>
	            <telerikCharting:PolarDataPoint Angle="80" Value="20"/>
	            <telerikCharting:PolarDataPoint Angle="120" Value="30"/>
	            <telerikCharting:PolarDataPoint Angle="160" Value="40"/>
	            <telerikCharting:PolarDataPoint Angle="200" Value="50"/>
	        </telerikChart:PolarPointSeries.DataPoints>
	    </telerikChart:PolarPointSeries>
	</telerikChart:RadPolarChart>
