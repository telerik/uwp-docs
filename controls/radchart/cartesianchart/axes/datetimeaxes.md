---
title: DateTime Axis
page_title: DateTime Axis
description: DateTime Axis
slug: radchart-axes-datetimeaxes
tags: datetime,axis
published: True
position: 6
---

# DateTime Axis

There are two types of axes that are used to visualize data with property of type **DateTime**.

## DateTimeCategoricalAxis

**DateTimeCategoricalAxis** is a special axis that extends the **CategoricalAxis** class and adds notation for the **System.DateTime** structure. The axis works with the **[CategoricalSeries]({%slug radchart-series-cartesianchart-series-categorical-categoricalseriesclass%})** and expects each **CategoricalDataPoint** to provide a valid DateTime value as its **Category**. The **GroupBy**(*Category*) will use the part of the DateTime structure defined by the **DateTimeComponent** property. Once built, the groups are sorted in chronological order. 

>**DateTimeCategoricalAxis** class inherits from the **CategoricalAxis** class - [See the inherited properties]({%slug radchart-axes-categoricalaxis%}).

The following property is specific for the **DateTimeCategoricalAxis**:

* **DateTimeComponent**: Defines the component of each DateTime structure that participates in the grouping process. The default value is **Ticks** meaning that all cmponents are taken into consideration. Here are all possible values:  
Ticks, Year, Quarter, Month, Week, Hour, Minute, Second, Millisecond, Date, TimeOfDay, Day, DayOfWeek, DayOfYear.

## DateTimeContinuousAxis

**DateTimeContinuousAxis** is a special axis that extends the base **CartesianAxis** class and may be considered as a hybrid between a categorical and a numerical (linear) axis. DateTimeContinuousAxis works with categorical data but instead of categories, the axis builds time slots depending on its **Minimum**, **Maximum** and
**MajorStep** values.

DateTimeContinuousAxis also expects valid System.DateTime values so that the data could be plotted correctly. Think of DateTimeContinuousAxis as a timeline where each data point has a certain position, depending on its DateTime value. The timeline range propertyes' values are automatically calculated if not set explicitly by the user: the default value of the major step is the smallest difference between any two DateTime values. Because this axis behaves like a numerical one, there might be empty time slots if no data falling into them is found.

>**DateTimeContinuousAxis** class inherits from the **CartesianAxis** class - [See the inherited properties]({%slug radchart-axes-categoricalaxis%}).

The following properties are specific for the **DateTimeContinuousAxis**:

* **Minimum** (DateTime): The *Minimum* property defines the start value of the timeline. Specify DateTime.Minimum to clear the value and force the axis to determine it automatically, depending on the smallest DateTime value present.
* **Maximum** (DateTime): The *Maximum* property defines the end value of the timeline. Specify DateTime.Maximum to
clear the value and force the axis to determine it automatically, depending on the biggest DateTime value present.
* **MajorStep** (double): The *MajorStep* property defines the user-defined step between two adjacent time slots.
Specify double.PositiveInfinity to clear the value and make the axis calculate an automatic step, depending on the smallest difference between any two dates.
* **MajorStepUnit**: The *MajorStepUnit* property defines what DateTime component the **MajorStep** property
refers to.

	The following code specifies 10 as **MajorStep** and **TimeInterval.Month** as MajorStepUnit:

		<telerik:DateTimeContinuousAxis MajorStep="10" MajorStepUnit="Month"/>

* **MaximumTicks** (int): The *MaximumTicks* property defines the axis ticks limit. This prevents slow rendering time in some corner cases where the axis range is big while the major step is small and huge amount of ticks might get generated. The default value is 31.
* **GapLength** (double): The *GapLength* property defines the distance (in logical units) between two adjacent time slots. The default value is 0.3.
As an example, if you have two *BarSeries* combined in Cluster mode, you can remove the space between the bars by
setting the *GapLength* property to 0.
* **PlotMode**: The *PlotMode* property defines the strategy used to position data points along the axis time slots. Three
different options are available:
	* **BetweenTicks**: Data points are positioned in the middle of the range defined between two adjacent ticks.
	* **OnTicks**: Data points are positioned over each tick.
	* **OnTicksPadded**: Data points are positioned over each tick with half step padding applied on both ends of the axis.

