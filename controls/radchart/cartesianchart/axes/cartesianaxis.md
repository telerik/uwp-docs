---
title: CartesianAxis Class
page_title: CartesianAxis Class
description: CartesianAxis Class
slug: radchart-axes-cartesianaxis
tags: cartesianaxis,class
published: True
position: 1
---

# CartesianAxis Class

The **CartesianAxis** class extends the base **Axis** class and adds notation for axes that are used by a Cartesian Chart, which is a chart that uses the Cartesian coordinate system to plot its data points.

## Properties

>**CartesianAxis** class inherits from the **Axis** class - [See the inherited properties]({%slug radchart-axes-axis%}).

The following properties are specific for the CartesianAxis:

* **HorizontalLocation**: Defines the horizontal position of the axis related to the plot area. You can pass **Left** or **Right** value.

	>This property effects vertical axes.

* **VerticalLocation**: Defines the vertical position of the axis related to the plot area. You can pass **Top** or **Bottom** value.

	>This property effects horizontal axes.

* **IsInverse** (bool): Gets or sets a value that specifies if the plot direction of the axis will be inverted.