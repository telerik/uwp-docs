---
title: CategoricalRadial Axis
page_title: CategoricalRadial Axis
description: Check our &quot;CategoricalRadial Axis&quot; documentation article for RadChart for UWP control.
slug: radchart-axes-categoricalradialaxis
tags: categoricalradial,axis
published: True
position: 1
---

# CategoricalRadial Axis



## Properties

>The CategoricalRadialAxis class inherits from the Axis class -
[See the inherited properties]({%slug radchart-axes-axis%}).

* **MajorTickInterval** (int): Gets or sets the step at which ticks are positioned.
* **SweepDirection** (SweepDirection): Gets or sets the plot direction of the radial axis.

## Example

Below is an example that demonstrates how to set some of the properties of a **CategoricalRadialAxis** in **RadPolarChart**:

	<telerikChart:RadPolarChart>
		<telerikChart:RadPolarChart.RadialAxis>
			<telerikChart:CategoricalRadialAxis MajorTickInterval="2"/>
		</telerikChart:RadPolarChart.RadialAxis>
		<!-- other chart setup goes here -->
	</telerikChart:RadPolarChart>