---
title: Categorical Series Class
page_title: Categorical Series Class
description: Categorical Series Class
slug: radchart-series-cartesianchart-series-categorical-categoricalseriesclass
tags: categorical,series,class
published: True
position: 0
---

# Categorical Series Class

The **CategoricalSeries** abstract class inherits from the base **CartesianSeries** class and defines properties for chart series that can visualize categorical data that have category and value properties. The chart view model for such data is the **CategoricalDataPoint** class. A **CategoricalSeries** instance will require a **CategoricalAxis** and a **LinearAxis** axes applied either to the owning **RadCartesianChar** instance or locally to the series itself, using its **HorizontalAxis** and **VerticalAxis** properties.

## Properties

>**CategoricalSeries** class inherits from the **CartesianSeries** class - [See the inherited properties]({%slug radchart-series-cartesianbase%}).

* **CombineMode**: Gets or sets the combination mode to be used when data points are plotted. The available modes are:
* **None**: The series are not combined - each series is plotted independently.
	* **Cluster**: Series are combined next to each other (applicable for **BarSeries**).
	* **Stack**: Series form stacks.
	* **Stack100**: Series for stacks that occupy 100% of the plot area and the characterictic size of each series is proportional to its relative value.
* **StackGroupKey**: Gets or sets the key that defines in which stack group this series will be included, if its **CombineMode** equals **Stack** or **Stack100**.
* **DataPoints**: Gets the collection of data points associated with the series.
* **ValueBinding**: Defines a **DataPointBinding** instance that describes how the **Value** property will be retrieved from the underlying business object. This is used in data-bound scenarios.
* **CategoryBinding**: Defines a **DataPointBinding** instance that describes how the **Category** property will be retrieved from the underlying business object. This in data-bound scenarios.

The following code demonstrates how to set a **PropertyNameDataPointBinding** instance to the **CategoryBinding** and **ValueBinding** properties. 

	<telerikChart:BarSeries>
	    <telerikChart:BarSeries.ValueBinding>
	        <telerikChart:PropertyNameDataPointBinding PropertyName="Value"/>
	    </telerikChart:BarSeries.ValueBinding>
	    <telerikChart:BarSeries.CategoryBinding>
	        <telerikChart:PropertyNameDataPointBinding PropertyName="Category"/>
	    </telerikChart:BarSeries.CategoryBinding>
	</telerikChart:BarSeries>

>All binding-suffixed properties used in **RadChart** are of type **DataPointBinding**, rather than the system **Binding** type. This custom binding mechanism is implemented for performance reasons so that each **DataPoint** does not need to inherit from **DependencyObject**. Additionally, for even better performance or context-sensitive binding, the **GenericDataPointBinding** class may be used. All different data-binding related properties across all series follow this pattern.

