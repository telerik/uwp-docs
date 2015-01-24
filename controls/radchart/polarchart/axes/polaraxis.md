---
title: Polar Axis
page_title: Polar Axis
description: Polar Axis
slug: radchart-axes-polaraxis
tags: polar,axis
published: True
position: 0
---

# Polar Axis

Special axis that is a fixed line in a polar coordinate system from which the polar angle is measured counter-clockwise. This axis is scaled to measure the radius of the points.

## Properties

>**PolarAxis** class inherits from the **Axis** class -
[See the inherited properties]({%slug radchart-axes-axis%}).

* **MajorStep** (double): Gets or sets the major step between each axis tick. By default the axis will automatically calculate its major step, depending on the plotted data points.
* **Minimum** (double): Gets or sets the minimum value of the axis. By default the minimum is 0.
* **Maximum** (double): Gets or sets the maximum value of the axis. By default the axis will automatically calculate its maximum, depending on the maximum **Value** property of the plotted data points.
* **ActualRange** (double min, double max): Gets the actual range used by the axis to plot data points.
* **IsInverse** (bool): Gets or sets a value that specifies if the plot direction of the axis will be inverted.

## Example

Below is an example that demonstrates how to set some of the properties of a **PolarAxis** in **RadPolarChart**:

	<telerikChart:RadPolarChart>
		<telerikChart:RadPolarChart.PolarAxis>
			<telerikChart:PolarAxis LabelInterval="2" MajorStep="2" Maximum="10" />
		</telerikChart:RadPolarChart.PolarAxis>
		<!-- other chart setup goes here -->
	</telerikChart:RadPolarChart>
