---
title: ChartSeries Class
page_title: ChartSeries Class
description: ChartSeries Class
slug: radchart-series-chartseriesproperties
tags: chartseries,class
published: True
position: 1
---

# ChartSeries Class

The **ChartSeries** class is a base class for all types of series used in a **RadChart** control.

## Properties

Here are the properties declared by the base **ChartSeries** class:

* **DisplayName** (string): Gets or sets the human-readable name of the series.
* **ItemsSource** (IEnumerable): Defines the data set that will fill the **DataPoints** collection of the series.
It supports a large variety of different data sources as the property is of type **IEnumerable**.
* **ShowLabels** (bool): Defines whether the series will display labels for each **DataPoint** plotted.
* **PaletteIndex** (int): Gets or sets the preferred palette index for this series. By default the palette index is equal to the index of this series within the owning chart's Series collection. Set this value to -1 to reset it to its default value and have the CollectionIndex-based logic applied.
* **ClipToPlotArea** (bool): Defines whether the series visual representation will be clipped to the PlotArea
bounding rectangle.
* **IsSelectedBinding** (DataPointBinding): Exposes a mechanism that allows the **IsSelected** property
of the internally generated data points in data-bound mode to be explicitly set.

	>The property is of type **DataPointBinding** rather than the system **Binding**. This custom binding mechanism is implemented for performance reasons so that each **DataPoint** does not need to inherit **DependencyObject**. Additionally, for even better performance or context-sensitive binding, the **GenericDataPointBinding** class may be used. All different data-binding related properties across all series follow this pattern.


## Example

The following code demonstrates how to specify a valid **DataPointBinding** in a concrete instance that inherits the base **ChartSeries** class, e.g., **BarSeries** class:

		<telerikChart:BarSeries>
		    <telerikChart:BarSeries.IsSelectedBinding>
		        <telerikChart:PropertyNameDataPointBinding PropertyName="IsSelected"/>
		    </telerikChart:BarSeries.IsSelectedBinding>
		    <telerikChart:BarSeries.ValueBinding>
		        <telerikChart:PropertyNameDataPointBinding PropertyName="Value"/>
		    </telerikChart:BarSeries.ValueBinding>
		    <telerikChart:BarSeries.CategoryBinding>
		        <telerikChart:PropertyNameDataPointBinding PropertyName="Category"/>
		    </telerikChart:BarSeries.CategoryBinding>
		</telerikChart:BarSeries>

