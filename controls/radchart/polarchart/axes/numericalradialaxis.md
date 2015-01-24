---
title: NumericalRadial Axis
page_title: NumericalRadial Axis
description: NumericalRadial Axis
slug: radchart-axes-numericalradialaxis
tags: numericalradial,axis
published: True
position: 2
---

# NumericalRadial Axis



## Properties

>TheNumericalRadialAxis class inherits from the Axis class -
[See the inherited properties]({%slug radchart-axes-axis%}).

* **MajorStep** (double): Gets or sets the step of the ticks on the axis ellipse.
* **SweepDirection** (SweepDirection): Gets or sets the plot direction of the radial axis.

## Example

Below is an example that demonstrates how to set some of the properties of a **NumericalRadialAxis** in **RadPolarChart**:

	<telerikChart:RadPolarChart>
		<telerikChart:RadPolarChart.RadialAxis>
			<telerikChart:NumericalRadialAxis MajorStep="10"/>
		</telerikChart:RadPolarChart.RadialAxis>
		<!-- other chart setup goes here -->
	</telerikChart:RadPolarChart>
