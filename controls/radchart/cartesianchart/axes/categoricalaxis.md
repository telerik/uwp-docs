---
title: Categorical Axis
page_title: Categorical Axis
description: Check our &quot;Categorical Axis&quot; documentation article for RadChart for UWP control.
slug: radchart-axes-categoricalaxis
tags: categorical,axis
published: True
position: 3
---

# Categorical Axis

The **CategoricalAxis** extends the base **CartesianAxis** class and is used to displays a range of categories. Categories are built depending on the **Category** value of each **CategoricalDataPoint** present in the owning **CategoricalSeries** chart series. The axis is divided into discrete slots and each data point is visualized in the slot corresponding to its categorical value.

## Properties

>**CategoricalAxis** class inherits from the CartesianAxis class - [See the inherited properties]({%slug radchart-axes-cartesianaxis%}).

The following properties are specific for the CategoricalAxis:

* **AutoGroup** (bool): Determines whether the axis will perform its own grouping logic (*true*), or it will consider each data point as a new group (*false*).
* **GapLength** (double): Defines the distance (in logical units) between two adjacent categories. Default is 0.3.
For example if you have two **BarSeries** combined in Cluster mode, you can remove the space between the bars by
setting the **GapLength** property to 0.
* **MajorTickInterval** (int): Defines the step at which major ticks are generated. The default value is 1. This property
will also affect axis labels as they are generated on a per major tick basis.
* **PlotMode**: Defines the strategy used to position data points along the axis category slots. Three possible values are available:
	* **BetweenTicks**: Data points are positioned in the middle of the range defined between two adjacent ticks.
	* **OnTicks**: Data points are positioned over each tick.
	* **OnTicksPadded**: Data points are positioned over each tick with half a step padding applied on both ends of the axis.

