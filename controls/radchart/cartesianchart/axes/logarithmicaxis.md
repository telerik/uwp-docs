---
title: Logarithmic Axis
page_title: Logarithmic Axis
description: Check our &quot;Logarithmic Axis&quot; documentation article for RadChart for UWP control.
slug: radchart-axes-logarithmicaxis
tags: logarithmic,axis
published: True
position: 5
---

# Logarithmic Axis

The logarithmic axis is used to display values that cover several orders of magnitude in a more manageable way. This is a special numerical axis that transforms the actual values of the data points using logarithm function with a specific base. For example if the base of the logarithm is 10, then the axis will be scaled to show equally spaced powers of 10. The Richter scale and the Decibel scale are examples of logarithmic scale.

## Properties

>**LogarithmicAxis** class inherits from the **NumericalAxis** class -
[See the inherited properties]({%slug radchart-axes-numericalclass%}).

* **LogarithmBase** (double): Gets or sets the base of the logarithm used for normalizing data points' values.
* **ExponentStep** (double): Gets or sets the exponent step between each axis tick. By default the axis itself will calculate the exponent step, depending on the plotted data points.

Below is a XAML snippet that demonstrates how to create a logarithmic axis.


	<telerik:RadCartesianChart>
		<telerik:RadCartesianChart.VerticalAxis>
			<telerik:LogarithmicAxis LogarithmBase="2"/>
		</telerik:RadCartesianChart.VerticalAxis>
		<!-- other chart setup goes here -->
	</telerik:RadCartesianChart>
	
