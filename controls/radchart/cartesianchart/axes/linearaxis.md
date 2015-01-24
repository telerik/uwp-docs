---
title: Linear Axis
page_title: Linear Axis
description: Linear Axis
slug: radchart-axes-linearaxis
tags: linear,axis
published: True
position: 4
---

# Linear Axis

The **LinearAxis** axis extends the base **CartesianAxis** class and plots the associated data points using each point's actual value, provided for the axis. The axis may work with both categorical and scatter data and the value that is passed to the axis depends on the chart series type. For example, if the axis is used to plot categorical data then it will take the **Value** property of each **CategoricalDataPoint** instance plotted. It will build a numerical range (user-defined or automatically calculated) and will determine each data point X or Y coordinate (depending on whether the axis is specified as Horizontal or as Vertical).

## Properties

>**LinearAxis** class inherits from the **NumericalAxis** class -
[See the inherited properties]({%slug radchart-axes-numericalclass%}).

The following property is specific for the LinearAxis:

* **MajorStep** (double): Specifies the step at which the major ticks are positioned on the axis. If this property is set to 0, the axis automatically calculate the step so that the data will be visualized in the best possible way.

